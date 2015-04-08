/*
 * monitor_plant.h
 *
 *  Created on: Apr 7, 2015
 *      Author: teja
 */

#ifndef MONITOR_PLANT_H_
#define MONITOR_PLANT_H_

#include "utilities/axi_gpio.h"
#include "taiga_pendulum_parameters.h"

#define THETA_GUARD		35

bool trivial_trigger_mechanism(PlantParameters* params);

bool prediction_trigger_mechanism(PlantParameters* params, unsigned int numIter);

bool classifier_trigger_mechanism(PlantParameters* params);

float calculateKalmanControlSignal(PlantParameters *params);

#endif /* MONITOR_PLANT_H_ */
