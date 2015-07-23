################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/utilities/axi_gpio.c \
../src/utilities/axi_spi.c \
../src/utilities/axi_uart.c \
../src/utilities/fifo_queue_wdt.c \
../src/utilities/interrupt_controller.c 

OBJS += \
./src/utilities/axi_gpio.o \
./src/utilities/axi_spi.o \
./src/utilities/axi_uart.o \
./src/utilities/fifo_queue_wdt.o \
./src/utilities/interrupt_controller.o 

C_DEPS += \
./src/utilities/axi_gpio.d \
./src/utilities/axi_spi.d \
./src/utilities/axi_uart.d \
./src/utilities/fifo_queue_wdt.d \
./src/utilities/interrupt_controller.d 


# Each subdirectory must supply rules for building sources it contributes
src/utilities/%.o: ../src/utilities/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -I../../bsp_ioi_standalone/IO_intermediary/include -I/home/controls/TAIGA/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.sdk/global_includes -c -fmessage-length=0 -MT"$@" -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v9.5 -mno-xl-soft-mul -mhard-float -mxl-float-convert -mxl-float-sqrt -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


