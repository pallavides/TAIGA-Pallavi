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

(* X_CORE_INFO = "FIFO_multiplexer,Vivado 2015.1" *)
(* CHECK_LICENSE_TYPE = "TAIGA_FIFO_multiplexer_0_0,FIFO_multiplexer,{}" *)
(* CORE_GENERATION_INFO = "TAIGA_FIFO_multiplexer_0_0,FIFO_multiplexer,{x_ipProduct=Vivado 2015.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=FIFO_multiplexer,x_ipVersion=1.0,x_ipCoreRevision=1506071506,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module TAIGA_FIFO_multiplexer_0_0 (
  switch_select,
  rx_data_a,
  rx_ready_a,
  rx_valid_a,
  rx_tlast_a,
  rx_data_b,
  rx_ready_b,
  rx_valid_b,
  rx_tlast_b,
  rx_data,
  rx_ready,
  rx_valid,
  rx_tlast,
  tx_data_a,
  tx_ready_a,
  tx_valid_a,
  tx_tlast_a,
  tx_data_b,
  tx_ready_b,
  tx_valid_b,
  tx_tlast_b,
  tx_data,
  tx_ready,
  tx_valid,
  tx_tlast
);

(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 switch_select DATA" *)
input wire [0 : 0] switch_select;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rx_data_a DATA" *)
input wire [31 : 0] rx_data_a;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rx_ready_a DATA" *)
output wire [0 : 0] rx_ready_a;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rx_valid_a DATA" *)
input wire [0 : 0] rx_valid_a;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rx_tlast_a DATA" *)
input wire [0 : 0] rx_tlast_a;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rx_data_b DATA" *)
input wire [31 : 0] rx_data_b;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rx_ready_b DATA" *)
output wire [0 : 0] rx_ready_b;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rx_valid_b DATA" *)
input wire [0 : 0] rx_valid_b;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rx_tlast_b DATA" *)
input wire [0 : 0] rx_tlast_b;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rx_data DATA" *)
output wire [31 : 0] rx_data;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rx_ready DATA" *)
input wire [0 : 0] rx_ready;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rx_valid DATA" *)
output wire [0 : 0] rx_valid;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 rx_tlast DATA" *)
output wire [0 : 0] rx_tlast;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_data_a DATA" *)
output wire [31 : 0] tx_data_a;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_ready_a DATA" *)
input wire [0 : 0] tx_ready_a;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_valid_a DATA" *)
output wire [0 : 0] tx_valid_a;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_tlast_a DATA" *)
output wire [0 : 0] tx_tlast_a;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_data_b DATA" *)
output wire [31 : 0] tx_data_b;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_ready_b DATA" *)
input wire [0 : 0] tx_ready_b;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_valid_b DATA" *)
output wire [0 : 0] tx_valid_b;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_tlast_b DATA" *)
output wire [0 : 0] tx_tlast_b;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_data DATA" *)
input wire [31 : 0] tx_data;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_ready DATA" *)
output wire [0 : 0] tx_ready;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_valid DATA" *)
input wire [0 : 0] tx_valid;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 tx_tlast DATA" *)
input wire [0 : 0] tx_tlast;

  FIFO_multiplexer inst (
    .switch_select(switch_select),
    .rx_data_a(rx_data_a),
    .rx_ready_a(rx_ready_a),
    .rx_valid_a(rx_valid_a),
    .rx_tlast_a(rx_tlast_a),
    .rx_data_b(rx_data_b),
    .rx_ready_b(rx_ready_b),
    .rx_valid_b(rx_valid_b),
    .rx_tlast_b(rx_tlast_b),
    .rx_data(rx_data),
    .rx_ready(rx_ready),
    .rx_valid(rx_valid),
    .rx_tlast(rx_tlast),
    .tx_data_a(tx_data_a),
    .tx_ready_a(tx_ready_a),
    .tx_valid_a(tx_valid_a),
    .tx_tlast_a(tx_tlast_a),
    .tx_data_b(tx_data_b),
    .tx_ready_b(tx_ready_b),
    .tx_valid_b(tx_valid_b),
    .tx_tlast_b(tx_tlast_b),
    .tx_data(tx_data),
    .tx_ready(tx_ready),
    .tx_valid(tx_valid),
    .tx_tlast(tx_tlast)
  );
endmodule
