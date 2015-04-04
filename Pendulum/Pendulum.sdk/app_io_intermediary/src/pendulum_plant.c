/*
 * pendulum_plant.c
 *
 *  Created on: Mar 31, 2015
 *      Author: teja
 */

#include "pendulum_plant.h"

static u8 cycle_flag = 0;

static PlantParameters stateVector;

void init_pendulum_plant(){
	u32 spiParams, spiWriteData;
	u8 writeBuffer[4], readBuffer[4];

	// Pendulum Encoder Initialization
	// clear counter
	spiParams = (PLANT << 24) |(WRITE << 16) | (BITS_8 << 8) | SS_ENCODER_P;
	spiWriteData = CLR_CNTR;
	u32_to_buffer(spiWriteData, writeBuffer, (spiParams >> 8) & 0xFF);
	spi_transfer(spiParams & 0xFF, writeBuffer, readBuffer, (spiParams >> 8) & 0xFF);

	// write to MDR0 register the following:
	// QUADRX4: X4 quadrature mode (four counts per quadrature cycle)
	// FREE_RUN: run the counter without any limits
	// DISABLE_INDX: index_disabled
	// FILTER_2: filter clock frequency division factor 2
	spiParams = (PLANT << 24) |(WRITE << 16) | (BITS_16 << 8) | SS_ENCODER_P;
	spiWriteData = (WRITE_MDR0 << 8) | QUADRX4 | FREE_RUN | DISABLE_INDX | FILTER_2;
	u32_to_buffer(spiWriteData, writeBuffer, (spiParams >> 8) & 0xFF);
	spi_transfer(spiParams & 0xFF, writeBuffer, readBuffer, (spiParams >> 8) & 0xFF);

	// write to MDR1 register the following:
	// NO_FLAGS: turn off flags
	// BYTE_2: counter will be in two byte mode
	// EN_CNTR: counting enabled
	spiParams = (PLANT << 24) |(WRITE << 16) | (BITS_16 << 8) | SS_ENCODER_P;
	spiWriteData = (WRITE_MDR1 << 8) | NO_FLAGS | BYTE_2 | EN_CNTR;
	u32_to_buffer(spiWriteData, writeBuffer, (spiParams >> 8) & 0xFF);
	spi_transfer(spiParams & 0xFF, writeBuffer, readBuffer, (spiParams >> 8) & 0xFF);

	// Servo Encoder Initialization
	// clear counter
	spiParams = (PLANT << 24) |(WRITE << 16) | (BITS_8 << 8) | SS_ENCODER_S;
	spiWriteData = CLR_CNTR;
	u32_to_buffer(spiWriteData, writeBuffer, (spiParams >> 8) & 0xFF);
	spi_transfer(spiParams & 0xFF, writeBuffer, readBuffer, (spiParams >> 8) & 0xFF);

	// write to MDR0 register the following:
	// QUADRX4: X4 quadrature mode (four counts per quadrature cycle)
	// FREE_RUN: run the counter without any limits
	// DISABLE_INDX: index_disabled
	// FILTER_2: filter clock frequency division factor 2
	spiParams = (PLANT << 24) |(WRITE << 16) | (BITS_16 << 8) | SS_ENCODER_S;
	spiWriteData = (WRITE_MDR0 << 8) | QUADRX4 | FREE_RUN | DISABLE_INDX | FILTER_2;
	u32_to_buffer(spiWriteData, writeBuffer, (spiParams >> 8) & 0xFF);
	spi_transfer(spiParams & 0xFF, writeBuffer, readBuffer, (spiParams >> 8) & 0xFF);

	// write to MDR1 register the following:
	// NO_FLAGS: turn off flags
	// BYTE_2: counter will be in two byte mode
	// EN_CNTR: counting enabled
	spiParams = (PLANT << 24) |(WRITE << 16) | (BITS_16 << 8) | SS_ENCODER_S;
	spiWriteData = (WRITE_MDR1 << 8) | NO_FLAGS | BYTE_2 | EN_CNTR;
	u32_to_buffer(spiWriteData, writeBuffer, (spiParams >> 8) & 0xFF);
	spi_transfer(spiParams & 0xFF, writeBuffer, readBuffer, (spiParams >> 8) & 0xFF);

	// Write DAC 0
	spiParams = (PLANT << 24) |(WRITE << 16) | (BITS_16 << 8) | SS_DAC;
	spiWriteData = (short)((1.65/3.3) * 4096) | DAC_CONFIG_BITS;
	u32_to_buffer(spiWriteData, writeBuffer, (spiParams >> 8) & 0xFF);
	spi_transfer(spiParams & 0xFF, writeBuffer, readBuffer, (spiParams >> 8) & 0xFF);
}

void write_voltage(u32 voltage_data){
	u8 writeBuffer[4];
	u32_to_buffer(voltage_data, writeBuffer, BITS_16);
	spi_transfer(SS_DAC, writeBuffer, NULL, BITS_16);

	cycle_flag |= SS_DAC;
}

u32 read_sensor(slave_select sensor, u32 data){
	u8 writeBuffer[4], readBuffer[4];
	u32_to_buffer(data, writeBuffer, BITS_32);
	spi_transfer(sensor, writeBuffer, readBuffer, BITS_32);

	cycle_flag |= sensor;

	int rawSensor = buffer_to_u32(readBuffer, BITS_32);

	if(sensor == SS_ENCODER_P)
		stateVector.encoder_alpha = (0xFFFF)*(rawSensor >> 8);
	else if (sensor == SS_ENCODER_P)
		stateVector.encoder_theta = (0xFFFF)*(rawSensor >> 8);

	return rawSensor;
}
