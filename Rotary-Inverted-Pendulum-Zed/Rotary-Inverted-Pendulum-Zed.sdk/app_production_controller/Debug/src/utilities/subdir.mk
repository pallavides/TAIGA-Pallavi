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
<<<<<<< HEAD
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -I../../bsp_production_freertos/ps7_cortexa9_1/include -I/home/controls/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.sdk/global_includes -c -fmessage-length=0 -MT"$@" -I../../bsp_production_freertos/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
=======
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -I../../bsp_production_freertos/ps7_cortexa9_1/include -I/home/controls/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.sdk/global_includes -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
>>>>>>> ef4790edb2c8867b0c01eb2a9ca857e6c4aa2b45
	@echo 'Finished building: $<'
	@echo ' '


