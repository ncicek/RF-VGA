#include <stdint.h>
#include <stdbool.h>
#include <math.h>
#include "main.h"
#include "seven_seg.h"
#include <stdio.h>

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

SevenSeg ss = { .current_digit = 0 };

void display_segment(uint8_t digit, char character, bool decimal_point) {
    uint16_t GPIOB_value = 0;

    const uint8_t seven_seg_map[10] = { 
                                SEG_A|SEG_B|SEG_C|SEG_D|SEG_E|SEG_F|00000,
								00000|SEG_B|SEG_C|00000|00000|00000|00000,
								SEG_A|SEG_B|00000|SEG_D|SEG_E|00000|SEG_G,
								SEG_A|SEG_B|SEG_C|SEG_D|00000|00000|SEG_G,
								00000|SEG_B|SEG_C|00000|00000|SEG_F|SEG_G,
                                SEG_A|00000|SEG_C|SEG_D|00000|SEG_F|SEG_G,
								SEG_A|00000|SEG_C|SEG_D|SEG_E|SEG_F|SEG_G,
								SEG_A|SEG_B|SEG_C|00000|00000|00000|00000,
                                SEG_A|SEG_B|SEG_C|SEG_D|SEG_E|SEG_F|SEG_G,
                                SEG_A|SEG_B|SEG_C|00000|00000|SEG_F|SEG_G,
								};
    const uint16_t digit_map[4] = {DIG1, DIG2, DIG3, DIG4};

    if (digit > 3) {
		Error_Handler();
    }

    GPIOB->ODR &= ~(DIG1 | DIG2 | DIG3 | DIG4); //turn off all digits before changing segments
    delay_us(250); //wait for FET to turn off

    if ('0' <= character && character <= '9') { //ASCII number
        GPIOB_value |= seven_seg_map[character - 48];
    } else if (character == '-') { //ASCII -
        GPIOB_value |= SEG_G;
    } else if (character == ' ') {
    	//blank char
    } else {
        //Error_Handler();
    }
    
    if (decimal_point) {
        GPIOB_value |= SEG_DP;
    }

    GPIOB->ODR = GPIOB_value; //write the segments

    GPIOB->ODR |= digit_map[digit]; //flash the digit requested
    delay_us(1500); //wait for FET to turn on
}

void update_display(float value) {
    char string[NUM_DIGITS+1] = {0};
    uint8_t i;

    if (value == -0) {
    	value = +0; //why do i need to do this?
    }

    sprintf(string, "%2.1f", value);

    //shift right any trailing zeros
    while (string[NUM_DIGITS] == 0) {
    	for (i = NUM_DIGITS; i >= 1; i--) {
    		string[i] = string[i-1];
    	}
    	string[0] = ' ';
    }

    for (i = 0; i < NUM_DIGITS; i++) {
        if (string[i+1] == '.') {
            ss.display[i].digit = string[i];
            ss.display[i].decimal_point = true;
        } else if (string[i] == '.') {
        	ss.display[i].digit = string[i+1];
			ss.display[i].decimal_point = false;
        } else if (string[i] == 0) {
			ss.display[i].digit = ' ';
			ss.display[i].decimal_point = false;
        } else {
            ss.display[i].digit = string[i];
            ss.display[i].decimal_point = false;
        }
    }
}


void flash_display(TIM_HandleTypeDef* htim)
{
    if (ss.current_digit < NUM_DIGITS) {
		display_segment(ss.current_digit, ss.display[ss.current_digit].digit, ss.display[ss.current_digit].decimal_point);
        ss.current_digit += 1;
    } else {
        ss.current_digit = 0;
    }
}
