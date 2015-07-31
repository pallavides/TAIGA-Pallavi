################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
<<<<<<< HEAD
=======
../src/adversary.c \
>>>>>>> ef4790edb2c8867b0c01eb2a9ca857e6c4aa2b45
../src/main_production.c \
../src/pendulum_control.c \
../src/production_controller.c 

OBJS += \
<<<<<<< HEAD
=======
./src/adversary.o \
>>>>>>> ef4790edb2c8867b0c01eb2a9ca857e6c4aa2b45
./src/main_production.o \
./src/pendulum_control.o \
./src/production_controller.o 

C_DEPS += \
<<<<<<< HEAD
=======
./src/adversary.d \
>>>>>>> ef4790edb2c8867b0c01eb2a9ca857e6c4aa2b45
./src/main_production.d \
./src/pendulum_control.d \
./src/production_controller.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
<<<<<<< HEAD
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -I../../bsp_production_freertos/ps7_cortexa9_1/include -I/home/controls/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.sdk/global_includes -c -fmessage-length=0 -MT"$@" -I../../bsp_production_freertos/ps7_cortexa9_1/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
=======
	arm-xilinx-eabi-gcc -Wall -O0 -g3 -I../../bsp_production_freertos/ps7_cortexa9_1/include -I/home/controls/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.sdk/global_includes -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
>>>>>>> ef4790edb2c8867b0c01eb2a9ca857e6c4aa2b45
	@echo 'Finished building: $<'
	@echo ' '


