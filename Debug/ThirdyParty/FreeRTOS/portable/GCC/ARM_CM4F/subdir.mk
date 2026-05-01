################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F/port.c 

OBJS += \
./ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F/port.o 

C_DEPS += \
./ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F/port.d 


# Each subdirectory must supply rules for building sources it contributes
ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F/port.o: E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F/port.c ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/include" -I"E:/FreeRTOS/Workspace/RTOS_Workspace/ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThirdyParty-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

clean-ThirdyParty-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F/port.cyclo ./ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F/port.d ./ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F/port.o ./ThirdyParty/FreeRTOS/portable/GCC/ARM_CM4F/port.su

.PHONY: clean-ThirdyParty-2f-FreeRTOS-2f-portable-2f-GCC-2f-ARM_CM4F

