/*
 * ioi_handler.c
 *
 *  Created on: Mar 31, 2015
 *      Author: teja
 */

#include "ioi_handler.h"
#include "utilities/fifo_queue_wdt.h"
#include "utilities/axi_gpio.h"
#include "pendulum_plant.h"

bool plant_filter(QueuePacket* packet);

void ioi_handler(QueuePacket fifo_packet){
	set_led(LED1, true);

	u8 writeBuffer[4], readBuffer[4], i;

	unsigned int returnData[4];

	switch (fifo_packet.command){
		case (PLANT): // SPI
			if(!plant_filter(&fifo_packet)) return; // ERROR HANDLING HERE FOR FILTERING SPI
			if(!fifo_packet.bytes)	return;	// ERROR HANDLING IF TRANSFER BYTES IS 0

			if( (fifo_packet.slave == SS_DAC) && (fifo_packet.operation == WRITE) && (fifo_packet.bytes = BITS_16)
					&& ((fifo_packet.data[0] & DAC_CONFIG_BITS) == DAC_CONFIG_BITS) ) // write voltage
				{xil_printf("writing\n");
				write_voltage(fifo_packet.data[0]);
				}
			else if( (fifo_packet.slave == SS_ENCODER_S | fifo_packet.slave == SS_ENCODER_P) && (fifo_packet.operation == READ)
					&& (fifo_packet.bytes ==  BITS_32) && (fifo_packet.data[0]  == (READ_CNTR << 24))) // read encoder
				{xil_printf("reading\n");
				returnData[0] = read_sensor(fifo_packet.slave, fifo_packet.data[0]);
				}
			break;
		case (SET_POINT): // SET_POINT
			returnData[0] = 10;
			xil_printf("SET_POINT\n");
			//returnData[0] = ((u32)getSetPoint());
			break;
		case (STATE_INFORMATION): // STATE_INFORMATION
			//getStateInformation((unsigned int *)returnData);
			break;
		default:
			xil_printf("default\n");
			break;
	}

	enqueue(returnData, fifo_packet.operation > 4 ? 4 : fifo_packet.operation);

	set_led(LED1, false);
/*			for(i = 0; i < ((fifoParams >> 16) & 0xFF); ++i)
				enqueue_taiga_to_controller(retData[i]);
			set_led(LED1, false);
			guardTriggerMechanism(startFlagTAIGA);
			if(!startFlagTAIGA)	startFlagTAIGA = read_btn(BTN0);
			if(read_btn(BTN1)){
				i = read_sw_raw();
				updateSetPoint((i & 8) ? (-5*(i&7)) : (5*(i&7)));
			}
			if(read_btn(BTN2)){
				select_controller(PRODUCTION);
			}*/
}

bool plant_filter(QueuePacket* packet){
	if( (packet->slave == SS_ENCODER_S | packet->slave == SS_ENCODER_P) && (packet->operation == READ) && (packet->bytes ==  BITS_32) ) // read encoder
		return true;
	if( (packet->slave == SS_DAC) && (packet->operation == WRITE) && (packet->bytes = BITS_16) && ((packet->data[0] & DAC_CONFIG_BITS) == DAC_CONFIG_BITS) )
		return true;
	return false;
}
