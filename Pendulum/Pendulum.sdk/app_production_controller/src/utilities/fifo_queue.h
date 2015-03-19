/*
 * fifo_queue.h
 *
 *  Created on: Mar 17, 2015
 *      Author: teja
 */

#ifndef FIFO_QUEUE_H_
#define FIFO_QUEUE_H_

#include "xparameters.h"

#define ENQUEUE_DEV_ID	XPAR_AXI_FIFO_PRODUCTION_ENQUEUE_DEVICE_ID

#define WORD_SIZE 		4 // Size of words in bytes

int init_fifo_queues();

int enqueue(int data);

int dequeue();

#endif /* FIFO_QUEUE_H_ */