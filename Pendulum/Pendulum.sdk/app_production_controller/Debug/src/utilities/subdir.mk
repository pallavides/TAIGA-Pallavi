################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/utilities/axi_gpio.c \
../src/utilities/fifo_queue.c 

OBJS += \
./src/utilities/axi_gpio.o \
./src/utilities/fifo_queue.o 

C_DEPS += \
./src/utilities/axi_gpio.d \
./src/utilities/fifo_queue.d 


# Each subdirectory must supply rules for building sources it contributes
src/utilities/%.o: ../src/utilities/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -I../../bsp_production_freertos/ps7_cortexa9_1/include -I../../global_includes -c -fmessage-length=0 -MT"$@" -I../../bsp_production_freertos/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


