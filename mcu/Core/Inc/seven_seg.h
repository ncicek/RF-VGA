#ifndef __SEVEN_SEG_H
#define __SEVEN_SEG_H

#include <stdbool.h>
#define NUM_DIGITS 4

typedef struct Digit { 
    char digit;
    bool decimal_point;
} Digit;

typedef struct SevenSeg { 
    int8_t current_digit;
    Digit display[NUM_DIGITS];
} SevenSeg;

void update_display(float number);

#endif
