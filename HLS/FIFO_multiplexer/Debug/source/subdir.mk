################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../FIFO_multiplexer.cpp 

OBJS += \
./source/FIFO_multiplexer.o 

CPP_DEPS += \
./source/FIFO_multiplexer.d 


# Each subdirectory must supply rules for building sources it contributes
source/FIFO_multiplexer.o: /home/controls/TAIGA/HLS/FIFO_multiplexer/FIFO_multiplexer.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/opt/Xilinx/Vivado_HLS/2015.1/include/ap_sysc -I/opt/Xilinx/Vivado_HLS/2015.1/lnx64/tools/auto_cc/include -I/opt/Xilinx/Vivado_HLS/2015.1/lnx64/tools/systemc/include -I/opt/Xilinx/Vivado_HLS/2015.1/include -I/opt/Xilinx/Vivado_HLS/2015.1/include/etc -I/home/controls/TAIGA/HLS -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


