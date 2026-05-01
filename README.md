# STM32 FreeRTOS Temperature and Humidity Monitor (HDC1080)

## Overview
This project implements a FreeRTOS-based embedded system on STM32F410RE to measure temperature and humidity using the HDC1080 sensor over I2C.

The system follows a producer-consumer architecture:
- SensorTask reads data from the sensor
- UARTTask prints the data over UART
- A FreeRTOS queue is used for communication between tasks

---

## Features
- STM32 HAL with FreeRTOS integration  
- I2C communication with HDC1080 sensor  
- UART logging using printf redirection  
- Queue-based inter-task communication  
- Modular driver design  
- HardFault debugging using Cortex-M fault registers  

---

## Architecture

SensorTask (Producer)
        ↓
   FreeRTOS Queue
        ↓
UARTTask (Consumer)
        ↓
     UART Output

---

## Project Structure

```
Core/
 ├── Inc/
 │    ├── hdc1080.h
 │    ├── app_tasks.h
 │    ├── app_queue.h
 │
 └── Src/
      ├── main.c
      ├── hdc1080.c
      ├── app_tasks.c
      ├── app_queue.c
      ├── syscalls.c
```

## Hardware Used
- STM32F401RE Nucleo board  
- HDC1080 temperature and humidity sensor  
- UART (USART2) for logging  

---

## Communication Details
- I2C Address: 0x40  
- Registers:
  - 0x00 → Temperature
  - 0x01 → Humidity

---

## Output Example

Temp: 30.45 C | Hum: 55.23 %
Temp: 30.50 C | Hum: 55.10 %

---

## How It Works

1. System initializes HAL, peripherals, and FreeRTOS  
2. Queue is created  
3. SensorTask periodically reads sensor data  
4. Data is sent to the queue  
5. UARTTask receives data and prints it over UART  

---

## Debugging and Learnings

- Used SCB registers (CFSR, HFSR, BFAR) to debug HardFault  
- Identified memory corruption and stack-related issues  
- Fixed nested function bug causing invalid memory access  
- Understood importance of proper RTOS configuration  

---

## Future Improvements

- Add mutex for I2C access  
- Use vTaskDelayUntil for precise periodic execution  
- Add error handling and retry mechanism  
- Implement interrupt-based I2C  
- Support multiple sensors  

---

## Key Concepts

- FreeRTOS task scheduling  
- Queue-based communication  
- Embedded driver development  
- UART printf retargeting  
- Cortex-M fault debugging  

---

## Author

Ravikishore A
