/*
 * monitor_supervisor.c
 *
 *  Created on: Apr 8, 2015
 *      Author: teja
 */


#include "monitor_supervisor.h"
#include "utilities/axi_spi.h"
#include "utilities/axi_uart.h"

void supervisor_send_state_vector(float stateVector[4]){
	u8 uartBuffer[16];

	u32_to_buffer((u32)(stateVector[0]*10000), &uartBuffer[0], 4);
	u32_to_buffer((u32)(stateVector[1]*10000), &uartBuffer[4], 4);
	u32_to_buffer((u32)(stateVector[2]*1000), &uartBuffer[8], 4);
	u32_to_buffer((u32)(stateVector[3]*1000), &uartBuffer[12], 4);

	while(!uart_send(uartBuffer, 16));
}

void supervisor_send_tail(){
	u8 uartBuffer[8] = {
			'Q', 'R', 'S', 'T',
			'-', '-', '-', '\n',
	};

	while(!uart_send(uartBuffer, 8));
}
