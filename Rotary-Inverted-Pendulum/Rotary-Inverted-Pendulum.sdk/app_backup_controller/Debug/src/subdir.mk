################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/backup_controller.c \
../src/main_backup.c \
../src/pendulum_control.c 

OBJS += \
./src/backup_controller.o \
./src/main_backup.o \
./src/pendulum_control.o 

C_DEPS += \
./src/backup_controller.d \
./src/main_backup.d \
./src/pendulum_control.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -I../../bsp_backup_standalone/backup_controller/include -I/home/controls/TAIGA/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.sdk/global_includes -c -fmessage-length=0 -MT"$@" -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v9.5 -mno-xl-soft-mul -mhard-float -mxl-float-convert -mxl-float-sqrt -Wl,--no-relax -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


