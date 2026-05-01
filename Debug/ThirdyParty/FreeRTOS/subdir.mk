################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/croutine.c \
E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/event_groups.c \
E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/list.c \
E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/queue.c \
E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/stream_buffer.c \
E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/tasks.c \
E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/timers.c 

OBJS += \
./ThirdyParty/FreeRTOS/croutine.o \
./ThirdyParty/FreeRTOS/event_groups.o \
./ThirdyParty/FreeRTOS/list.o \
./ThirdyParty/FreeRTOS/queue.o \
./ThirdyParty/FreeRTOS/stream_buffer.o \
./ThirdyParty/FreeRTOS/tasks.o \
./ThirdyParty/FreeRTOS/timers.o 

C_DEPS += \
./ThirdyParty/FreeRTOS/croutine.d \
./ThirdyParty/FreeRTOS/event_groups.d \
./ThirdyParty/FreeRTOS/list.d \
./ThirdyParty/FreeRTOS/queue.d \
./ThirdyParty/FreeRTOS/stream_buffer.d \
./ThirdyParty/FreeRTOS/tasks.d \
./ThirdyParty/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdyParty/FreeRTOS/croutine.o: E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/croutine.c ThirdyParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/include" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdyParty/FreeRTOS/event_groups.o: E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/event_groups.c ThirdyParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/include" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdyParty/FreeRTOS/list.o: E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/list.c ThirdyParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/include" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdyParty/FreeRTOS/queue.o: E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/queue.c ThirdyParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/include" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdyParty/FreeRTOS/stream_buffer.o: E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/stream_buffer.c ThirdyParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/include" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdyParty/FreeRTOS/tasks.o: E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/tasks.c ThirdyParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/include" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
ThirdyParty/FreeRTOS/timers.o: E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/timers.c ThirdyParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/include" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdyParty-2f-FreeRTOS

clean-ThirdyParty-2f-FreeRTOS:
	-$(RM) ./ThirdyParty/FreeRTOS/croutine.cyclo ./ThirdyParty/FreeRTOS/croutine.d ./ThirdyParty/FreeRTOS/croutine.o ./ThirdyParty/FreeRTOS/croutine.su ./ThirdyParty/FreeRTOS/event_groups.cyclo ./ThirdyParty/FreeRTOS/event_groups.d ./ThirdyParty/FreeRTOS/event_groups.o ./ThirdyParty/FreeRTOS/event_groups.su ./ThirdyParty/FreeRTOS/list.cyclo ./ThirdyParty/FreeRTOS/list.d ./ThirdyParty/FreeRTOS/list.o ./ThirdyParty/FreeRTOS/list.su ./ThirdyParty/FreeRTOS/queue.cyclo ./ThirdyParty/FreeRTOS/queue.d ./ThirdyParty/FreeRTOS/queue.o ./ThirdyParty/FreeRTOS/queue.su ./ThirdyParty/FreeRTOS/stream_buffer.cyclo ./ThirdyParty/FreeRTOS/stream_buffer.d ./ThirdyParty/FreeRTOS/stream_buffer.o ./ThirdyParty/FreeRTOS/stream_buffer.su ./ThirdyParty/FreeRTOS/tasks.cyclo ./ThirdyParty/FreeRTOS/tasks.d ./ThirdyParty/FreeRTOS/tasks.o ./ThirdyParty/FreeRTOS/tasks.su ./ThirdyParty/FreeRTOS/timers.cyclo ./ThirdyParty/FreeRTOS/timers.d ./ThirdyParty/FreeRTOS/timers.o ./ThirdyParty/FreeRTOS/timers.su

.PHONY: clean-ThirdyParty-2f-FreeRTOS

