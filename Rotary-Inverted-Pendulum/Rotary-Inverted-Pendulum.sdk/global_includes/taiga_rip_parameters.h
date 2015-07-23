/*
 * taiga_pendulum_parameters.h
 *
 *  Created on: Oct 9, 2014
 *      Author: teja
 */

#ifndef TAIGA_RIP_PARAMETERS_H_
#define TAIGA_RIP_PARAMETERS_H_

// FIFO Message Queue format for first message containing information about message:
// 32|31	command_type	24|23	operation_type		16|15	transfer_bits	8|7		slave_select	1|0
typedef enum {PLANT, SET_POINT, STATE_VECTOR} command_type;
typedef enum {WRITE, READ, READ_STATE_VECTOR = 0x4} operation_type;
typedef enum {BITS_0, BITS_8, BITS_16, BITS_24, BITS_32} transfer_bits;
typedef enum {NO_SLAVE=0x0, SS_ADC=0x01, SS_DAC=0x02, SS_ENCODER_P=0x04, SS_ENCODER_S=0x08} slave_select;

// Control Parameters Structure used in all controller instances
typedef struct PlantParameters{
	float xpre[4];
	float xhat[4];
	short encoder_alpha;
	short encoder_theta;
	float alphaR;
	float thetaR;
	float u;
	int set_point;
	float theta_des;
	unsigned long cycle_count;
} PlantParameters;

// Packet Structure for the FIFO queue
typedef struct QueuePacket{
	command_type command;
	operation_type operation;
	transfer_bits bytes;
	slave_select slave;
	unsigned int length;
	unsigned int data[4];
} QueuePacket;

// Global constants
#define pi		((float)3.14125926535)
#define Kr2d	((float)57.3018604308) 	//180./pi;        //radians to degrees
#define Kpot 	((float)-0.61429070078)	//-352.*pi/180/10;    //radians/V for pot
#define Kenc 	((float)0.001533818)	//pi/(2.*1024.);     //radians/count for encoder

// SPI Configuration Parameters Start Here
/* **MDR0 configuration data - the configuration byte is formed with***
   ***single segments taken from each group and ORing all together***/

//count modes
#define NQUAD           0x00    //non-quadrature mode (A = clock, B = direction)
#define QUADRX1         0x01    //X1 quadrature mode (one count per quadrature cycle)
#define QUADRX2         0x02    //X2 quadrature mode (two counts per quadrature cycle)
#define QUADRX4         0x03    //X4 quadrature mode (four counts per quadrature cycle)

//Running modes
#define FREE_RUN        0x00
#define SINGE_CYCLE     0x04    // (counter disabled with carry or borrow, re-enabled with
                                //  reset or load)
#define RANGE_LIMIT     0x08    // (up and down count-ranges are limited between DTR and zero,
                                //  respectively; counting freezes at these limits but resumes
                                //  when direction reverses)
#define MODULO_N        0x0C    //  modulo-n count mode (input count clock frequency is divided
                                //  by a factor of (n+1), where n = DTR, in both up and down
                                //  directions).

//Index modes
#define DISABLE_INDX    0x00    //index_disabled
#define INDX_LOADC      0x10    //index_load_CNTR
#define INDX_RESETC     0x20    //index_rest_CNTR
#define INDX_LOADO      0x30    //index_load_OL
#define ASYNCH_INDX     0x00    //asynchronous index
#define SYNCH_INDX      0x80    //synchronous index

//Clock filter modes
#define FILTER_1        0x00    //filter clock frequncy division factor 1
#define FILTER_2        0x80    //filter clock frequncy division factor 2

/* **MDR1 configuration data; any of these***
   ***data segments can bo ORed together***/

//Flag modes
#define NO_FLAGS        0x00    //all flags disabled
#define IDX_FLAG        0x10    //IDX flag
#define CMP_FLAG        0x20    //CMP flag
#define BW_FLAG         0x40    //BW flag
#define CY_FLAG         0x80    //CY flag

//1 to 4 bytes data-width
#define BYTE_4          0x00    //four byte mode
#define BYTE_3          0x01    //three byte mode
#define BYTE_2          0x02    //two byte mode
#define BYTE_1          0x03    //one byte mode

//Enable/disable counter
#define EN_CNTR         0x00    //counting enabled
#define DIS_CNTR        0x04    //counting disabled

/* LS7366R op-code list */
#define CLR_MDR0        0x08
#define CLR_MDR1        0x10
#define CLR_CNTR        0x20
#define CLR_STR         0x30
#define READ_MDR0       0x48
#define READ_MDR1       0x50
#define READ_CNTR       0x60
#define READ_OTR        0x68
#define READ_STR        0x70

#define WRITE_MDR1      0x90
#define WRITE_MDR0      0x88
#define WRITE_DTR       0x98
#define LOAD_CNTR       0xE0
#define LOAD_OTR        0xE4

// OVERRIDE_CONFIG_BITS for ADC and DAC
#define DAC_CONFIG_BITS  (0x3000)     //store 4-bit configuration bits to be sent to DAC
                                      //and 12-bit junk bits to be replaced by the function writeDAC()
#define ADC_CONFIG_BITS  (0x0001E000) //store 5-bit configuration bits to be sent to ADC
                                      //followed by 12-bits to be read from ADC

#endif /* TAIGA_RIP_PARAMETERS_H_ */
