#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("switch_select", 1, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("rx_data_a", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("rx_ready_a", 1, hls_out, 2, "ap_none", "out_data", 1),
	Port_Property("rx_valid_a", 1, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("rx_data_b", 32, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("rx_ready_b", 1, hls_out, 5, "ap_none", "out_data", 1),
	Port_Property("rx_valid_b", 1, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("rx_data", 32, hls_out, 7, "ap_none", "out_data", 1),
	Port_Property("rx_ready", 1, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("rx_valid", 1, hls_out, 9, "ap_none", "out_data", 1),
	Port_Property("tx_data_a", 32, hls_out, 10, "ap_none", "out_data", 1),
	Port_Property("tx_ready_a", 1, hls_in, 11, "ap_none", "in_data", 1),
	Port_Property("tx_valid_a", 1, hls_out, 12, "ap_none", "out_data", 1),
	Port_Property("tx_data_b", 32, hls_out, 13, "ap_none", "out_data", 1),
	Port_Property("tx_ready_b", 1, hls_in, 14, "ap_none", "in_data", 1),
	Port_Property("tx_valid_b", 1, hls_out, 15, "ap_none", "out_data", 1),
	Port_Property("tx_data", 32, hls_in, 16, "ap_none", "in_data", 1),
	Port_Property("tx_ready", 1, hls_out, 17, "ap_none", "out_data", 1),
	Port_Property("tx_valid", 1, hls_in, 18, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "queue_multiplexer";
