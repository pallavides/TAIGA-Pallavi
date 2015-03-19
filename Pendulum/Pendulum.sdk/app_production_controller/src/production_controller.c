/*
 * production_controller.c
 *
 *  Created on: Oct 8, 2014
 *      Author: teja
 */

#include "production_controller.h"
//#include "pendulum_system.h"
#include "utilities/axi_gpio.h"
#include "utilities/fifo_queue.h"


//float calculateKalmanControlSignal(ControlParameters *params);
void production_control_timer(xTimerHandle pxTimer);

/****************** Common Global variables for all ******************/
volatile unsigned sec1000; // This is updated 1000 times per second by interrupt handler
volatile float output_V,theta_R,alpha_R,theta_des;
volatile float thetaDot=0.,alphaDot=0.;

int temp;
float u;

//static ControlParameters plantParams;

void startProductionControl(){
	// Initialize xpre and xhat
	int i;
	for(i = 0; i < 4; ++i){
		//plantParams.xpre[i] = 0.;
		//plantParams.xhat[i] = 0.;
	}
	//plantParams.iteration = 0;

	xTimerHandle ProductionControlTimer = xTimerCreate((const signed char *)"Production Controller Timer",1,pdTRUE,(void *) NULL, production_control_timer);
	xTimerStart(ProductionControlTimer, 0);
}

void production_control_timer(xTimerHandle pxTimer){
	static bool state = true;
	set_led(LED3, state);
	state = !state;

	static int count = 3;

	//if(count < 22){
		enqueue(count);
		++count;
	//}
	/*if(plantParams.iteration > 10000)	return;

	set_led(LED3, true);

	plantParams.theta_des = getSetPoint()*pi/180;

	int enc1 = -encoderRead(SS_ENCODER_S) % 4096;
	plantParams.thetaR = enc1*Kenc;

	int enc2 = encoderRead(SS_ENCODER_P) % 4096;
	plantParams.alphaR = enc2*Kenc-pi;

	if((plantParams.alphaR >= 0 ? plantParams.alphaR:-plantParams.alphaR) < (45.*pi/180)){
		plantParams.u = -calculateKalmanControlSignal(&plantParams);
	}
	else plantParams.u = 0;

	writeDAC(plantParams.u);

	++plantParams.iteration;

	set_led(LED3, false);*/
}
