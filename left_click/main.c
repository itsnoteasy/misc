/* firmware for some 3360 mouse
 *
 * Copyright (c) 2016 qsxcv
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

// this code assumes
// left button		<-> D0

#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#include "usb_mouse.h"

#define delay_us(t) __builtin_avr_delay_cycles((t) * (F_CPU/1000000))
#define delay_ms(t) __builtin_avr_delay_cycles((t) * (F_CPU/1000))

#define DEBOUNCE_TIME 128 // debounce time in units of 125us. only affects release latency.

static void pins_init(void)
{
	// buttons
	PORTD |= 0b00000001; // L
	EICRA = 0b01010101; // generate interrupt request on any edge of D0/D1/D2/D3
	EIMSK = 0; // but don't enable any actual interrupts
	EIFR = 0b00001111; // clear EIFR
}

int main(void)
{
	// set clock prescaler for 16MHz
	CLKPR = 0x80;
	CLKPR = 0x00;
	pins_init();
	// previous state to compare against for debouncing
	uint8_t btn_prev = (~PIND) & 0b00000001; // read L, R, M, FSB, RSB, DPI
	// time (in 125us) button has been unpressed.
	// consider button to be released if this time exceeds DEBOUNCE_TIME.
	uint8_t btn_time = 0;
	// binary OR of all button states since previous usb transmission
	uint8_t btn_usb = 0x00;
	// previously transmitted button state
	uint8_t btn_usb_prev = 0x00;
	
	// if dpi button is pressed when plugging in, jump to bootloader
	// see https://www.pjrc.com/teensy/jump_to_bootloader.html
	delay_ms(50);
	if (!(PIND & (1<<0)))
		__asm__ volatile ("jmp 0x7e00");
	
	usb_init();
	while (!usb_configured());
	delay_ms(456); // arbitrary

	// set up timer0 to set OCF0A in TIFR0 every 125us
	TCCR0A = 0x02; // CTC
	TCCR0B = 0x02; // prescaler 1/8 = 1us period
	OCR0A = 249; // = 125 - 1

	cli();
	while (1) {
		for (uint8_t i = 0; i < 8; i++) {
		// synchronization to usb frames and 125us intervals
			// polling interrupt flags gives 5 clock cycles or so of
			// jitter. possible to eliminate by going into sleep
			// mode and waking up using interrupts, but whatever.
			if (i == 0) {
				// sync to usb frames (1ms)
				UDINT &= ~(1<<SOFI);
				while(!(UDINT & (1<<SOFI)));
				// reset prescaler phase, not really necessary
				GTCCR |= (1<<PSRSYNC);
				TCNT0 = 0;
			} else {
				// sync to 125us intervals using timer0
				while (!(TIFR0 & (1<<OCF0A)));
			}
			TIFR0 |= (1<<OCF0A); // 0CF0A is cleared by writing 1

		// button stuff
			//high = not pressed, low = pressed
			//PIND 0 EIFR 0: low, no edges -> is low
			//PIND 0 EIFR 1: low, edge -> is low
			//PIND 1 EIFR 0: high, no edges -> always high during last 125us
			//PIND 1 EIFR 1: high, edge -> low at some point in the last 125us
			const uint8_t btn_unpressed = PIND & (~(EIFR) | 0b00000001);
			EIFR = 0b00000111; // clear EIFR
			// manual loop debouncing for every button
			// button debouncing logic
			//          >input<           |        >output<
			//------------------------------------------------------
			// previous    | current      | unclicked  | current
			// dbncd state | actual state | time       | dbncd state
			//-------------+--------------+------------+------------
			//    btn_prev |   ~unpressed | btn_time   |   btn_dbncd
			//-------------+--------------+------------+------------
			//           0 |            0 |         =0 |          =0
			//           0 |            1 |         =0 |          =1
			//           1 |            0 |         ++ | (time < DEBOUNCE_TIME)
			//           1 |            1 |         =0 |          =1
			uint8_t btn_dbncd = 0x00;

			if ((btn_prev & (1<<0)) && (btn_unpressed & (1<<0))) {
				btn_time++;
				if (btn_time < DEBOUNCE_TIME)
					btn_dbncd |= (1<<0);
			} else {
				btn_time = 0;
				btn_dbncd |= (~btn_unpressed) & (1<<0);
			}

                // usb
				// first make sure it's configured
				sei();
				while (!usb_configured());
				cli();
				// this stuff is very intricate and confusing
				// i'm fairly certain all of it is correct.
				// mask dpi button state for usb
				const uint8_t btn_dbncd_mask = btn_dbncd & 0b00000001;

				// there's nothing to do if nothing's changed in this 125us cycle
				if (btn_dbncd_mask != (btn_prev & 0b00000001)) {
					UENUM = MOUSE_ENDPOINT;
					if (UESTA0X & (1<<NBUSYBK0)) { // untransmitted data still in bank
						UEINTX |= (1<<RXOUTI); // kill bank; RXOUTI == KILLBK
						while (UEINTX & (1<<RXOUTI));
					} else {
						// transmission's finished, or the data that should be in the
						// bank is exactly the same as what was previously transmitted
						// so that there was nothing worth transmitting before.
						btn_usb_prev = btn_usb;
						btn_usb = 0x00;
					}
					
					btn_usb |= btn_dbncd_mask & 0b00000001; // L
					// only load bank with data if there's something worth transmitting
					if (btn_usb != btn_usb_prev) {
						UEDATX = btn_usb;
						UEINTX = 0x3a;
					}
				}

			// update btn_prev
			btn_prev = btn_dbncd;
		}
	}
}
