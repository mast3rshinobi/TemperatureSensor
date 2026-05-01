/*=========================================================
  app_queue.c
=========================================================*/

#include <stdio.h>
#include "main.h"
#include "app_queue.h"

/*=========================================================
  Queue Handle Definition
=========================================================*/
QueueHandle_t SensorQueue;

/*=========================================================
  Create Queue
=========================================================*/
void AppQueue_Init(void)
{
    SensorQueue = xQueueCreate(SENSOR_QUEUE_LENGTH,
                               sizeof(SensorData_t));

    if(SensorQueue == NULL)
    {
        printf("Sensor Queue Creation Failed\r\n");

        while(1);
    }
}
