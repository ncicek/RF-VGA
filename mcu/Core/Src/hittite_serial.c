#include "hittite_serial.h"
void shift_out(uint8_t control_word) {
    uint8_t i;

    if (control_word >> 7) { //make sure we didnt get more than 6 bits
        Error_Handler();
    }

    for (i=0; i<6; i++) {
        HAL_GPIO_WritePin(GPIOA, SER_OUT_Pin, (control_word << i) & 1);
        HAL_GPIO_WritePin(GPIOA, SER_CLK_Pin, GPIO_PIN_SET);
        HAL_GPIO_WritePin(GPIOA, SER_CLK_Pin, GPIO_PIN_RESET);
    }

    //strobe LE
    HAL_GPIO_WritePin(GPIOA, LE_Pin, GPIO_PIN_SET);
    HAL_GPIO_WritePin(GPIOA, LE_Pin, GPIO_PIN_RESET);
}
