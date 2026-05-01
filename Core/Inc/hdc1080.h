#ifndef HDC1080_H
#define HDC1080_H

#include "main.h"

void HDC1080_Init(I2C_HandleTypeDef *hi2c);
float HDC1080_ReadTemperature(void);
float HDC1080_ReadHumidity(void);

#endif
