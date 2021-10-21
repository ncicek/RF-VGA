#include "main.h"
#include <stdint.h>

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

void main_loop() {
    uint8_t gain;
    gain = get_gain();
    //HAL_Delay(100);
}
