/*
 * fifo_queue.c
 *
 *  Created on: Mar 17, 2015
 *      Author: teja
 */

#include "fifo_queue.h"
#include "xstreamer.h"
#include "xil_cache.h"
#include "xllfifo.h"
#include "xstatus.h"

static XLlFifo fifo_enqueue;

int init_fifo_queues(){
	XLlFifo_Config *Config;
	int Status;
	int i;
	int Error;
	Status = XST_SUCCESS;

	/* Initialize the Device Configuration Interface driver */
	Config = XLlFfio_LookupConfig(ENQUEUE_DEV_ID);
	if (!Config) {
		xil_printf("No config found for %d\r\n", ENQUEUE_DEV_ID);
		return XST_FAILURE;
	}

	/*
	 * This is where the virtual address would be used, this example
	 * uses physical address.
	 */
	Status = XLlFifo_CfgInitialize(&fifo_enqueue, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed\n\r");
		return Status;
	}

	/* Check for the Reset value */
	Status = XLlFifo_Status(&fifo_enqueue);
	XLlFifo_IntClear(&fifo_enqueue,0xffffffff);
	Status = XLlFifo_Status(&fifo_enqueue);
	if(Status != 0x0) {
		xil_printf("\n ERROR : Reset value of ISR0 : 0x%x\t" "Expected : 0x0\n\r", XLlFifo_Status(&fifo_enqueue));
		return XST_FAILURE;
	}

	return 0;
}

int enqueue(int data){
	if( XLlFifo_iTxVacancy(&fifo_enqueue) ){
		XLlFifo_TxPutWord(&fifo_enqueue, data);
	}

	/* Start Transmission by writing transmission length into the TLR */
	XLlFifo_iTxSetLen(&fifo_enqueue, WORD_SIZE);

	/* Check for Transmission completion */
	while( !(XLlFifo_IsTxDone(&fifo_enqueue)));

	return 0;
}

int dequeue(){

	return 0;
}