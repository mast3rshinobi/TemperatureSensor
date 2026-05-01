/*=========================================================
  app_queue.h
=========================================================*/

#ifndef APP_QUEUE_H
#define APP_QUEUE_H

#include "FreeRTOS.h"
#include "queue.h"
#include <stdint.h>

/*=========================================================
  Queue Length
=========================================================*/
#define SENSOR_QUEUE_LENGTH   5

/*=========================================================
  Structure sent through queue
=========================================================*/
typedef struct
{
    float temperature;
    float humidity;
    uint32_t tick;
} SensorData_t;

/*=========================================================
  Global Queue Handle
=========================================================*/
extern QueueHandle_t SensorQueue;

/*=========================================================
  Function Prototype
=========================================================*/
void AppQueue_Init(void);

#endif
