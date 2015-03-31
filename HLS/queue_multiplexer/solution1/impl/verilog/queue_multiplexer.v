// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="queue_multiplexer,hls_ip_2014_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=0.000000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=35}" *)

module queue_multiplexer (
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

parameter    ap_true = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;

input   switch_select;
input  [31:0] rx_data_a;
output   rx_ready_a;
input   rx_valid_a;
input   rx_tlast_a;
input  [31:0] rx_data_b;
output   rx_ready_b;
input   rx_valid_b;
input   rx_tlast_b;
output  [31:0] rx_data;
input   rx_ready;
output   rx_valid;
output   rx_tlast;
output  [31:0] tx_data_a;
input   tx_ready_a;
output   tx_valid_a;
output   tx_tlast_a;
output  [31:0] tx_data_b;
input   tx_ready_b;
output   tx_valid_b;
output   tx_tlast_b;
input  [31:0] tx_data;
output   tx_ready;
input   tx_valid;
input   tx_tlast;

reg[31:0] rx_data;
reg rx_valid;
reg rx_tlast;
reg tx_ready;
wire   [0:0] switch_select_read_read_fu_74_p2;




/// rx_data assign process. ///
always @ (rx_data_a or rx_data_b or switch_select_read_read_fu_74_p2)
begin
    if (~(switch_select_read_read_fu_74_p2 == ap_const_lv1_0)) begin
        rx_data = rx_data_b;
    end else if ((switch_select_read_read_fu_74_p2 == ap_const_lv1_0)) begin
        rx_data = rx_data_a;
    end else begin
        rx_data = 'bx;
    end
end

/// rx_tlast assign process. ///
always @ (rx_tlast_a or rx_tlast_b or switch_select_read_read_fu_74_p2)
begin
    if (~(switch_select_read_read_fu_74_p2 == ap_const_lv1_0)) begin
        rx_tlast = rx_tlast_b;
    end else if ((switch_select_read_read_fu_74_p2 == ap_const_lv1_0)) begin
        rx_tlast = rx_tlast_a;
    end else begin
        rx_tlast = 'bx;
    end
end

/// rx_valid assign process. ///
always @ (rx_valid_a or rx_valid_b or switch_select_read_read_fu_74_p2)
begin
    if (~(switch_select_read_read_fu_74_p2 == ap_const_lv1_0)) begin
        rx_valid = rx_valid_b;
    end else if ((switch_select_read_read_fu_74_p2 == ap_const_lv1_0)) begin
        rx_valid = rx_valid_a;
    end else begin
        rx_valid = 'bx;
    end
end

/// tx_ready assign process. ///
always @ (tx_ready_a or tx_ready_b or switch_select_read_read_fu_74_p2)
begin
    if (~(switch_select_read_read_fu_74_p2 == ap_const_lv1_0)) begin
        tx_ready = tx_ready_b;
    end else if ((switch_select_read_read_fu_74_p2 == ap_const_lv1_0)) begin
        tx_ready = tx_ready_a;
    end else begin
        tx_ready = 'bx;
    end
end
assign rx_ready_a = rx_ready;
assign rx_ready_b = rx_ready;
assign switch_select_read_read_fu_74_p2 = switch_select;
assign tx_data_a = tx_data;
assign tx_data_b = tx_data;
assign tx_tlast_a = tx_tlast;
assign tx_tlast_b = tx_tlast;
assign tx_valid_a = tx_valid;
assign tx_valid_b = tx_valid;


endmodule //queue_multiplexer

