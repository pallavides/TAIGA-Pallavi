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
#include "xintc.h"
#include "axi_gpio.h"

static XLlFifo fifo_enqueue;
static XLlFifo fifo_dequeue;

static void fifo_handler(XLlFifo *Fifo);
static void FifoRecvHandler(XLlFifo *Fifo);
int SetupInterruptSystem(XIntc *IntcInstancePtr, XLlFifo *InstancePtr,
				u16 FifoIntrId);
static void DisableIntrSystem(XIntc *IntcInstancePtr, u16 FifoIntrId);


static XIntc interrupt_controller;

int init_fifo_queues(){
	XLlFifo_Config *Config;
	int Status;
	Status = XST_SUCCESS;

	// Initialize the Enqueue Module -----------------------------

	// Initialize the Device Configuration Interface driver
	Config = XLlFfio_LookupConfig(ENQUEUE_DEV_ID);
	if (!Config) {
		xil_printf("No config found for %d\r\n", ENQUEUE_DEV_ID);
		return XST_FAILURE;
	}

	// This is where the virtual address would be used, this example uses physical address.
	Status = XLlFifo_CfgInitialize(&fifo_enqueue, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed\n\r");
		return Status;
	}

	// Check for the Reset value
	Status = XLlFifo_Status(&fifo_enqueue);
	XLlFifo_IntClear(&fifo_enqueue,0xffffffff);
	Status = XLlFifo_Status(&fifo_enqueue);
	if(Status != 0x0) {
		xil_printf("\n ERROR : Reset value of ISR0 : 0x%x\t" "Expected : 0x0\n\r", XLlFifo_Status(&fifo_enqueue));
		return XST_FAILURE;
	}

	// Initialize the Dequeue Module -----------------------------

	// Initialize the Device Configuration Interface driver
	Config = XLlFfio_LookupConfig(DEQUEUE_DEV_ID);
	if (!Config) {
		xil_printf("No config found for %d\r\n", DEQUEUE_DEV_ID);
		return XST_FAILURE;
	}

	// This is where the virtual address would be used, this example uses physical address.
	Status = XLlFifo_CfgInitialize(&fifo_dequeue, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed\n\r");
		return Status;
	}

	// Check for the Reset value
	Status = XLlFifo_Status(&fifo_dequeue);
	XLlFifo_IntClear(&fifo_dequeue,0xffffffff);
	Status = XLlFifo_Status(&fifo_dequeue);
	if(Status != 0x0) {
		xil_printf("\n ERROR : Reset value of ISR0 : 0x%x\t" "Expected : 0x0\n\r", XLlFifo_Status(&fifo_dequeue));
		return XST_FAILURE;
	}

	//-----------------------------INterrupt

	Status = SetupInterruptSystem(&interrupt_controller, &fifo_dequeue, FIFO_INTR_ID);
	if (Status != XST_SUCCESS) {
		//xil_printf("Failed intr setup\r\n");
		return XST_FAILURE;
	}

	XLlFifo_IntEnable(&fifo_dequeue, XLLF_INT_RFPE_MASK);

	while(1){
		select_controller(read_sw_raw());
	}

	return XST_SUCCESS;
}

int enqueue(int* data, int size){
	int i = 0;
	for(i = 0; i < size; ++i){
		if(XLlFifo_iTxVacancy(&fifo_enqueue))
			XLlFifo_TxPutWord(&fifo_enqueue, data[i]);
	}

	// Start Transmission by writing transmission length into the TLR
	XLlFifo_iTxSetLen(&fifo_enqueue, WORD_SIZE*size);

	// Check for Transmission completion
	while( !(XLlFifo_IsTxDone(&fifo_enqueue)));

	return 0;
}

int dequeue(int* buffer){
	int ReceiveLength = 0;
	int RxWord = 0;

	ReceiveLength = (XLlFifo_iRxGetLen(&fifo_dequeue))/WORD_SIZE;

	if(sizeof(buffer)/WORD_SIZE < ReceiveLength)	return -1;

	int i = 0;
	// Start Receiving
	for ( i=0; i < ReceiveLength; i++){
		RxWord = 0;
		RxWord = XLlFifo_RxGetWord(&fifo_dequeue);
		buffer[i] = RxWord;
	}

	return ReceiveLength;
}


static void fifo_handler(XLlFifo *InstancePtr)
{
	u32 Pending;

	Pending = XLlFifo_IntPending(InstancePtr);
	while (Pending) {
		if (Pending & XLLF_INT_RFPE_MASK) {
			xil_printf("RFPE: %d\n", Pending);
			FifoRecvHandler(InstancePtr);
			XLlFifo_IntClear(InstancePtr, XLLF_INT_RFPE_MASK);
		}
		else {
			xil_printf("else: %d\n", Pending);
			XLlFifo_IntClear(InstancePtr, Pending);
		}
		Pending = XLlFifo_IntPending(InstancePtr);
	}
}


static void FifoRecvHandler(XLlFifo *InstancePtr)
{
	int i;
	u32 RxWord;
	static u32 ReceiveLength;
	xil_printf("Receiving Data...\n");

	// Read Recieve Length
	ReceiveLength = (XLlFifo_iRxGetLen(InstancePtr))/WORD_SIZE;

	static bool ledState = true;
	set_led(LED1, ledState);
	ledState = !ledState;

	for (i=0; i < ReceiveLength; i++) {
			RxWord = XLlFifo_RxGetWord(InstancePtr);
			xil_printf("%d\n", RxWord);
	}
}


int SetupInterruptSystem(XIntc *IntcInstancePtr1, XLlFifo *InstancePtr2,
				u16 FifoIntrId2){

	int Status;

	// Initialize the interrupt controller driver so that it is ready to use.
	Status = XIntc_Initialize(&interrupt_controller, INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	// Connect a device driver handler that will be called when an interrupt for the device occurs,
	Status = XIntc_Connect(&interrupt_controller, FIFO_INTR_ID,(XInterruptHandler)fifo_handler,(void *)&fifo_dequeue);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Start the interrupt controller such that interrupts are enabled for all devices that cause interrupts
	Status = XIntc_Start(&interrupt_controller, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Enable the interrupt for the AXI FIFO device.
	XIntc_Enable(&interrupt_controller, FIFO_INTR_ID);


	// Initialize the exception table.
	Xil_ExceptionInit();

	// Register the interrupt controller handler with the exception table.
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
		(Xil_ExceptionHandler)XIntc_InterruptHandler,
		(void *)&interrupt_controller);;

	// Enable exceptions.
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

static void DisableIntrSystem(XIntc *IntcInstancePtr, u16 FifoIntrId)
{
	/* Disconnect the interrupts */
	XIntc_Disconnect(IntcInstancePtr, FifoIntrId);
}
