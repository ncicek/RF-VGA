#include "main.h"
#include <stdint.h>
#include "hittite_serial.h"
#include "seven_seg.h"

#define CLAMP(x, low, high)  (((x) > (high)) ? (high) : (((x) < (low)) ? (low) : (x)))

uint16_t previous_encoder_count = 0;
int8_t gain_word = 63;

uint8_t get_gain() {
    uint16_t encoder_count;
    int32_t delta_encoder_count;

    encoder_count = TIM2->CNT;
    delta_encoder_count = encoder_count - previous_encoder_count;
    previous_encoder_count = encoder_count;

    //handle overflow
    if (delta_encoder_count > (65536/2)) {
    	delta_encoder_count -= 65536;
    } else if (delta_encoder_count < (-65536/2)) {
    	delta_encoder_count += 65536;
    }

    gain_word = CLAMP(gain_word + delta_encoder_count, 0, 63);
    return gain_word;
}

uint8_t previous_gain = 0;
void main_loop() {
    uint8_t gain;
    gain = get_gain();
    if (gain != previous_gain) {
    	shift_out(gain);
    	update_display((gain/2.0) - 31.5);
    }
    previous_gain = gain;
    //HAL_Delay(100);
}
