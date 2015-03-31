// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module fifo_dequeue_top (
s_axi_axi_fifo_AWADDR,
s_axi_axi_fifo_AWVALID,
s_axi_axi_fifo_AWREADY,
s_axi_axi_fifo_WDATA,
s_axi_axi_fifo_WSTRB,
s_axi_axi_fifo_WVALID,
s_axi_axi_fifo_WREADY,
s_axi_axi_fifo_BRESP,
s_axi_axi_fifo_BVALID,
s_axi_axi_fifo_BREADY,
s_axi_axi_fifo_ARADDR,
s_axi_axi_fifo_ARVALID,
s_axi_axi_fifo_ARREADY,
s_axi_axi_fifo_RDATA,
s_axi_axi_fifo_RRESP,
s_axi_axi_fifo_RVALID,
s_axi_axi_fifo_RREADY,
interrupt,
aresetn,
aclk,
fifo_data,
fifo_recv_enable,
fifo_recv_valid
);

parameter C_S_AXI_AXI_FIFO_ADDR_WIDTH = 5;
parameter C_S_AXI_AXI_FIFO_DATA_WIDTH = 32;
parameter RESET_ACTIVE_LOW = 1;

input [C_S_AXI_AXI_FIFO_ADDR_WIDTH - 1:0] s_axi_axi_fifo_AWADDR ;
input s_axi_axi_fifo_AWVALID ;
output s_axi_axi_fifo_AWREADY ;
input [C_S_AXI_AXI_FIFO_DATA_WIDTH - 1:0] s_axi_axi_fifo_WDATA ;
input [C_S_AXI_AXI_FIFO_DATA_WIDTH/8 - 1:0] s_axi_axi_fifo_WSTRB ;
input s_axi_axi_fifo_WVALID ;
output s_axi_axi_fifo_WREADY ;
output [2 - 1:0] s_axi_axi_fifo_BRESP ;
output s_axi_axi_fifo_BVALID ;
input s_axi_axi_fifo_BREADY ;
input [C_S_AXI_AXI_FIFO_ADDR_WIDTH - 1:0] s_axi_axi_fifo_ARADDR ;
input s_axi_axi_fifo_ARVALID ;
output s_axi_axi_fifo_ARREADY ;
output [C_S_AXI_AXI_FIFO_DATA_WIDTH - 1:0] s_axi_axi_fifo_RDATA ;
output [2 - 1:0] s_axi_axi_fifo_RRESP ;
output s_axi_axi_fifo_RVALID ;
input s_axi_axi_fifo_RREADY ;
output interrupt ;

input aresetn ;

input aclk ;

input [32 - 1:0] fifo_data ;
output [1 - 1:0] fifo_recv_enable ;
input [1 - 1:0] fifo_recv_valid ;


wire [C_S_AXI_AXI_FIFO_ADDR_WIDTH - 1:0] s_axi_axi_fifo_AWADDR;
wire s_axi_axi_fifo_AWVALID;
wire s_axi_axi_fifo_AWREADY;
wire [C_S_AXI_AXI_FIFO_DATA_WIDTH - 1:0] s_axi_axi_fifo_WDATA;
wire [C_S_AXI_AXI_FIFO_DATA_WIDTH/8 - 1:0] s_axi_axi_fifo_WSTRB;
wire s_axi_axi_fifo_WVALID;
wire s_axi_axi_fifo_WREADY;
wire [2 - 1:0] s_axi_axi_fifo_BRESP;
wire s_axi_axi_fifo_BVALID;
wire s_axi_axi_fifo_BREADY;
wire [C_S_AXI_AXI_FIFO_ADDR_WIDTH - 1:0] s_axi_axi_fifo_ARADDR;
wire s_axi_axi_fifo_ARVALID;
wire s_axi_axi_fifo_ARREADY;
wire [C_S_AXI_AXI_FIFO_DATA_WIDTH - 1:0] s_axi_axi_fifo_RDATA;
wire [2 - 1:0] s_axi_axi_fifo_RRESP;
wire s_axi_axi_fifo_RVALID;
wire s_axi_axi_fifo_RREADY;
wire interrupt;

wire aresetn;


wire sig_fifo_dequeue_ap_start;
wire sig_fifo_dequeue_ap_ready;
wire sig_fifo_dequeue_ap_done;
wire sig_fifo_dequeue_ap_idle;
wire [32 - 1:0] sig_fifo_dequeue_ap_return;

wire sig_fifo_dequeue_ap_rst;



fifo_dequeue fifo_dequeue_U(
    .ap_start(sig_fifo_dequeue_ap_start),
    .ap_ready(sig_fifo_dequeue_ap_ready),
    .ap_done(sig_fifo_dequeue_ap_done),
    .ap_idle(sig_fifo_dequeue_ap_idle),
    .ap_return(sig_fifo_dequeue_ap_return),
    .ap_rst(sig_fifo_dequeue_ap_rst),
    .ap_clk(aclk),
    .fifo_data(fifo_data),
    .fifo_recv_enable(fifo_recv_enable),
    .fifo_recv_valid(fifo_recv_valid)
);

fifo_dequeue_axi_fifo_if #(
    .C_ADDR_WIDTH(C_S_AXI_AXI_FIFO_ADDR_WIDTH),
    .C_DATA_WIDTH(C_S_AXI_AXI_FIFO_DATA_WIDTH))
fifo_dequeue_axi_fifo_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .I_ap_start(sig_fifo_dequeue_ap_start),
    .O_ap_ready(sig_fifo_dequeue_ap_ready),
    .O_ap_done(sig_fifo_dequeue_ap_done),
    .O_ap_idle(sig_fifo_dequeue_ap_idle),
    .O_ap_return(sig_fifo_dequeue_ap_return),
    .AWADDR(s_axi_axi_fifo_AWADDR),
    .AWVALID(s_axi_axi_fifo_AWVALID),
    .AWREADY(s_axi_axi_fifo_AWREADY),
    .WDATA(s_axi_axi_fifo_WDATA),
    .WSTRB(s_axi_axi_fifo_WSTRB),
    .WVALID(s_axi_axi_fifo_WVALID),
    .WREADY(s_axi_axi_fifo_WREADY),
    .BRESP(s_axi_axi_fifo_BRESP),
    .BVALID(s_axi_axi_fifo_BVALID),
    .BREADY(s_axi_axi_fifo_BREADY),
    .ARADDR(s_axi_axi_fifo_ARADDR),
    .ARVALID(s_axi_axi_fifo_ARVALID),
    .ARREADY(s_axi_axi_fifo_ARREADY),
    .RDATA(s_axi_axi_fifo_RDATA),
    .RRESP(s_axi_axi_fifo_RRESP),
    .RVALID(s_axi_axi_fifo_RVALID),
    .RREADY(s_axi_axi_fifo_RREADY),
    .interrupt(interrupt));

fifo_dequeue_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_fifo_dequeue_ap_rst),
    .din(aresetn));

endmodule
