#include QMK_KEYBOARD_H
#define _ZERO 0
#define _ONE 1
enum my_keycodes {
  INVSOL = SAFE_RANGE
};

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {

	[ZERO] =LAYOUT(
		KC_ESC,           KC_F1,   KC_F2,   KC_F3,   KC_F4,            KC_F5,   KC_F6,   KC_F7,   KC_F8,   KC_F9,   KC_F10,  KC_F11,  KC_F12,  KC_PSCR, KC_SLCK, KC_PAUS, 
		KC_GRV,  KC_1,    KC_2,    KC_3,    KC_4,    KC_5,    KC_6,    KC_7,    KC_8,    KC_9,    KC_0,    KC_MINS, KC_EQL,           KC_BSPC, KC_INS,  KC_HOME, KC_PGUP,  KC_NLCK, KC_PSLS, KC_PAST, KC_PMNS, 
		KC_TAB,           KC_Q,    KC_W,    KC_E,    KC_R,    KC_T,    KC_Y,    KC_U,    KC_I,    KC_O,    KC_P,    KC_LBRC, KC_RBRC, KC_BSLS, KC_DEL,  KC_END,  KC_PGDN,  KC_P7,   KC_P8,   KC_P9,   KC_PPLS, 
		KC_CAPS,          KC_A,    KC_S,    KC_D,    KC_F,    KC_G,    KC_H,    KC_J,    KC_K,    KC_L,    KC_SCLN, KC_QUOT, KC_ENT,                                       KC_P4,   KC_P5,   KC_P6,       
		         KC_LSFT, KC_Z,    KC_X,    KC_C,    KC_V,    KC_B,    KC_N,    KC_M,    KC_COMM, KC_DOT,  KC_SLSH,          KC_LSFT,                   KC_UP,             KC_P1,   KC_P2,   KC_P3,   KC_PENT, 
		KC_LCTL, KC_LGUI,          KC_LALT,                   KC_SPC,                             KC_RALT, MO(1),            KC_MENU, KC_RCTL, KC_LEFT, KC_DOWN, KC_RGHT,  KC_P0,            KC_PDOT),

    [ONE] =LAYOUT(
		KC_TRNS,          KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,          KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, CG_NORM, INVSOL, EEP_RST, 
		KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,          KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,  KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, 
		KC_TRNS,          KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,  KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, 
		KC_TRNS,          KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,                                      KC_TRNS, KC_TRNS, KC_TRNS, 
		         KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,          KC_TRNS,                   KC_TRNS,           KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, 
		KC_TRNS, KC_TRNS,          KC_TRNS,                   KC_TRNS,                            KC_TRNS, KC_TRNS,          KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,  KC_TRNS,          KC_TRNS)
	
};
void matrix_init_user(void) {
  // set NumLock LED to output and low
  DDRC |= (1 << 5);
  PORTC &= ~(1 << 5);
  // set CapsLock LED to output and low
  DDRC |= (1 << 6);
  PORTC &= ~(1 << 6);
  // set ScrollLock LED to output and low
  DDRC |= (1 << 4);
  PORTC &= ~(1 << 4);
}

void matrix_scan_user(void) {
}

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case INVSOL:
        if (record->event.pressed) {
                HPT_OFF;
            } else {
                HPT_ON;
            }
    }
            return false;
  }
    return false;
}

void led_set_user(uint8_t usb_led) {

	if (usb_led & (1 << USB_LED_NUM_LOCK)) {
		PORTC |= (1 << 5);
	} else {
		PORTC &= ~(1 << 5);
	}

	if (usb_led & (1 << USB_LED_CAPS_LOCK)) {
		PORTC |= (1 << 6);
	} else {
		PORTC &= ~(1 << 6);
	}

	if (usb_led & (1 << USB_LED_SCROLL_LOCK)) {
		PORTC |= (1 << 4);
	} else {
		PORTC &= ~(1 << 4);
	}
}

/*
EEP_RST
CG_NORM
fixes an erratic keyboard
*/
