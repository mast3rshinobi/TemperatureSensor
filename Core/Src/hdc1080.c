/*=========================================================
  hdc1080.c
=========================================================*/

#include "hdc1080.h"
#include "FreeRTOS.h"
#include "task.h"

#define HDC1080_ADDR   (0x40 << 1)

/* Static handle pointer */
static I2C_HandleTypeDef *hdc_i2c;

/*=========================================================
  Initialize driver
=========================================================*/
void HDC1080_Init(I2C_HandleTypeDef *hi2c)
{
    hdc_i2c = hi2c;
}

/*=========================================================
  Read Temperature
  Register : 0x00
=========================================================*/
float HDC1080_ReadTemperature(void)
{
    uint8_t reg = 0x00;
    uint8_t data[2];
    uint16_t raw;

    /* Select temperature register */
    HAL_I2C_Master_Transmit(hdc_i2c,
                            HDC1080_ADDR,
                            &reg,
                            1,
                            HAL_MAX_DELAY);

    /* Sensor conversion time */
    vTaskDelay(pdMS_TO_TICKS(20));

    /* Read 2 bytes */
    HAL_I2C_Master_Receive(hdc_i2c,
                           HDC1080_ADDR,
                           data,
                           2,
                           HAL_MAX_DELAY);

    raw = (data[0] << 8) | data[1];

    /* Convert raw to Celsius */
    return ((raw / 65536.0f) * 165.0f) - 40.0f;
}

/*=========================================================
  Read Humidity
  Register : 0x01
=========================================================*/
float HDC1080_ReadHumidity(void)
{
    uint8_t reg = 0x01;
    uint8_t data[2];
    uint16_t raw;

    /* Select humidity register */
    HAL_I2C_Master_Transmit(hdc_i2c,
                            HDC1080_ADDR,
                            &reg,
                            1,
                            HAL_MAX_DELAY);

    /* Sensor conversion time */
    vTaskDelay(pdMS_TO_TICKS(20));

    /* Read 2 bytes */
    HAL_I2C_Master_Receive(hdc_i2c,
                           HDC1080_ADDR,
                           data,
                           2,
                           HAL_MAX_DELAY);

    raw = (data[0] << 8) | data[1];

    /* Convert raw to %RH */
    return (raw / 65536.0f) * 100.0f;
}
