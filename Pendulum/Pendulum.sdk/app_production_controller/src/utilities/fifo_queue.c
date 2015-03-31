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

static XLlFifo fifo_queue;

int init_fifo_queues(){
	XLlFifo_Config *Config;
	int Status;
	Status = XST_SUCCESS;

	// Initialize the Device Configuration Interface driver
	Config = XLlFfio_LookupConfig(FIFO_DEV_ID);
	if (!Config) {
		xil_printf("No config found for %d\r\n", FIFO_DEV_ID);
		return XST_FAILURE;
	}

	// This is where the virtual address would be used, this example uses physical address.
	Status = XLlFifo_CfgInitialize(&fifo_queue, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed\n\r");
		return Status;
	}

	// Check for the Reset value
	Status = XLlFifo_Status(&fifo_queue);
	XLlFifo_IntClear(&fifo_queue,0xffffffff);
	Status = XLlFifo_Status(&fifo_queue);
	if(Status != 0x0) {
		xil_printf("\n ERROR : Reset value of ISR0 : 0x%x\t" "Expected : 0x0\n\r", XLlFifo_Status(&fifo_queue));
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int enqueue(int* data, int size){
	int i = 0;
	for(i = 0; i < size; ++i){
		if(XLlFifo_iTxVacancy(&fifo_queue))
			XLlFifo_TxPutWord(&fifo_queue, data[i]);
	}

	// Start Transmission by writing transmission length into the TLR
	XLlFifo_iTxSetLen(&fifo_queue, WORD_SIZE*size);

	// Check for Transmission completion
	while( !(XLlFifo_IsTxDone(&fifo_queue)));

	return 0;
}

int dequeue(int* buffer){
	int ReceiveLength = 0;
	int RxWord = 0;

	//while(!XLlFifo_iRxOccupancy(&fifo_queue));
	RxWord = XLlFifo_iRxOccupancy(&fifo_queue);

	if(RxWord == 0)	return 0;
	xil_printf("We win! %d \n", RxWord);
	ReceiveLength = (XLlFifo_iRxGetLen(&fifo_queue))/WORD_SIZE;

	//if(sizeof(buffer)/WORD_SIZE < ReceiveLength)	return -1;

	int i = 0;
	// Start Receiving
	for ( i=0; i < ReceiveLength; i++){
		RxWord = 0;
		RxWord = XLlFifo_RxGetWord(&fifo_queue);
		//buffer[i] = RxWord;
	}

	return ReceiveLength;
}
