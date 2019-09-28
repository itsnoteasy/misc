#include "kb.h"
#include "keymap_uk.h"
#define _ZERO 0
#define _ONE 1
enum my_keycodes {
  INVSFT = SAFE_RANGE,
  RELOAD,
  LSFTAL,
  BEST,
  FOOT
};

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {

  [_ZERO] = KEYMAP(
		UK_ESC,  UK_F1,   UK_F2,   UK_F3,  UK_F4,   UK_F5,   UK_F6,   UK_F7,   UK_F8,   UK_F9,            UK_F10,  UK_F11,  UK_F12,  KC_PSCR, FOOT, KC_PAUS, KC_CALC, KC_VOLD, KC_VOLU, 
		UK_GRV,  UK_1,    UK_2,    UK_3,   UK_4,    UK_5,    UK_6,    UK_7,    UK_8,    UK_9,    UK_0,    UK_MINS, UK_EQL,  UK_BSPC, UK_INS,  UK_HOME, UK_PGUP, BEST, KC_SLSH, UK_ASTR, UK_MINS, 
		UK_TAB,  UK_Q,    UK_W,    UK_E,   UK_R,    UK_T,    UK_Y,    UK_U,    UK_I,    UK_O,    UK_P,    UK_LBRC, UK_RBRC, UK_ENT,  UK_DEL,  UK_END,  UK_PGDN, UK_7,    KC_8,    UK_9, 
		KC_CAPS, UK_A,    UK_S,    UK_D,   UK_F,    UK_G,    UK_H,    UK_J,    UK_K,    UK_L,    UK_SCLN, UK_QUOT, KC_NUHS,                                     UK_4,    UK_5,    UK_6,    KC_PLUS, 
		LSFTAL, KC_NUBS, UK_Z,    UK_X,   UK_C,    UK_V,    UK_B,    UK_N,    UK_M,    UK_COMM, UK_DOT,  UK_SLSH, KC_RSFT,                   UK_UP,            UK_1,    UK_2,    UK_3, 
		KC_LCTL, UK_LGUI, UK_LALT,                           UK_SPC,                             UK_RALT, INVSFT,  RELOAD,  UK_RCTL, UK_LEFT, UK_DOWN, UK_RGHT, UK_0,  UK_DOT,    UK_ENT),
  [_ONE] = KEYMAP(
		LSFT(UK_ESC),  UK_F13,   UK_F14,   UK_F15,  UK_F16,   UK_F17,   UK_F18,   UK_F19,   UK_F20,   UK_F21,            UK_F22,  UK_F23,  UK_F24,  KC_PSCR, KC_SLCK, KC_PAUS, KC_CALC, EEP_RST, CG_NORM, 
		LSFT(UK_GRV),  LSFT(UK_1),    LSFT(UK_2),    LSFT(UK_3),   LSFT(UK_4),    LSFT(UK_5),    LSFT(UK_6),    LSFT(UK_7),    LSFT(UK_8),    LSFT(UK_9),    LSFT(UK_0),    LSFT(UK_MINS), LSFT(UK_EQL),  UK_BSPC, LSFT(UK_INS),  LSFT(UK_HOME), LSFT(UK_PGUP), BEST, KC_SLSH, UK_ASTR, UK_MINS, 
		LSFT(UK_TAB),  LSFT(UK_Q),    LSFT(UK_W),    LSFT(UK_E),   LSFT(UK_R),    LSFT(UK_T),    LSFT(UK_Y),    LSFT(UK_U),    LSFT(UK_I),    LSFT(UK_O),    LSFT(UK_P),    LSFT(UK_LBRC), LSFT(UK_RBRC), LSFT(UK_ENT),  LSFT(UK_DEL),  LSFT(UK_END),  LSFT(UK_PGDN), UK_7,    KC_8,    UK_9, 
		KC_CAPS, LSFT(UK_A),    LSFT(UK_S),    LSFT(UK_D),   LSFT(UK_F),    LSFT(UK_G),    LSFT(UK_H),    LSFT(UK_J),    LSFT(UK_K),    LSFT(UK_L),    LSFT(UK_SCLN), LSFT(UK_QUOT), LSFT(KC_NUHS),                                     UK_4,    UK_5,    UK_6,    KC_PLUS, 
		KC_TRNS, LSFT(KC_NUBS), LSFT(UK_Z),    LSFT(UK_X),   LSFT(UK_C),    LSFT(UK_V),    LSFT(UK_B),    LSFT(UK_N),    LSFT(UK_M),    LSFT(UK_COMM), LSFT(UK_DOT),  LSFT(UK_SLSH), KC_RSFT,                   UK_UP,            UK_1,    UK_2,    UK_3, 
		KC_LCTL, UK_LGUI, UK_LALT,                           UK_SPC,                             UK_RALT, INVSFT,  RELOAD,  UK_RCTL, UK_LEFT, UK_DOWN, UK_RGHT, UK_0,  UK_DOT,    UK_ENT),
};
/*
bool function_tracker[12];
bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case KC_F1 ... KC_F12: {
            uint8_t index = keycode - KC_F1;
            uint8_t mod_mask = get_mods();
            if (mod_mask & MOD_MASK_SHIFT) {
                if (record->event.pressed) {
                   delete_mod(MOD_MASK_SHIFT);
                   register_code(KC_F13 + index);
                   function_tracker[index] = true;
                   return false;
               }
           } else {
               if (!record->event.pressed && function_tracker[index]) {
                   unregister_code(KC_F13 + index);
                   function_tracker[index] = false;
                   return false;
               }
           } 
        }
        break; // Skip all further processing of this key
    }
	return true;
}MO(_ONE)
*/

int8_t active = 0;
bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {

    case LSFTAL:
      if (record->event.pressed) {
            if (active == 0) {
              //register_code(KC_LSFT);
              layer_clear();
              layer_on(1);
            }
            if (active == 1) {
              //unregister_code(KC_LSFT);
              layer_clear();
              layer_on(0);
            }
      } else {
            if (active == 0) {
              //unregister_code(KC_LSFT);
              layer_clear();
              layer_on(0);
            }
            if (active == 1) {
              //register_code(KC_LSFT);
              layer_clear();
              layer_on(1);
            }
      }
            return false;// Skip all further processing of this key

    case INVSFT:
        if (record->event.pressed) {
            if (active == 0) {
                active = 1;
                //register_code(KC_LSFT);
              layer_clear();
              layer_on(1);
            } else {
                active = 0;
                //unregister_code(KC_LSFT);
              layer_clear();
              layer_on(0);
            }
    }
            return false;

    case RELOAD:
        if (record->event.pressed) {
            tap_code16(LALT(KC_D));
            wait_ms(10);
            tap_code16(LCTL(KC_C));
            wait_ms(10);
            tap_code16(LCTL(KC_V));
            wait_ms(10);
            tap_code(KC_ENT);
    }
            return false;

    case BEST:
        if (record->event.pressed) {
            tap_code16(LALT(KC_D));
            wait_ms(100);
            tap_code(KC_END);
            wait_ms(100);
            tap_code16(LSFT(KC_SLSH));
            wait_ms(100);
            tap_code(KC_S);
            wait_ms(10);
            tap_code(KC_O);
            wait_ms(10);
            tap_code(KC_R);
            wait_ms(10);
            tap_code(KC_T);
            wait_ms(10);
            tap_code(KC_EQL);
            wait_ms(10);
            tap_code(KC_C);
            wait_ms(10);
            tap_code(KC_O);
            wait_ms(10);
            tap_code(KC_N);
            wait_ms(10);
            tap_code(KC_F);
            wait_ms(10);
            tap_code(KC_I);
            wait_ms(10);
            tap_code(KC_D);
            wait_ms(10);
            tap_code(KC_E);
            wait_ms(10);
            tap_code(KC_N);
            wait_ms(10);
            tap_code(KC_C);
            wait_ms(10);
            tap_code(KC_E);
            wait_ms(10);
            tap_code(KC_ENT);
            wait_ms(10);
    }
            return false;

    case FOOT:
        if (record->event.pressed) {
            tap_code(KC_RGHT);
            wait_ms(10);
            tap_code(KC_DOWN);
            wait_ms(10);
            tap_code(KC_UP);
            wait_ms(10);
            tap_code(KC_ENT);
            wait_ms(10);
            tap_code(KC_LEFT);
            wait_ms(10);
    }
            return false;

  }
    return true;// Process all other keycodes normally ?sort=confidence
}

/*
EEP_RST
CG_NORM

*/
