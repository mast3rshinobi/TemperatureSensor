/*=========================================================
  app_tasks.c
  FreeRTOS Tasks for STM32 + HDC1080
=========================================================*/

#include <stdio.h>
#include "main.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "app_queue.h"
#include "hdc1080.h"
#include "app_tasks.h"

/*=========================================================
  External UART handle (generated in main.c)
=========================================================*/
extern UART_HandleTypeDef huart2;

/*=========================================================
  Queue Handle
=========================================================*/
extern QueueHandle_t SensorQueue;

/*=========================================================
  Static Task Prototypes
=========================================================*/
static void SensorTask(void *argument);
static void UARTTask(void *argument);

/*=========================================================
  Create Queue + Create Tasks
=========================================================*/
void AppTasks_Create(void)
{
    if(SensorQueue == NULL)
    {
        printf("Queue creation failed\r\n");
        while(1);
    }

    /* Create Producer Task */
    xTaskCreate(SensorTask,
                "SensorTask",
                2048,
                NULL,
                2,
                NULL);

    /* Create Consumer Task */
    xTaskCreate(UARTTask,
                "UARTTask",
                1024,
                NULL,
                1,
                NULL);
}

/*=========================================================
  PRODUCER TASK
  Reads sensor and sends data to queue
=========================================================*/
static void SensorTask(void *argument)
{
    SensorData_t sensorData;

    printf("Sensor Task Started\r\n");

    while(1)
    {
        sensorData.temperature = HDC1080_ReadTemperature();
        sensorData.humidity    = HDC1080_ReadHumidity();
        sensorData.tick        = xTaskGetTickCount();

        xQueueSend(SensorQueue,
                   &sensorData,
                   portMAX_DELAY);

        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}

/*=========================================================
  CONSUMER TASK
  Receives queue data and prints UART
=========================================================*/
static void UARTTask(void *argument)
{
    SensorData_t rxData;

    printf("UART Task Started\r\n");

    while(1)
    {
        if(xQueueReceive(SensorQueue,
                         &rxData,
                         portMAX_DELAY) == pdPASS)
        {
            printf("Temp: %.2f C | Hum: %.2f %% | Tick: %lu\r\n",
                   rxData.temperature,
                   rxData.humidity,
                   rxData.tick);
        }
    }
}
