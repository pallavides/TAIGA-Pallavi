#include <stdio.h>

void FIFO_multiplexer(
	volatile bool *switch_select,
	volatile int *rx_data_a,
	volatile bool *rx_ready_a,
	volatile bool *rx_valid_a,
	volatile bool *rx_tlast_a,
	volatile int *rx_data_b,
	volatile bool *rx_ready_b,
	volatile bool *rx_valid_b,
	volatile bool *rx_tlast_b,
	volatile int *rx_data,
	volatile bool *rx_ready,
	volatile bool *rx_valid,
	volatile bool *rx_tlast,
	volatile int *tx_data_a,
	volatile bool *tx_ready_a,
	volatile bool *tx_valid_a,
	volatile bool *tx_tlast_a,
	volatile int *tx_data_b,
	volatile bool *tx_ready_b,
	volatile bool *tx_valid_b,
	volatile bool *tx_tlast_b,
	volatile int *tx_data,
	volatile bool *tx_ready,
	volatile bool *tx_valid,
	volatile bool *tx_tlast
){

#pragma HLS INTERFACE ap_none port=switch_select

#pragma HLS INTERFACE ap_none port=rx_data_a
#pragma HLS INTERFACE ap_none port=rx_ready_a
#pragma HLS INTERFACE ap_none port=rx_valid_a
#pragma HLS INTERFACE ap_none port=rx_tlast_a
#pragma HLS INTERFACE ap_none port=rx_data_b
#pragma HLS INTERFACE ap_none port=rx_ready_b
#pragma HLS INTERFACE ap_none port=rx_valid_b
#pragma HLS INTERFACE ap_none port=rx_tlast_b
#pragma HLS INTERFACE ap_none port=rx_data
#pragma HLS INTERFACE ap_none port=rx_ready
#pragma HLS INTERFACE ap_none port=rx_valid
#pragma HLS INTERFACE ap_none port=rx_tlast

#pragma HLS INTERFACE ap_none port=tx_data_a
#pragma HLS INTERFACE ap_none port=tx_ready_a
#pragma HLS INTERFACE ap_none port=tx_valid_a
#pragma HLS INTERFACE ap_none port=tx_tlast_a
#pragma HLS INTERFACE ap_none port=tx_data_b
#pragma HLS INTERFACE ap_none port=tx_ready_b
#pragma HLS INTERFACE ap_none port=tx_valid_b
#pragma HLS INTERFACE ap_none port=tx_tlast_b
#pragma HLS INTERFACE ap_none port=tx_data
#pragma HLS INTERFACE ap_none port=tx_ready
#pragma HLS INTERFACE ap_none port=tx_valid
#pragma HLS INTERFACE ap_none port=tx_tlast

#pragma HLS interface ap_ctrl_none port=return

	if(*switch_select){
		*rx_data = *rx_data_b;
		*rx_valid = *rx_valid_b;
		*rx_ready_b = *rx_ready;
		*rx_tlast = *rx_tlast_b;

		*tx_ready = *tx_ready_b;

		*tx_data_b = *tx_data;
		*tx_valid_b = *tx_valid;
		*tx_tlast_b = *tx_tlast;

		*rx_ready_a = false;

		*tx_data_a = 0;
		*tx_valid_a = false;
		*tx_tlast_a = false;
	}
	else{
		*rx_data = *rx_data_a;
		*rx_valid = *rx_valid_a;
		*rx_ready_a = *rx_ready;
		*rx_tlast = *rx_tlast_a;

		*tx_ready = *tx_ready_a;

		*tx_data_a = *tx_data;
		*tx_valid_a = *tx_valid;
		*tx_tlast_a = *tx_tlast;

		*rx_ready_b = false;

		*tx_data_b = 0;
		*tx_valid_b = false;
		*tx_tlast_b = false;
	}

}
