/*
 * monitor_supervisor.h
 *
 *  Created on: Apr 8, 2015
 *      Author: teja
 */

#ifndef MONITOR_SUPERVISOR_H_
#define MONITOR_SUPERVISOR_H_

void supervisor_send_state_vector(float stateVector[4]);

void supervisor_send_tail(float u);

#endif /* MONITOR_SUPERVISOR_H_ */
