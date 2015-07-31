// (c) Copyright 1995-2015 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:hls:FIFO_multiplexer:1.0
// IP Revision: 1506071506

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
TAIGA_FIFO_multiplexer_0_0 your_instance_name (
  .switch_select(switch_select),  // input wire [0 : 0] switch_select
  .rx_data_a(rx_data_a),          // input wire [31 : 0] rx_data_a
  .rx_ready_a(rx_ready_a),        // output wire [0 : 0] rx_ready_a
  .rx_valid_a(rx_valid_a),        // input wire [0 : 0] rx_valid_a
  .rx_tlast_a(rx_tlast_a),        // input wire [0 : 0] rx_tlast_a
  .rx_data_b(rx_data_b),          // input wire [31 : 0] rx_data_b
  .rx_ready_b(rx_ready_b),        // output wire [0 : 0] rx_ready_b
  .rx_valid_b(rx_valid_b),        // input wire [0 : 0] rx_valid_b
  .rx_tlast_b(rx_tlast_b),        // input wire [0 : 0] rx_tlast_b
  .rx_data(rx_data),              // output wire [31 : 0] rx_data
  .rx_ready(rx_ready),            // input wire [0 : 0] rx_ready
  .rx_valid(rx_valid),            // output wire [0 : 0] rx_valid
  .rx_tlast(rx_tlast),            // output wire [0 : 0] rx_tlast
  .tx_data_a(tx_data_a),          // output wire [31 : 0] tx_data_a
  .tx_ready_a(tx_ready_a),        // input wire [0 : 0] tx_ready_a
  .tx_valid_a(tx_valid_a),        // output wire [0 : 0] tx_valid_a
  .tx_tlast_a(tx_tlast_a),        // output wire [0 : 0] tx_tlast_a
  .tx_data_b(tx_data_b),          // output wire [31 : 0] tx_data_b
  .tx_ready_b(tx_ready_b),        // input wire [0 : 0] tx_ready_b
  .tx_valid_b(tx_valid_b),        // output wire [0 : 0] tx_valid_b
  .tx_tlast_b(tx_tlast_b),        // output wire [0 : 0] tx_tlast_b
  .tx_data(tx_data),              // input wire [31 : 0] tx_data
  .tx_ready(tx_ready),            // output wire [0 : 0] tx_ready
  .tx_valid(tx_valid),            // input wire [0 : 0] tx_valid
  .tx_tlast(tx_tlast)            // input wire [0 : 0] tx_tlast
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file TAIGA_FIFO_multiplexer_0_0.v when simulating
// the core, TAIGA_FIFO_multiplexer_0_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

