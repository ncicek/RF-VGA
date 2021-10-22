#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include "main.h"

#define SEG_A 1<<0
#define SEG_B 1<<1
#define SEG_C 1<<2
#define SEG_D 1<<3
#define SEG_E 1<<4
#define SEG_F 1<<5
#define SEG_G 1<<6
#define SEG_DP 1<<7
#define SEG_COLON 1<<8
#define SEG_DOT 1<<9
#define DIG1 1<<10
#define DIG2 1<<11
#define DIG3 1<<12
#define DIG4 1<<13

void display_segment(uint8_t digit, bool decimal_point) {
    const uint8_t seven_seg_map[] = { SEG_A|SEG_B|SEG_C|SEG_D|SEG_E|SEG_F|00000,
								00000|SEG_B|SEG_C|00000|00000|00000|00000,
								SEG_A|SEG_B|00000|SEG_D|SEG_E|00000|SEG_G,
								SEG_A|SEG_B|SEG_C|SEG_D|00000|00000|SEG_G,
								00000|SEG_B|SEG_C|00000|00000|SEG_F|SEG_G,
								SEG_A|00000|SEG_C|SEG_D|SEG_E|SEG_F|SEG_G,
								SEG_A|SEG_B|SEG_C|00000|00000|00000|00000
								};
    if (digit > 9) {
        Error_Handler();
    }
    GPIOB->ODR &= ~(SEG_A|SEG_B|SEG_C|SEG_D|SEG_E|SEG_F|SEG_G|SEG_DP); //clear the old segment bits
    GPIOB->ODR |= seven_seg_map[digit]; //write the new segment bits
    if (decimal_point) {
        GPIOB->ODR |= SEG_DP;
    }
}

void flash_digit(uint8_t digit) {
    const uint16_t digit_map[] = {DIG1, DIG2, DIG3, DIG4};

    GPIOB->ODR &= ~(DIG4|DIG3|DIG2|DIG1);
    GPIOB->ODR |= digit_map[digit];
}

void display_number(uint16_t number, uint8_t decimal_point) {
    int8_t n;
    uint8_t nth_digit;
    
    for (n = 3; n >= 0; n--) {
        nth_digit = (number / (int)(pow(10,n))) % 10;
        display_segment(nth_digit, (n == decimal_point && decimal_point != 0) );
        flash_digit(n);
    }
}

void display_float(float value) {

    //forget all this, just use sprintf

    /*int exp;
    float frac;
    uint8_t decimal_point_position;

    frac = frexpf(value, &exp);
    if !(exp > -3 && exp < +3) {
        Error_Handler();
    }
    if (exp < 0) {
        decimal_point_position = exp * (-1) - 1;
    } else {
        decimal_point_position = 0;
    }

    number = frac * 10 ** exp;
    */

}
