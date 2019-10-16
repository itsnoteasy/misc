#include "kb.h"

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {

	KEYMAP(
		KC_SPC, KC_SPC, KC_SLCK, KC_ESC, KC_F2, KC_F4, KC_F6, KC_F8, KC_F10, KC_F12, KC_SPC, 
		KC_SPC, KC_NLCK, KC_PSCR, KC_PAUS, KC_F1, KC_F3, KC_F5, KC_F7, KC_F9, KC_F11, KC_SPC, 
		KC_ASTR, KC_SLSH, KC_INS, KC_PGUP, KC_1, KC_3, KC_5, KC_7, KC_9, KC_MINS, KC_EQL, 
		KC_MINS, KC_8, KC_HOME, KC_GRV, KC_2, KC_4, KC_6, KC_8, KC_0, KC_LBRC, KC_BKSP, 
		KC_PLUS, KC_PGUP, KC_END, KC_TAB, KC_W, KC_R, KC_Y, KC_I, KC_P, KC_QUOT, KC_ENT, 
		KC_HOME, KC_6, KC_DEL, KC_PGDN, KC_Q, KC_E, KC_T, KC_U, KC_O, KC_SCLN, KC_RBRC, 
		KC_4, KC_5, KC_UP, KC_CAPS, KC_A, KC_D, KC_F, KC_H, KC_K, KC_DOT, KC_HASH, 
		KC_END, KC_2, KC_LEFT, KC_LSFT, KC_S, KC_C, KC_G, KC_J, KC_L, KC_SLSH, KC_LSFT, 
		KC_ENT, KC_PGDN, KC_DOWN, KC_LCTL, KC_Z, KC_X, KC_V, KC_N, KC_COMM, KC_LGUI, KC_MENU, 
		KC_INS, KC_DEL, KC_RGHT, KC_LGUI, KC_BSLS, KC_LALT, KC_SPC, KC_B, KC_M, KC_RALT, KC_LCTL)

};

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt) {
	keyevent_t event = record->event;

	switch (id) {

	}
	return MACRO_NONE;
}

void matrix_init_user(void) {
}

void matrix_scan_user(void) {
}

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
	return true;
}

void led_set_user(uint8_t usb_led) {

	if (usb_led & (1 << USB_LED_NUM_LOCK)) {
		DDRC |= (1 << 6); PORTC &= ~(1 << 6);
	} else {
		DDRC &= ~(1 << 6); PORTC &= ~(1 << 6);
	}

	if (usb_led & (1 << USB_LED_CAPS_LOCK)) {
		DDRD |= (1 << 1); PORTD &= ~(1 << 1);
	} else {
		DDRD &= ~(1 << 1); PORTD &= ~(1 << 1);
	}

	if (usb_led & (1 << USB_LED_SCROLL_LOCK)) {
		DDRE |= (1 << 6); PORTE &= ~(1 << 6);
	} else {
		DDRE &= ~(1 << 6); PORTE &= ~(1 << 6);
	}

	if (usb_led & (1 << USB_LED_COMPOSE)) {
		
	} else {
		
	}

	if (usb_led & (1 << USB_LED_KANA)) {
		
	} else {
		
	}

}
