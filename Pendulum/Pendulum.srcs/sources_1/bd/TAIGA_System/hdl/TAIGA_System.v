//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
//Date        : Tue Mar 31 18:04:55 2015
//Host        : CRS running 64-bit Ubuntu 14.04.2 LTS
//Command     : generate_target TAIGA_System.bd
//Design      : TAIGA_System
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TAIGA_System
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    gpio_btn_tri_i,
    gpio_debug_ioi_tri_o,
    gpio_led_backup_tri_o,
    gpio_led_ioi_tri_o,
    gpio_led_production_tri_o,
    gpio_sw_tri_i,
    gpio_trigger,
    ioi_uart_rx,
    ioi_uart_tx,
    spi_plant_miso_i,
    spi_plant_mosi_o,
    spi_plant_sck_o,
    spi_plant_ss_o);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [3:0]gpio_btn_tri_i;
  output [3:0]gpio_debug_ioi_tri_o;
  output [0:0]gpio_led_backup_tri_o;
  output [0:0]gpio_led_ioi_tri_o;
  output [0:0]gpio_led_production_tri_o;
  input [3:0]gpio_sw_tri_i;
  output [0:0]gpio_trigger;
  input ioi_uart_rx;
  output ioi_uart_tx;
  input spi_plant_miso_i;
  output spi_plant_mosi_o;
  output spi_plant_sck_o;
  output [3:0]spi_plant_ss_o;

  wire GND_1;
  wire [31:0]IO_Intermediary_axi_dp_ARADDR;
  wire [2:0]IO_Intermediary_axi_dp_ARPROT;
  wire [0:0]IO_Intermediary_axi_dp_ARREADY;
  wire IO_Intermediary_axi_dp_ARVALID;
  wire [31:0]IO_Intermediary_axi_dp_AWADDR;
  wire [2:0]IO_Intermediary_axi_dp_AWPROT;
  wire [0:0]IO_Intermediary_axi_dp_AWREADY;
  wire IO_Intermediary_axi_dp_AWVALID;
  wire IO_Intermediary_axi_dp_BREADY;
  wire [1:0]IO_Intermediary_axi_dp_BRESP;
  wire [0:0]IO_Intermediary_axi_dp_BVALID;
  wire [31:0]IO_Intermediary_axi_dp_RDATA;
  wire IO_Intermediary_axi_dp_RREADY;
  wire [1:0]IO_Intermediary_axi_dp_RRESP;
  wire [0:0]IO_Intermediary_axi_dp_RVALID;
  wire [31:0]IO_Intermediary_axi_dp_WDATA;
  wire [0:0]IO_Intermediary_axi_dp_WREADY;
  wire [3:0]IO_Intermediary_axi_dp_WSTRB;
  wire IO_Intermediary_axi_dp_WVALID;
  wire [6:0]IO_Intermediary_axi_periph_M01_AXI_ARADDR;
  wire IO_Intermediary_axi_periph_M01_AXI_ARREADY;
  wire IO_Intermediary_axi_periph_M01_AXI_ARVALID;
  wire [6:0]IO_Intermediary_axi_periph_M01_AXI_AWADDR;
  wire IO_Intermediary_axi_periph_M01_AXI_AWREADY;
  wire IO_Intermediary_axi_periph_M01_AXI_AWVALID;
  wire IO_Intermediary_axi_periph_M01_AXI_BREADY;
  wire [1:0]IO_Intermediary_axi_periph_M01_AXI_BRESP;
  wire IO_Intermediary_axi_periph_M01_AXI_BVALID;
  wire [31:0]IO_Intermediary_axi_periph_M01_AXI_RDATA;
  wire IO_Intermediary_axi_periph_M01_AXI_RREADY;
  wire [1:0]IO_Intermediary_axi_periph_M01_AXI_RRESP;
  wire IO_Intermediary_axi_periph_M01_AXI_RVALID;
  wire [31:0]IO_Intermediary_axi_periph_M01_AXI_WDATA;
  wire IO_Intermediary_axi_periph_M01_AXI_WREADY;
  wire [3:0]IO_Intermediary_axi_periph_M01_AXI_WSTRB;
  wire IO_Intermediary_axi_periph_M01_AXI_WVALID;
  wire IO_Intermediary_debug_CAPTURE;
  wire IO_Intermediary_debug_CLK;
  wire [0:7]IO_Intermediary_debug_REG_EN;
  wire IO_Intermediary_debug_RST;
  wire IO_Intermediary_debug_SHIFT;
  wire IO_Intermediary_debug_TDI;
  wire IO_Intermediary_debug_TDO;
  wire IO_Intermediary_debug_UPDATE;
  wire [0:31]IO_Intermediary_dlmb_1_ABUS;
  wire IO_Intermediary_dlmb_1_ADDRSTROBE;
  wire [0:3]IO_Intermediary_dlmb_1_BE;
  wire IO_Intermediary_dlmb_1_CE;
  wire [0:31]IO_Intermediary_dlmb_1_READDBUS;
  wire IO_Intermediary_dlmb_1_READSTROBE;
  wire IO_Intermediary_dlmb_1_READY;
  wire IO_Intermediary_dlmb_1_UE;
  wire IO_Intermediary_dlmb_1_WAIT;
  wire [0:31]IO_Intermediary_dlmb_1_WRITEDBUS;
  wire IO_Intermediary_dlmb_1_WRITESTROBE;
  wire [0:31]IO_Intermediary_ilmb_1_ABUS;
  wire IO_Intermediary_ilmb_1_ADDRSTROBE;
  wire IO_Intermediary_ilmb_1_CE;
  wire [0:31]IO_Intermediary_ilmb_1_READDBUS;
  wire IO_Intermediary_ilmb_1_READSTROBE;
  wire IO_Intermediary_ilmb_1_READY;
  wire IO_Intermediary_ilmb_1_UE;
  wire IO_Intermediary_ilmb_1_WAIT;
  wire [8:0]IO_Intermediary_intc_axi_ARADDR;
  wire IO_Intermediary_intc_axi_ARREADY;
  wire IO_Intermediary_intc_axi_ARVALID;
  wire [8:0]IO_Intermediary_intc_axi_AWADDR;
  wire IO_Intermediary_intc_axi_AWREADY;
  wire IO_Intermediary_intc_axi_AWVALID;
  wire IO_Intermediary_intc_axi_BREADY;
  wire [1:0]IO_Intermediary_intc_axi_BRESP;
  wire IO_Intermediary_intc_axi_BVALID;
  wire [31:0]IO_Intermediary_intc_axi_RDATA;
  wire IO_Intermediary_intc_axi_RREADY;
  wire [1:0]IO_Intermediary_intc_axi_RRESP;
  wire IO_Intermediary_intc_axi_RVALID;
  wire [31:0]IO_Intermediary_intc_axi_WDATA;
  wire IO_Intermediary_intc_axi_WREADY;
  wire [3:0]IO_Intermediary_intc_axi_WSTRB;
  wire IO_Intermediary_intc_axi_WVALID;
  wire [0:1]IO_Intermediary_interrupt_ACK;
  wire [31:0]IO_Intermediary_interrupt_ADDRESS;
  wire IO_Intermediary_interrupt_INTERRUPT;
  wire [1:0]IO_Intermediary_intr;
  wire VCC_1;
  wire axi_fifo_IOI_dequeue_axi_str_rxd_tready;
  wire axi_fifo_IOI_dequeue_interrupt;
  wire [31:0]axi_fifo_IOI_enqueue_axi_str_txd_tdata;
  wire axi_fifo_IOI_enqueue_axi_str_txd_tvalid;
  wire [31:0]axi_fifo_backup_dequeue_AXI_STR_TXD_TDATA;
  wire axi_fifo_backup_dequeue_AXI_STR_TXD_TREADY;
  wire axi_fifo_backup_dequeue_AXI_STR_TXD_TVALID;
  wire [31:0]axi_fifo_production_AXI_STR_TXD_TDATA;
  wire axi_fifo_production_AXI_STR_TXD_TREADY;
  wire axi_fifo_production_AXI_STR_TXD_TVALID;
  wire [3:0]axi_gpio_IOI_in_GPIO2_TRI_I;
  wire [3:0]axi_gpio_IOI_in_GPIO_TRI_I;
  wire [3:0]axi_gpio_IOI_out_GPIO2_TRI_O;
  wire [0:0]axi_gpio_IOI_out_GPIO_TRI_O;
  wire [0:0]axi_gpio_backup_controller_out_GPIO_TRI_O;
  wire [0:0]axi_gpio_production_controller_out_GPIO_TRI_O;
  wire [0:0]axi_gpio_trigger_gpio_io_o;
  wire [8:0]axi_periph_IOI_M02_AXI_ARADDR;
  wire axi_periph_IOI_M02_AXI_ARREADY;
  wire axi_periph_IOI_M02_AXI_ARVALID;
  wire [8:0]axi_periph_IOI_M02_AXI_AWADDR;
  wire axi_periph_IOI_M02_AXI_AWREADY;
  wire axi_periph_IOI_M02_AXI_AWVALID;
  wire axi_periph_IOI_M02_AXI_BREADY;
  wire [1:0]axi_periph_IOI_M02_AXI_BRESP;
  wire axi_periph_IOI_M02_AXI_BVALID;
  wire [31:0]axi_periph_IOI_M02_AXI_RDATA;
  wire axi_periph_IOI_M02_AXI_RREADY;
  wire [1:0]axi_periph_IOI_M02_AXI_RRESP;
  wire axi_periph_IOI_M02_AXI_RVALID;
  wire [31:0]axi_periph_IOI_M02_AXI_WDATA;
  wire axi_periph_IOI_M02_AXI_WREADY;
  wire [3:0]axi_periph_IOI_M02_AXI_WSTRB;
  wire axi_periph_IOI_M02_AXI_WVALID;
  wire [8:0]axi_periph_IOI_M03_AXI_ARADDR;
  wire axi_periph_IOI_M03_AXI_ARREADY;
  wire axi_periph_IOI_M03_AXI_ARVALID;
  wire [8:0]axi_periph_IOI_M03_AXI_AWADDR;
  wire axi_periph_IOI_M03_AXI_AWREADY;
  wire axi_periph_IOI_M03_AXI_AWVALID;
  wire axi_periph_IOI_M03_AXI_BREADY;
  wire [1:0]axi_periph_IOI_M03_AXI_BRESP;
  wire axi_periph_IOI_M03_AXI_BVALID;
  wire [31:0]axi_periph_IOI_M03_AXI_RDATA;
  wire axi_periph_IOI_M03_AXI_RREADY;
  wire [1:0]axi_periph_IOI_M03_AXI_RRESP;
  wire axi_periph_IOI_M03_AXI_RVALID;
  wire [31:0]axi_periph_IOI_M03_AXI_WDATA;
  wire axi_periph_IOI_M03_AXI_WREADY;
  wire [3:0]axi_periph_IOI_M03_AXI_WSTRB;
  wire axi_periph_IOI_M03_AXI_WVALID;
  wire [3:0]axi_periph_IOI_M04_AXI_ARADDR;
  wire axi_periph_IOI_M04_AXI_ARREADY;
  wire axi_periph_IOI_M04_AXI_ARVALID;
  wire [3:0]axi_periph_IOI_M04_AXI_AWADDR;
  wire axi_periph_IOI_M04_AXI_AWREADY;
  wire axi_periph_IOI_M04_AXI_AWVALID;
  wire axi_periph_IOI_M04_AXI_BREADY;
  wire [1:0]axi_periph_IOI_M04_AXI_BRESP;
  wire axi_periph_IOI_M04_AXI_BVALID;
  wire [31:0]axi_periph_IOI_M04_AXI_RDATA;
  wire axi_periph_IOI_M04_AXI_RREADY;
  wire [1:0]axi_periph_IOI_M04_AXI_RRESP;
  wire axi_periph_IOI_M04_AXI_RVALID;
  wire [31:0]axi_periph_IOI_M04_AXI_WDATA;
  wire axi_periph_IOI_M04_AXI_WREADY;
  wire [3:0]axi_periph_IOI_M04_AXI_WSTRB;
  wire axi_periph_IOI_M04_AXI_WVALID;
  wire [31:0]axi_periph_IOI_M05_AXI_ARADDR;
  wire axi_periph_IOI_M05_AXI_ARREADY;
  wire axi_periph_IOI_M05_AXI_ARVALID;
  wire [31:0]axi_periph_IOI_M05_AXI_AWADDR;
  wire axi_periph_IOI_M05_AXI_AWREADY;
  wire axi_periph_IOI_M05_AXI_AWVALID;
  wire axi_periph_IOI_M05_AXI_BREADY;
  wire [1:0]axi_periph_IOI_M05_AXI_BRESP;
  wire axi_periph_IOI_M05_AXI_BVALID;
  wire [31:0]axi_periph_IOI_M05_AXI_RDATA;
  wire axi_periph_IOI_M05_AXI_RREADY;
  wire [1:0]axi_periph_IOI_M05_AXI_RRESP;
  wire axi_periph_IOI_M05_AXI_RVALID;
  wire [31:0]axi_periph_IOI_M05_AXI_WDATA;
  wire axi_periph_IOI_M05_AXI_WREADY;
  wire [3:0]axi_periph_IOI_M05_AXI_WSTRB;
  wire axi_periph_IOI_M05_AXI_WVALID;
  wire [31:0]axi_periph_IOI_M06_AXI_ARADDR;
  wire axi_periph_IOI_M06_AXI_ARREADY;
  wire axi_periph_IOI_M06_AXI_ARVALID;
  wire [31:0]axi_periph_IOI_M06_AXI_AWADDR;
  wire axi_periph_IOI_M06_AXI_AWREADY;
  wire axi_periph_IOI_M06_AXI_AWVALID;
  wire axi_periph_IOI_M06_AXI_BREADY;
  wire [1:0]axi_periph_IOI_M06_AXI_BRESP;
  wire axi_periph_IOI_M06_AXI_BVALID;
  wire [31:0]axi_periph_IOI_M06_AXI_RDATA;
  wire axi_periph_IOI_M06_AXI_RREADY;
  wire [1:0]axi_periph_IOI_M06_AXI_RRESP;
  wire axi_periph_IOI_M06_AXI_RVALID;
  wire [31:0]axi_periph_IOI_M06_AXI_WDATA;
  wire axi_periph_IOI_M06_AXI_WREADY;
  wire [3:0]axi_periph_IOI_M06_AXI_WSTRB;
  wire axi_periph_IOI_M06_AXI_WVALID;
  wire [8:0]axi_periph_IOI_M07_AXI_ARADDR;
  wire axi_periph_IOI_M07_AXI_ARREADY;
  wire axi_periph_IOI_M07_AXI_ARVALID;
  wire [8:0]axi_periph_IOI_M07_AXI_AWADDR;
  wire axi_periph_IOI_M07_AXI_AWREADY;
  wire axi_periph_IOI_M07_AXI_AWVALID;
  wire axi_periph_IOI_M07_AXI_BREADY;
  wire [1:0]axi_periph_IOI_M07_AXI_BRESP;
  wire axi_periph_IOI_M07_AXI_BVALID;
  wire [31:0]axi_periph_IOI_M07_AXI_RDATA;
  wire axi_periph_IOI_M07_AXI_RREADY;
  wire [1:0]axi_periph_IOI_M07_AXI_RRESP;
  wire axi_periph_IOI_M07_AXI_RVALID;
  wire [31:0]axi_periph_IOI_M07_AXI_WDATA;
  wire axi_periph_IOI_M07_AXI_WREADY;
  wire [3:0]axi_periph_IOI_M07_AXI_WSTRB;
  wire axi_periph_IOI_M07_AXI_WVALID;
  wire [3:0]axi_periph_IOI_M08_AXI_ARADDR;
  wire axi_periph_IOI_M08_AXI_ARREADY;
  wire axi_periph_IOI_M08_AXI_ARVALID;
  wire [3:0]axi_periph_IOI_M08_AXI_AWADDR;
  wire axi_periph_IOI_M08_AXI_AWREADY;
  wire axi_periph_IOI_M08_AXI_AWVALID;
  wire axi_periph_IOI_M08_AXI_BREADY;
  wire [1:0]axi_periph_IOI_M08_AXI_BRESP;
  wire axi_periph_IOI_M08_AXI_BVALID;
  wire [31:0]axi_periph_IOI_M08_AXI_RDATA;
  wire axi_periph_IOI_M08_AXI_RREADY;
  wire [1:0]axi_periph_IOI_M08_AXI_RRESP;
  wire axi_periph_IOI_M08_AXI_RVALID;
  wire [31:0]axi_periph_IOI_M08_AXI_WDATA;
  wire axi_periph_IOI_M08_AXI_WREADY;
  wire [3:0]axi_periph_IOI_M08_AXI_WSTRB;
  wire axi_periph_IOI_M08_AXI_WVALID;
  wire [4:0]axi_periph_backup_controller_M01_AXI_ARADDR;
  wire axi_periph_backup_controller_M01_AXI_ARREADY;
  wire axi_periph_backup_controller_M01_AXI_ARVALID;
  wire [4:0]axi_periph_backup_controller_M01_AXI_AWADDR;
  wire axi_periph_backup_controller_M01_AXI_AWREADY;
  wire axi_periph_backup_controller_M01_AXI_AWVALID;
  wire axi_periph_backup_controller_M01_AXI_BREADY;
  wire [1:0]axi_periph_backup_controller_M01_AXI_BRESP;
  wire axi_periph_backup_controller_M01_AXI_BVALID;
  wire [31:0]axi_periph_backup_controller_M01_AXI_RDATA;
  wire axi_periph_backup_controller_M01_AXI_RREADY;
  wire [1:0]axi_periph_backup_controller_M01_AXI_RRESP;
  wire axi_periph_backup_controller_M01_AXI_RVALID;
  wire [31:0]axi_periph_backup_controller_M01_AXI_WDATA;
  wire axi_periph_backup_controller_M01_AXI_WREADY;
  wire [3:0]axi_periph_backup_controller_M01_AXI_WSTRB;
  wire axi_periph_backup_controller_M01_AXI_WVALID;
  wire [8:0]axi_periph_backup_controller_M02_AXI_ARADDR;
  wire axi_periph_backup_controller_M02_AXI_ARREADY;
  wire axi_periph_backup_controller_M02_AXI_ARVALID;
  wire [8:0]axi_periph_backup_controller_M02_AXI_AWADDR;
  wire axi_periph_backup_controller_M02_AXI_AWREADY;
  wire axi_periph_backup_controller_M02_AXI_AWVALID;
  wire axi_periph_backup_controller_M02_AXI_BREADY;
  wire [1:0]axi_periph_backup_controller_M02_AXI_BRESP;
  wire axi_periph_backup_controller_M02_AXI_BVALID;
  wire [31:0]axi_periph_backup_controller_M02_AXI_RDATA;
  wire axi_periph_backup_controller_M02_AXI_RREADY;
  wire [1:0]axi_periph_backup_controller_M02_AXI_RRESP;
  wire axi_periph_backup_controller_M02_AXI_RVALID;
  wire [31:0]axi_periph_backup_controller_M02_AXI_WDATA;
  wire axi_periph_backup_controller_M02_AXI_WREADY;
  wire [3:0]axi_periph_backup_controller_M02_AXI_WSTRB;
  wire axi_periph_backup_controller_M02_AXI_WVALID;
  wire [31:0]axi_periph_backup_controller_M03_AXI_ARADDR;
  wire axi_periph_backup_controller_M03_AXI_ARREADY;
  wire [0:0]axi_periph_backup_controller_M03_AXI_ARVALID;
  wire [31:0]axi_periph_backup_controller_M03_AXI_AWADDR;
  wire axi_periph_backup_controller_M03_AXI_AWREADY;
  wire [0:0]axi_periph_backup_controller_M03_AXI_AWVALID;
  wire [0:0]axi_periph_backup_controller_M03_AXI_BREADY;
  wire [1:0]axi_periph_backup_controller_M03_AXI_BRESP;
  wire axi_periph_backup_controller_M03_AXI_BVALID;
  wire [31:0]axi_periph_backup_controller_M03_AXI_RDATA;
  wire [0:0]axi_periph_backup_controller_M03_AXI_RREADY;
  wire [1:0]axi_periph_backup_controller_M03_AXI_RRESP;
  wire axi_periph_backup_controller_M03_AXI_RVALID;
  wire [31:0]axi_periph_backup_controller_M03_AXI_WDATA;
  wire axi_periph_backup_controller_M03_AXI_WREADY;
  wire [3:0]axi_periph_backup_controller_M03_AXI_WSTRB;
  wire [0:0]axi_periph_backup_controller_M03_AXI_WVALID;
  wire [8:0]axi_periph_production_controller_M00_AXI_ARADDR;
  wire axi_periph_production_controller_M00_AXI_ARREADY;
  wire axi_periph_production_controller_M00_AXI_ARVALID;
  wire [8:0]axi_periph_production_controller_M00_AXI_AWADDR;
  wire axi_periph_production_controller_M00_AXI_AWREADY;
  wire axi_periph_production_controller_M00_AXI_AWVALID;
  wire axi_periph_production_controller_M00_AXI_BREADY;
  wire [1:0]axi_periph_production_controller_M00_AXI_BRESP;
  wire axi_periph_production_controller_M00_AXI_BVALID;
  wire [31:0]axi_periph_production_controller_M00_AXI_RDATA;
  wire axi_periph_production_controller_M00_AXI_RREADY;
  wire [1:0]axi_periph_production_controller_M00_AXI_RRESP;
  wire axi_periph_production_controller_M00_AXI_RVALID;
  wire [31:0]axi_periph_production_controller_M00_AXI_WDATA;
  wire axi_periph_production_controller_M00_AXI_WREADY;
  wire [3:0]axi_periph_production_controller_M00_AXI_WSTRB;
  wire axi_periph_production_controller_M00_AXI_WVALID;
  wire [31:0]axi_periph_production_controller_M01_AXI_ARADDR;
  wire axi_periph_production_controller_M01_AXI_ARREADY;
  wire [0:0]axi_periph_production_controller_M01_AXI_ARVALID;
  wire [31:0]axi_periph_production_controller_M01_AXI_AWADDR;
  wire axi_periph_production_controller_M01_AXI_AWREADY;
  wire [0:0]axi_periph_production_controller_M01_AXI_AWVALID;
  wire [0:0]axi_periph_production_controller_M01_AXI_BREADY;
  wire [1:0]axi_periph_production_controller_M01_AXI_BRESP;
  wire axi_periph_production_controller_M01_AXI_BVALID;
  wire [31:0]axi_periph_production_controller_M01_AXI_RDATA;
  wire [0:0]axi_periph_production_controller_M01_AXI_RREADY;
  wire [1:0]axi_periph_production_controller_M01_AXI_RRESP;
  wire axi_periph_production_controller_M01_AXI_RVALID;
  wire [31:0]axi_periph_production_controller_M01_AXI_WDATA;
  wire axi_periph_production_controller_M01_AXI_WREADY;
  wire [3:0]axi_periph_production_controller_M01_AXI_WSTRB;
  wire [0:0]axi_periph_production_controller_M01_AXI_WVALID;
  wire axi_quad_spi_plant_io0_o;
  wire axi_quad_spi_plant_sck_o;
  wire [3:0]axi_quad_spi_plant_ss_o;
  wire axi_supervisory_uart_tx;
  wire axi_timer_backup_controller_interrupt;
  wire axi_wdt_IOI_wdt_interrupt;
  wire backup_controller_Clk;
  wire [31:0]backup_controller_axi_dp_ARADDR;
  wire [2:0]backup_controller_axi_dp_ARPROT;
  wire [0:0]backup_controller_axi_dp_ARREADY;
  wire backup_controller_axi_dp_ARVALID;
  wire [31:0]backup_controller_axi_dp_AWADDR;
  wire [2:0]backup_controller_axi_dp_AWPROT;
  wire [0:0]backup_controller_axi_dp_AWREADY;
  wire backup_controller_axi_dp_AWVALID;
  wire backup_controller_axi_dp_BREADY;
  wire [1:0]backup_controller_axi_dp_BRESP;
  wire [0:0]backup_controller_axi_dp_BVALID;
  wire [31:0]backup_controller_axi_dp_RDATA;
  wire backup_controller_axi_dp_RREADY;
  wire [1:0]backup_controller_axi_dp_RRESP;
  wire [0:0]backup_controller_axi_dp_RVALID;
  wire [31:0]backup_controller_axi_dp_WDATA;
  wire [0:0]backup_controller_axi_dp_WREADY;
  wire [3:0]backup_controller_axi_dp_WSTRB;
  wire backup_controller_axi_dp_WVALID;
  wire backup_controller_debug_CAPTURE;
  wire backup_controller_debug_CLK;
  wire [0:7]backup_controller_debug_REG_EN;
  wire backup_controller_debug_RST;
  wire backup_controller_debug_SHIFT;
  wire backup_controller_debug_TDI;
  wire backup_controller_debug_TDO;
  wire backup_controller_debug_UPDATE;
  wire [0:31]backup_controller_dlmb_1_ABUS;
  wire backup_controller_dlmb_1_ADDRSTROBE;
  wire [0:3]backup_controller_dlmb_1_BE;
  wire backup_controller_dlmb_1_CE;
  wire [0:31]backup_controller_dlmb_1_READDBUS;
  wire backup_controller_dlmb_1_READSTROBE;
  wire backup_controller_dlmb_1_READY;
  wire backup_controller_dlmb_1_UE;
  wire backup_controller_dlmb_1_WAIT;
  wire [0:31]backup_controller_dlmb_1_WRITEDBUS;
  wire backup_controller_dlmb_1_WRITESTROBE;
  wire [0:31]backup_controller_ilmb_1_ABUS;
  wire backup_controller_ilmb_1_ADDRSTROBE;
  wire backup_controller_ilmb_1_CE;
  wire [0:31]backup_controller_ilmb_1_READDBUS;
  wire backup_controller_ilmb_1_READSTROBE;
  wire backup_controller_ilmb_1_READY;
  wire backup_controller_ilmb_1_UE;
  wire backup_controller_ilmb_1_WAIT;
  wire [8:0]backup_controller_intc_axi_ARADDR;
  wire backup_controller_intc_axi_ARREADY;
  wire backup_controller_intc_axi_ARVALID;
  wire [8:0]backup_controller_intc_axi_AWADDR;
  wire backup_controller_intc_axi_AWREADY;
  wire backup_controller_intc_axi_AWVALID;
  wire backup_controller_intc_axi_BREADY;
  wire [1:0]backup_controller_intc_axi_BRESP;
  wire backup_controller_intc_axi_BVALID;
  wire [31:0]backup_controller_intc_axi_RDATA;
  wire backup_controller_intc_axi_RREADY;
  wire [1:0]backup_controller_intc_axi_RRESP;
  wire backup_controller_intc_axi_RVALID;
  wire [31:0]backup_controller_intc_axi_WDATA;
  wire backup_controller_intc_axi_WREADY;
  wire [3:0]backup_controller_intc_axi_WSTRB;
  wire backup_controller_intc_axi_WVALID;
  wire [0:1]backup_controller_interrupt_ACK;
  wire [31:0]backup_controller_interrupt_ADDRESS;
  wire backup_controller_interrupt_INTERRUPT;
  wire [31:0]fifo_IOI_to_backup_M_AXIS_TDATA;
  wire fifo_IOI_to_backup_M_AXIS_TREADY;
  wire fifo_IOI_to_backup_M_AXIS_TVALID;
  wire fifo_IOI_to_backup_s_axis_tready;
  wire [31:0]fifo_IOI_to_production_M_AXIS_TDATA;
  wire fifo_IOI_to_production_M_AXIS_TREADY;
  wire fifo_IOI_to_production_M_AXIS_TVALID;
  wire fifo_IOI_to_production_s_axis_tready;
  wire [31:0]fifo_backup_to_IOI_m_axis_tdata;
  wire fifo_backup_to_IOI_m_axis_tvalid;
  wire [31:0]fifo_production_to_IOI_m_axis_tdata;
  wire fifo_production_to_IOI_m_axis_tvalid;
  wire io1_i_1;
  wire mdm_1_debug_sys_rst;
  wire [14:0]production_controller_DDR_ADDR;
  wire [2:0]production_controller_DDR_BA;
  wire production_controller_DDR_CAS_N;
  wire production_controller_DDR_CKE;
  wire production_controller_DDR_CK_N;
  wire production_controller_DDR_CK_P;
  wire production_controller_DDR_CS_N;
  wire [3:0]production_controller_DDR_DM;
  wire [31:0]production_controller_DDR_DQ;
  wire [3:0]production_controller_DDR_DQS_N;
  wire [3:0]production_controller_DDR_DQS_P;
  wire production_controller_DDR_ODT;
  wire production_controller_DDR_RAS_N;
  wire production_controller_DDR_RESET_N;
  wire production_controller_DDR_WE_N;
  wire production_controller_FCLK_RESET0_N;
  wire production_controller_FIXED_IO_DDR_VRN;
  wire production_controller_FIXED_IO_DDR_VRP;
  wire [53:0]production_controller_FIXED_IO_MIO;
  wire production_controller_FIXED_IO_PS_CLK;
  wire production_controller_FIXED_IO_PS_PORB;
  wire production_controller_FIXED_IO_PS_SRSTB;
  wire [31:0]production_controller_M_AXI_GP0_ARADDR;
  wire [1:0]production_controller_M_AXI_GP0_ARBURST;
  wire [3:0]production_controller_M_AXI_GP0_ARCACHE;
  wire [11:0]production_controller_M_AXI_GP0_ARID;
  wire [3:0]production_controller_M_AXI_GP0_ARLEN;
  wire [1:0]production_controller_M_AXI_GP0_ARLOCK;
  wire [2:0]production_controller_M_AXI_GP0_ARPROT;
  wire [3:0]production_controller_M_AXI_GP0_ARQOS;
  wire production_controller_M_AXI_GP0_ARREADY;
  wire [2:0]production_controller_M_AXI_GP0_ARSIZE;
  wire production_controller_M_AXI_GP0_ARVALID;
  wire [31:0]production_controller_M_AXI_GP0_AWADDR;
  wire [1:0]production_controller_M_AXI_GP0_AWBURST;
  wire [3:0]production_controller_M_AXI_GP0_AWCACHE;
  wire [11:0]production_controller_M_AXI_GP0_AWID;
  wire [3:0]production_controller_M_AXI_GP0_AWLEN;
  wire [1:0]production_controller_M_AXI_GP0_AWLOCK;
  wire [2:0]production_controller_M_AXI_GP0_AWPROT;
  wire [3:0]production_controller_M_AXI_GP0_AWQOS;
  wire production_controller_M_AXI_GP0_AWREADY;
  wire [2:0]production_controller_M_AXI_GP0_AWSIZE;
  wire production_controller_M_AXI_GP0_AWVALID;
  wire [11:0]production_controller_M_AXI_GP0_BID;
  wire production_controller_M_AXI_GP0_BREADY;
  wire [1:0]production_controller_M_AXI_GP0_BRESP;
  wire production_controller_M_AXI_GP0_BVALID;
  wire [31:0]production_controller_M_AXI_GP0_RDATA;
  wire [11:0]production_controller_M_AXI_GP0_RID;
  wire production_controller_M_AXI_GP0_RLAST;
  wire production_controller_M_AXI_GP0_RREADY;
  wire [1:0]production_controller_M_AXI_GP0_RRESP;
  wire production_controller_M_AXI_GP0_RVALID;
  wire [31:0]production_controller_M_AXI_GP0_WDATA;
  wire [11:0]production_controller_M_AXI_GP0_WID;
  wire production_controller_M_AXI_GP0_WLAST;
  wire production_controller_M_AXI_GP0_WREADY;
  wire [3:0]production_controller_M_AXI_GP0_WSTRB;
  wire production_controller_M_AXI_GP0_WVALID;
  wire [31:0]queue_multiplexer_0_rx_data;
  wire [0:0]queue_multiplexer_0_rx_ready_a;
  wire [0:0]queue_multiplexer_0_rx_ready_b;
  wire [0:0]queue_multiplexer_0_rx_valid;
  wire [31:0]queue_multiplexer_0_tx_data_a;
  wire [31:0]queue_multiplexer_0_tx_data_b;
  wire [0:0]queue_multiplexer_0_tx_ready;
  wire [0:0]queue_multiplexer_0_tx_valid_a;
  wire [0:0]queue_multiplexer_0_tx_valid_b;
  wire [0:0]rst_production_controller_100M_bus_struct_reset;
  wire [0:0]rst_production_controller_100M_interconnect_aresetn;
  wire rst_production_controller_100M_mb_reset;
  wire [0:0]rst_production_controller_100M_peripheral_aresetn;
  wire rx_1;

  assign axi_gpio_IOI_in_GPIO2_TRI_I = gpio_sw_tri_i[3:0];
  assign axi_gpio_IOI_in_GPIO_TRI_I = gpio_btn_tri_i[3:0];
  assign gpio_debug_ioi_tri_o[3:0] = axi_gpio_IOI_out_GPIO2_TRI_O;
  assign gpio_led_backup_tri_o[0] = axi_gpio_backup_controller_out_GPIO_TRI_O;
  assign gpio_led_ioi_tri_o[0] = axi_gpio_IOI_out_GPIO_TRI_O;
  assign gpio_led_production_tri_o[0] = axi_gpio_production_controller_out_GPIO_TRI_O;
  assign gpio_trigger[0] = axi_gpio_trigger_gpio_io_o;
  assign io1_i_1 = spi_plant_miso_i;
  assign ioi_uart_tx = axi_supervisory_uart_tx;
  assign rx_1 = ioi_uart_rx;
  assign spi_plant_mosi_o = axi_quad_spi_plant_io0_o;
  assign spi_plant_sck_o = axi_quad_spi_plant_sck_o;
  assign spi_plant_ss_o[3:0] = axi_quad_spi_plant_ss_o;
GND GND
       (.G(GND_1));
(* BMM_INFO_PROCESSOR = "microblaze-le > TAIGA_System local_memory_IOI/dlmb_bram_if_cntlr" *) 
   (* KEEP_HIERARCHY = "yes" *) 
   TAIGA_System_microblaze_0_0 IO_Intermediary
       (.Byte_Enable(IO_Intermediary_dlmb_1_BE),
        .Clk(backup_controller_Clk),
        .DCE(IO_Intermediary_dlmb_1_CE),
        .DReady(IO_Intermediary_dlmb_1_READY),
        .DUE(IO_Intermediary_dlmb_1_UE),
        .DWait(IO_Intermediary_dlmb_1_WAIT),
        .D_AS(IO_Intermediary_dlmb_1_ADDRSTROBE),
        .Data_Addr(IO_Intermediary_dlmb_1_ABUS),
        .Data_Read(IO_Intermediary_dlmb_1_READDBUS),
        .Data_Write(IO_Intermediary_dlmb_1_WRITEDBUS),
        .Dbg_Capture(IO_Intermediary_debug_CAPTURE),
        .Dbg_Clk(IO_Intermediary_debug_CLK),
        .Dbg_Reg_En(IO_Intermediary_debug_REG_EN),
        .Dbg_Shift(IO_Intermediary_debug_SHIFT),
        .Dbg_TDI(IO_Intermediary_debug_TDI),
        .Dbg_TDO(IO_Intermediary_debug_TDO),
        .Dbg_Update(IO_Intermediary_debug_UPDATE),
        .Debug_Rst(IO_Intermediary_debug_RST),
        .ICE(IO_Intermediary_ilmb_1_CE),
        .IFetch(IO_Intermediary_ilmb_1_READSTROBE),
        .IReady(IO_Intermediary_ilmb_1_READY),
        .IUE(IO_Intermediary_ilmb_1_UE),
        .IWAIT(IO_Intermediary_ilmb_1_WAIT),
        .I_AS(IO_Intermediary_ilmb_1_ADDRSTROBE),
        .Instr(IO_Intermediary_ilmb_1_READDBUS),
        .Instr_Addr(IO_Intermediary_ilmb_1_ABUS),
        .Interrupt(IO_Intermediary_interrupt_INTERRUPT),
        .Interrupt_Ack(IO_Intermediary_interrupt_ACK),
        .Interrupt_Address({IO_Intermediary_interrupt_ADDRESS[31],IO_Intermediary_interrupt_ADDRESS[30],IO_Intermediary_interrupt_ADDRESS[29],IO_Intermediary_interrupt_ADDRESS[28],IO_Intermediary_interrupt_ADDRESS[27],IO_Intermediary_interrupt_ADDRESS[26],IO_Intermediary_interrupt_ADDRESS[25],IO_Intermediary_interrupt_ADDRESS[24],IO_Intermediary_interrupt_ADDRESS[23],IO_Intermediary_interrupt_ADDRESS[22],IO_Intermediary_interrupt_ADDRESS[21],IO_Intermediary_interrupt_ADDRESS[20],IO_Intermediary_interrupt_ADDRESS[19],IO_Intermediary_interrupt_ADDRESS[18],IO_Intermediary_interrupt_ADDRESS[17],IO_Intermediary_interrupt_ADDRESS[16],IO_Intermediary_interrupt_ADDRESS[15],IO_Intermediary_interrupt_ADDRESS[14],IO_Intermediary_interrupt_ADDRESS[13],IO_Intermediary_interrupt_ADDRESS[12],IO_Intermediary_interrupt_ADDRESS[11],IO_Intermediary_interrupt_ADDRESS[10],IO_Intermediary_interrupt_ADDRESS[9],IO_Intermediary_interrupt_ADDRESS[8],IO_Intermediary_interrupt_ADDRESS[7],IO_Intermediary_interrupt_ADDRESS[6],IO_Intermediary_interrupt_ADDRESS[5],IO_Intermediary_interrupt_ADDRESS[4],IO_Intermediary_interrupt_ADDRESS[3],IO_Intermediary_interrupt_ADDRESS[2],IO_Intermediary_interrupt_ADDRESS[1],IO_Intermediary_interrupt_ADDRESS[0]}),
        .M_AXI_DP_ARADDR(IO_Intermediary_axi_dp_ARADDR),
        .M_AXI_DP_ARPROT(IO_Intermediary_axi_dp_ARPROT),
        .M_AXI_DP_ARREADY(IO_Intermediary_axi_dp_ARREADY),
        .M_AXI_DP_ARVALID(IO_Intermediary_axi_dp_ARVALID),
        .M_AXI_DP_AWADDR(IO_Intermediary_axi_dp_AWADDR),
        .M_AXI_DP_AWPROT(IO_Intermediary_axi_dp_AWPROT),
        .M_AXI_DP_AWREADY(IO_Intermediary_axi_dp_AWREADY),
        .M_AXI_DP_AWVALID(IO_Intermediary_axi_dp_AWVALID),
        .M_AXI_DP_BREADY(IO_Intermediary_axi_dp_BREADY),
        .M_AXI_DP_BRESP(IO_Intermediary_axi_dp_BRESP),
        .M_AXI_DP_BVALID(IO_Intermediary_axi_dp_BVALID),
        .M_AXI_DP_RDATA(IO_Intermediary_axi_dp_RDATA),
        .M_AXI_DP_RREADY(IO_Intermediary_axi_dp_RREADY),
        .M_AXI_DP_RRESP(IO_Intermediary_axi_dp_RRESP),
        .M_AXI_DP_RVALID(IO_Intermediary_axi_dp_RVALID),
        .M_AXI_DP_WDATA(IO_Intermediary_axi_dp_WDATA),
        .M_AXI_DP_WREADY(IO_Intermediary_axi_dp_WREADY),
        .M_AXI_DP_WSTRB(IO_Intermediary_axi_dp_WSTRB),
        .M_AXI_DP_WVALID(IO_Intermediary_axi_dp_WVALID),
        .Read_Strobe(IO_Intermediary_dlmb_1_READSTROBE),
        .Reset(rst_production_controller_100M_mb_reset),
        .Write_Strobe(IO_Intermediary_dlmb_1_WRITESTROBE));
TAIGA_System_IO_Intermediary_xlconcat_0 IO_Intermediary_xlconcat
       (.In0(axi_wdt_IOI_wdt_interrupt),
        .In1(axi_fifo_IOI_dequeue_interrupt),
        .dout(IO_Intermediary_intr));
VCC VCC
       (.P(VCC_1));
TAIGA_System_axi_fifo_mm_s_0_0 axi_fifo_IOI_dequeue
       (.axi_str_rxd_tdata(queue_multiplexer_0_rx_data),
        .axi_str_rxd_tlast(GND_1),
        .axi_str_rxd_tready(axi_fifo_IOI_dequeue_axi_str_rxd_tready),
        .axi_str_rxd_tvalid(queue_multiplexer_0_rx_valid),
        .interrupt(axi_fifo_IOI_dequeue_interrupt),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(axi_periph_IOI_M05_AXI_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(axi_periph_IOI_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_periph_IOI_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_periph_IOI_M05_AXI_AWADDR),
        .s_axi_awready(axi_periph_IOI_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_periph_IOI_M05_AXI_AWVALID),
        .s_axi_bready(axi_periph_IOI_M05_AXI_BREADY),
        .s_axi_bresp(axi_periph_IOI_M05_AXI_BRESP),
        .s_axi_bvalid(axi_periph_IOI_M05_AXI_BVALID),
        .s_axi_rdata(axi_periph_IOI_M05_AXI_RDATA),
        .s_axi_rready(axi_periph_IOI_M05_AXI_RREADY),
        .s_axi_rresp(axi_periph_IOI_M05_AXI_RRESP),
        .s_axi_rvalid(axi_periph_IOI_M05_AXI_RVALID),
        .s_axi_wdata(axi_periph_IOI_M05_AXI_WDATA),
        .s_axi_wready(axi_periph_IOI_M05_AXI_WREADY),
        .s_axi_wstrb(axi_periph_IOI_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_periph_IOI_M05_AXI_WVALID));
TAIGA_System_axi_fifo_IOI_dequeue_2 axi_fifo_IOI_enqueue
       (.axi_str_txd_tdata(axi_fifo_IOI_enqueue_axi_str_txd_tdata),
        .axi_str_txd_tready(queue_multiplexer_0_tx_ready),
        .axi_str_txd_tvalid(axi_fifo_IOI_enqueue_axi_str_txd_tvalid),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(axi_periph_IOI_M06_AXI_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(axi_periph_IOI_M06_AXI_ARREADY),
        .s_axi_arvalid(axi_periph_IOI_M06_AXI_ARVALID),
        .s_axi_awaddr(axi_periph_IOI_M06_AXI_AWADDR),
        .s_axi_awready(axi_periph_IOI_M06_AXI_AWREADY),
        .s_axi_awvalid(axi_periph_IOI_M06_AXI_AWVALID),
        .s_axi_bready(axi_periph_IOI_M06_AXI_BREADY),
        .s_axi_bresp(axi_periph_IOI_M06_AXI_BRESP),
        .s_axi_bvalid(axi_periph_IOI_M06_AXI_BVALID),
        .s_axi_rdata(axi_periph_IOI_M06_AXI_RDATA),
        .s_axi_rready(axi_periph_IOI_M06_AXI_RREADY),
        .s_axi_rresp(axi_periph_IOI_M06_AXI_RRESP),
        .s_axi_rvalid(axi_periph_IOI_M06_AXI_RVALID),
        .s_axi_wdata(axi_periph_IOI_M06_AXI_WDATA),
        .s_axi_wready(axi_periph_IOI_M06_AXI_WREADY),
        .s_axi_wstrb(axi_periph_IOI_M06_AXI_WSTRB),
        .s_axi_wvalid(axi_periph_IOI_M06_AXI_WVALID));
TAIGA_System_axi_fifo_IOI_dequeue_1 axi_fifo_backup
       (.axi_str_rxd_tdata(fifo_IOI_to_backup_M_AXIS_TDATA),
        .axi_str_rxd_tlast(GND_1),
        .axi_str_rxd_tready(fifo_IOI_to_backup_M_AXIS_TREADY),
        .axi_str_rxd_tvalid(fifo_IOI_to_backup_M_AXIS_TVALID),
        .axi_str_txd_tdata(axi_fifo_backup_dequeue_AXI_STR_TXD_TDATA),
        .axi_str_txd_tready(axi_fifo_backup_dequeue_AXI_STR_TXD_TREADY),
        .axi_str_txd_tvalid(axi_fifo_backup_dequeue_AXI_STR_TXD_TVALID),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(axi_periph_backup_controller_M03_AXI_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(axi_periph_backup_controller_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_periph_backup_controller_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_periph_backup_controller_M03_AXI_AWADDR),
        .s_axi_awready(axi_periph_backup_controller_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_periph_backup_controller_M03_AXI_AWVALID),
        .s_axi_bready(axi_periph_backup_controller_M03_AXI_BREADY),
        .s_axi_bresp(axi_periph_backup_controller_M03_AXI_BRESP),
        .s_axi_bvalid(axi_periph_backup_controller_M03_AXI_BVALID),
        .s_axi_rdata(axi_periph_backup_controller_M03_AXI_RDATA),
        .s_axi_rready(axi_periph_backup_controller_M03_AXI_RREADY),
        .s_axi_rresp(axi_periph_backup_controller_M03_AXI_RRESP),
        .s_axi_rvalid(axi_periph_backup_controller_M03_AXI_RVALID),
        .s_axi_wdata(axi_periph_backup_controller_M03_AXI_WDATA),
        .s_axi_wready(axi_periph_backup_controller_M03_AXI_WREADY),
        .s_axi_wstrb(axi_periph_backup_controller_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_periph_backup_controller_M03_AXI_WVALID));
TAIGA_System_axi_fifo_IOI_dequeue_0 axi_fifo_production
       (.axi_str_rxd_tdata(fifo_IOI_to_production_M_AXIS_TDATA),
        .axi_str_rxd_tlast(GND_1),
        .axi_str_rxd_tready(fifo_IOI_to_production_M_AXIS_TREADY),
        .axi_str_rxd_tvalid(fifo_IOI_to_production_M_AXIS_TVALID),
        .axi_str_txd_tdata(axi_fifo_production_AXI_STR_TXD_TDATA),
        .axi_str_txd_tready(axi_fifo_production_AXI_STR_TXD_TREADY),
        .axi_str_txd_tvalid(axi_fifo_production_AXI_STR_TXD_TVALID),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(axi_periph_production_controller_M01_AXI_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(axi_periph_production_controller_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_periph_production_controller_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_periph_production_controller_M01_AXI_AWADDR),
        .s_axi_awready(axi_periph_production_controller_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_periph_production_controller_M01_AXI_AWVALID),
        .s_axi_bready(axi_periph_production_controller_M01_AXI_BREADY),
        .s_axi_bresp(axi_periph_production_controller_M01_AXI_BRESP),
        .s_axi_bvalid(axi_periph_production_controller_M01_AXI_BVALID),
        .s_axi_rdata(axi_periph_production_controller_M01_AXI_RDATA),
        .s_axi_rready(axi_periph_production_controller_M01_AXI_RREADY),
        .s_axi_rresp(axi_periph_production_controller_M01_AXI_RRESP),
        .s_axi_rvalid(axi_periph_production_controller_M01_AXI_RVALID),
        .s_axi_wdata(axi_periph_production_controller_M01_AXI_WDATA),
        .s_axi_wready(axi_periph_production_controller_M01_AXI_WREADY),
        .s_axi_wstrb(axi_periph_production_controller_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_periph_production_controller_M01_AXI_WVALID));
TAIGA_System_axi_gpio_0_1 axi_gpio_IOI_in
       (.gpio2_io_i(axi_gpio_IOI_in_GPIO2_TRI_I),
        .gpio_io_i(axi_gpio_IOI_in_GPIO_TRI_I),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(axi_periph_IOI_M03_AXI_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(axi_periph_IOI_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_periph_IOI_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_periph_IOI_M03_AXI_AWADDR),
        .s_axi_awready(axi_periph_IOI_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_periph_IOI_M03_AXI_AWVALID),
        .s_axi_bready(axi_periph_IOI_M03_AXI_BREADY),
        .s_axi_bresp(axi_periph_IOI_M03_AXI_BRESP),
        .s_axi_bvalid(axi_periph_IOI_M03_AXI_BVALID),
        .s_axi_rdata(axi_periph_IOI_M03_AXI_RDATA),
        .s_axi_rready(axi_periph_IOI_M03_AXI_RREADY),
        .s_axi_rresp(axi_periph_IOI_M03_AXI_RRESP),
        .s_axi_rvalid(axi_periph_IOI_M03_AXI_RVALID),
        .s_axi_wdata(axi_periph_IOI_M03_AXI_WDATA),
        .s_axi_wready(axi_periph_IOI_M03_AXI_WREADY),
        .s_axi_wstrb(axi_periph_IOI_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_periph_IOI_M03_AXI_WVALID));
TAIGA_System_axi_gpio_0_0 axi_gpio_IOI_out
       (.gpio2_io_o(axi_gpio_IOI_out_GPIO2_TRI_O),
        .gpio_io_o(axi_gpio_IOI_out_GPIO_TRI_O),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(axi_periph_IOI_M02_AXI_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(axi_periph_IOI_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_periph_IOI_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_periph_IOI_M02_AXI_AWADDR),
        .s_axi_awready(axi_periph_IOI_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_periph_IOI_M02_AXI_AWVALID),
        .s_axi_bready(axi_periph_IOI_M02_AXI_BREADY),
        .s_axi_bresp(axi_periph_IOI_M02_AXI_BRESP),
        .s_axi_bvalid(axi_periph_IOI_M02_AXI_BVALID),
        .s_axi_rdata(axi_periph_IOI_M02_AXI_RDATA),
        .s_axi_rready(axi_periph_IOI_M02_AXI_RREADY),
        .s_axi_rresp(axi_periph_IOI_M02_AXI_RRESP),
        .s_axi_rvalid(axi_periph_IOI_M02_AXI_RVALID),
        .s_axi_wdata(axi_periph_IOI_M02_AXI_WDATA),
        .s_axi_wready(axi_periph_IOI_M02_AXI_WREADY),
        .s_axi_wstrb(axi_periph_IOI_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_periph_IOI_M02_AXI_WVALID));
TAIGA_System_axi_gpio_0_2 axi_gpio_backup_controller_out
       (.gpio_io_o(axi_gpio_backup_controller_out_GPIO_TRI_O),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(axi_periph_backup_controller_M02_AXI_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(axi_periph_backup_controller_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_periph_backup_controller_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_periph_backup_controller_M02_AXI_AWADDR),
        .s_axi_awready(axi_periph_backup_controller_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_periph_backup_controller_M02_AXI_AWVALID),
        .s_axi_bready(axi_periph_backup_controller_M02_AXI_BREADY),
        .s_axi_bresp(axi_periph_backup_controller_M02_AXI_BRESP),
        .s_axi_bvalid(axi_periph_backup_controller_M02_AXI_BVALID),
        .s_axi_rdata(axi_periph_backup_controller_M02_AXI_RDATA),
        .s_axi_rready(axi_periph_backup_controller_M02_AXI_RREADY),
        .s_axi_rresp(axi_periph_backup_controller_M02_AXI_RRESP),
        .s_axi_rvalid(axi_periph_backup_controller_M02_AXI_RVALID),
        .s_axi_wdata(axi_periph_backup_controller_M02_AXI_WDATA),
        .s_axi_wready(axi_periph_backup_controller_M02_AXI_WREADY),
        .s_axi_wstrb(axi_periph_backup_controller_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_periph_backup_controller_M02_AXI_WVALID));
TAIGA_System_axi_gpio_0_3 axi_gpio_production_controller_out
       (.gpio_io_o(axi_gpio_production_controller_out_GPIO_TRI_O),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(axi_periph_production_controller_M00_AXI_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(axi_periph_production_controller_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_periph_production_controller_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_periph_production_controller_M00_AXI_AWADDR),
        .s_axi_awready(axi_periph_production_controller_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_periph_production_controller_M00_AXI_AWVALID),
        .s_axi_bready(axi_periph_production_controller_M00_AXI_BREADY),
        .s_axi_bresp(axi_periph_production_controller_M00_AXI_BRESP),
        .s_axi_bvalid(axi_periph_production_controller_M00_AXI_BVALID),
        .s_axi_rdata(axi_periph_production_controller_M00_AXI_RDATA),
        .s_axi_rready(axi_periph_production_controller_M00_AXI_RREADY),
        .s_axi_rresp(axi_periph_production_controller_M00_AXI_RRESP),
        .s_axi_rvalid(axi_periph_production_controller_M00_AXI_RVALID),
        .s_axi_wdata(axi_periph_production_controller_M00_AXI_WDATA),
        .s_axi_wready(axi_periph_production_controller_M00_AXI_WREADY),
        .s_axi_wstrb(axi_periph_production_controller_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_periph_production_controller_M00_AXI_WVALID));
TAIGA_System_axi_gpio_0_4 axi_gpio_trigger
       (.gpio_io_o(axi_gpio_trigger_gpio_io_o),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(axi_periph_IOI_M07_AXI_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(axi_periph_IOI_M07_AXI_ARREADY),
        .s_axi_arvalid(axi_periph_IOI_M07_AXI_ARVALID),
        .s_axi_awaddr(axi_periph_IOI_M07_AXI_AWADDR),
        .s_axi_awready(axi_periph_IOI_M07_AXI_AWREADY),
        .s_axi_awvalid(axi_periph_IOI_M07_AXI_AWVALID),
        .s_axi_bready(axi_periph_IOI_M07_AXI_BREADY),
        .s_axi_bresp(axi_periph_IOI_M07_AXI_BRESP),
        .s_axi_bvalid(axi_periph_IOI_M07_AXI_BVALID),
        .s_axi_rdata(axi_periph_IOI_M07_AXI_RDATA),
        .s_axi_rready(axi_periph_IOI_M07_AXI_RREADY),
        .s_axi_rresp(axi_periph_IOI_M07_AXI_RRESP),
        .s_axi_rvalid(axi_periph_IOI_M07_AXI_RVALID),
        .s_axi_wdata(axi_periph_IOI_M07_AXI_WDATA),
        .s_axi_wready(axi_periph_IOI_M07_AXI_WREADY),
        .s_axi_wstrb(axi_periph_IOI_M07_AXI_WSTRB),
        .s_axi_wvalid(axi_periph_IOI_M07_AXI_WVALID));
TAIGA_System_IO_Intermediary_axi_intc_0 axi_intc_IOI
       (.interrupt_address(IO_Intermediary_interrupt_ADDRESS),
        .intr(IO_Intermediary_intr),
        .irq(IO_Intermediary_interrupt_INTERRUPT),
        .processor_ack({IO_Intermediary_interrupt_ACK[0],IO_Intermediary_interrupt_ACK[1]}),
        .processor_clk(backup_controller_Clk),
        .processor_rst(rst_production_controller_100M_mb_reset),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(IO_Intermediary_intc_axi_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(IO_Intermediary_intc_axi_ARREADY),
        .s_axi_arvalid(IO_Intermediary_intc_axi_ARVALID),
        .s_axi_awaddr(IO_Intermediary_intc_axi_AWADDR),
        .s_axi_awready(IO_Intermediary_intc_axi_AWREADY),
        .s_axi_awvalid(IO_Intermediary_intc_axi_AWVALID),
        .s_axi_bready(IO_Intermediary_intc_axi_BREADY),
        .s_axi_bresp(IO_Intermediary_intc_axi_BRESP),
        .s_axi_bvalid(IO_Intermediary_intc_axi_BVALID),
        .s_axi_rdata(IO_Intermediary_intc_axi_RDATA),
        .s_axi_rready(IO_Intermediary_intc_axi_RREADY),
        .s_axi_rresp(IO_Intermediary_intc_axi_RRESP),
        .s_axi_rvalid(IO_Intermediary_intc_axi_RVALID),
        .s_axi_wdata(IO_Intermediary_intc_axi_WDATA),
        .s_axi_wready(IO_Intermediary_intc_axi_WREADY),
        .s_axi_wstrb(IO_Intermediary_intc_axi_WSTRB),
        .s_axi_wvalid(IO_Intermediary_intc_axi_WVALID));
TAIGA_System_IO_Intermediary_axi_periph_0 axi_periph_IOI
       (.ACLK(backup_controller_Clk),
        .ARESETN(rst_production_controller_100M_interconnect_aresetn),
        .M00_ACLK(backup_controller_Clk),
        .M00_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M00_AXI_araddr(IO_Intermediary_intc_axi_ARADDR),
        .M00_AXI_arready(IO_Intermediary_intc_axi_ARREADY),
        .M00_AXI_arvalid(IO_Intermediary_intc_axi_ARVALID),
        .M00_AXI_awaddr(IO_Intermediary_intc_axi_AWADDR),
        .M00_AXI_awready(IO_Intermediary_intc_axi_AWREADY),
        .M00_AXI_awvalid(IO_Intermediary_intc_axi_AWVALID),
        .M00_AXI_bready(IO_Intermediary_intc_axi_BREADY),
        .M00_AXI_bresp(IO_Intermediary_intc_axi_BRESP),
        .M00_AXI_bvalid(IO_Intermediary_intc_axi_BVALID),
        .M00_AXI_rdata(IO_Intermediary_intc_axi_RDATA),
        .M00_AXI_rready(IO_Intermediary_intc_axi_RREADY),
        .M00_AXI_rresp(IO_Intermediary_intc_axi_RRESP),
        .M00_AXI_rvalid(IO_Intermediary_intc_axi_RVALID),
        .M00_AXI_wdata(IO_Intermediary_intc_axi_WDATA),
        .M00_AXI_wready(IO_Intermediary_intc_axi_WREADY),
        .M00_AXI_wstrb(IO_Intermediary_intc_axi_WSTRB),
        .M00_AXI_wvalid(IO_Intermediary_intc_axi_WVALID),
        .M01_ACLK(backup_controller_Clk),
        .M01_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M01_AXI_araddr(IO_Intermediary_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(IO_Intermediary_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(IO_Intermediary_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(IO_Intermediary_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(IO_Intermediary_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(IO_Intermediary_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(IO_Intermediary_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(IO_Intermediary_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(IO_Intermediary_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(IO_Intermediary_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(IO_Intermediary_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(IO_Intermediary_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(IO_Intermediary_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(IO_Intermediary_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(IO_Intermediary_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(IO_Intermediary_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(IO_Intermediary_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(backup_controller_Clk),
        .M02_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M02_AXI_araddr(axi_periph_IOI_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_periph_IOI_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_periph_IOI_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_periph_IOI_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_periph_IOI_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_periph_IOI_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_periph_IOI_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_periph_IOI_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_periph_IOI_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_periph_IOI_M02_AXI_RDATA),
        .M02_AXI_rready(axi_periph_IOI_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_periph_IOI_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_periph_IOI_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_periph_IOI_M02_AXI_WDATA),
        .M02_AXI_wready(axi_periph_IOI_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_periph_IOI_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_periph_IOI_M02_AXI_WVALID),
        .M03_ACLK(backup_controller_Clk),
        .M03_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M03_AXI_araddr(axi_periph_IOI_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_periph_IOI_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_periph_IOI_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_periph_IOI_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_periph_IOI_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_periph_IOI_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_periph_IOI_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_periph_IOI_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_periph_IOI_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_periph_IOI_M03_AXI_RDATA),
        .M03_AXI_rready(axi_periph_IOI_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_periph_IOI_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_periph_IOI_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_periph_IOI_M03_AXI_WDATA),
        .M03_AXI_wready(axi_periph_IOI_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_periph_IOI_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_periph_IOI_M03_AXI_WVALID),
        .M04_ACLK(backup_controller_Clk),
        .M04_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M04_AXI_araddr(axi_periph_IOI_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_periph_IOI_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_periph_IOI_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_periph_IOI_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_periph_IOI_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_periph_IOI_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_periph_IOI_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_periph_IOI_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_periph_IOI_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_periph_IOI_M04_AXI_RDATA),
        .M04_AXI_rready(axi_periph_IOI_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_periph_IOI_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_periph_IOI_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_periph_IOI_M04_AXI_WDATA),
        .M04_AXI_wready(axi_periph_IOI_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_periph_IOI_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_periph_IOI_M04_AXI_WVALID),
        .M05_ACLK(backup_controller_Clk),
        .M05_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M05_AXI_araddr(axi_periph_IOI_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_periph_IOI_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_periph_IOI_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_periph_IOI_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_periph_IOI_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_periph_IOI_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_periph_IOI_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_periph_IOI_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_periph_IOI_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_periph_IOI_M05_AXI_RDATA),
        .M05_AXI_rready(axi_periph_IOI_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_periph_IOI_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_periph_IOI_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_periph_IOI_M05_AXI_WDATA),
        .M05_AXI_wready(axi_periph_IOI_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_periph_IOI_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_periph_IOI_M05_AXI_WVALID),
        .M06_ACLK(backup_controller_Clk),
        .M06_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M06_AXI_araddr(axi_periph_IOI_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_periph_IOI_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_periph_IOI_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_periph_IOI_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_periph_IOI_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_periph_IOI_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_periph_IOI_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_periph_IOI_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_periph_IOI_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_periph_IOI_M06_AXI_RDATA),
        .M06_AXI_rready(axi_periph_IOI_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_periph_IOI_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_periph_IOI_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_periph_IOI_M06_AXI_WDATA),
        .M06_AXI_wready(axi_periph_IOI_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_periph_IOI_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_periph_IOI_M06_AXI_WVALID),
        .M07_ACLK(backup_controller_Clk),
        .M07_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M07_AXI_araddr(axi_periph_IOI_M07_AXI_ARADDR),
        .M07_AXI_arready(axi_periph_IOI_M07_AXI_ARREADY),
        .M07_AXI_arvalid(axi_periph_IOI_M07_AXI_ARVALID),
        .M07_AXI_awaddr(axi_periph_IOI_M07_AXI_AWADDR),
        .M07_AXI_awready(axi_periph_IOI_M07_AXI_AWREADY),
        .M07_AXI_awvalid(axi_periph_IOI_M07_AXI_AWVALID),
        .M07_AXI_bready(axi_periph_IOI_M07_AXI_BREADY),
        .M07_AXI_bresp(axi_periph_IOI_M07_AXI_BRESP),
        .M07_AXI_bvalid(axi_periph_IOI_M07_AXI_BVALID),
        .M07_AXI_rdata(axi_periph_IOI_M07_AXI_RDATA),
        .M07_AXI_rready(axi_periph_IOI_M07_AXI_RREADY),
        .M07_AXI_rresp(axi_periph_IOI_M07_AXI_RRESP),
        .M07_AXI_rvalid(axi_periph_IOI_M07_AXI_RVALID),
        .M07_AXI_wdata(axi_periph_IOI_M07_AXI_WDATA),
        .M07_AXI_wready(axi_periph_IOI_M07_AXI_WREADY),
        .M07_AXI_wstrb(axi_periph_IOI_M07_AXI_WSTRB),
        .M07_AXI_wvalid(axi_periph_IOI_M07_AXI_WVALID),
        .M08_ACLK(backup_controller_Clk),
        .M08_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M08_AXI_araddr(axi_periph_IOI_M08_AXI_ARADDR),
        .M08_AXI_arready(axi_periph_IOI_M08_AXI_ARREADY),
        .M08_AXI_arvalid(axi_periph_IOI_M08_AXI_ARVALID),
        .M08_AXI_awaddr(axi_periph_IOI_M08_AXI_AWADDR),
        .M08_AXI_awready(axi_periph_IOI_M08_AXI_AWREADY),
        .M08_AXI_awvalid(axi_periph_IOI_M08_AXI_AWVALID),
        .M08_AXI_bready(axi_periph_IOI_M08_AXI_BREADY),
        .M08_AXI_bresp(axi_periph_IOI_M08_AXI_BRESP),
        .M08_AXI_bvalid(axi_periph_IOI_M08_AXI_BVALID),
        .M08_AXI_rdata(axi_periph_IOI_M08_AXI_RDATA),
        .M08_AXI_rready(axi_periph_IOI_M08_AXI_RREADY),
        .M08_AXI_rresp(axi_periph_IOI_M08_AXI_RRESP),
        .M08_AXI_rvalid(axi_periph_IOI_M08_AXI_RVALID),
        .M08_AXI_wdata(axi_periph_IOI_M08_AXI_WDATA),
        .M08_AXI_wready(axi_periph_IOI_M08_AXI_WREADY),
        .M08_AXI_wstrb(axi_periph_IOI_M08_AXI_WSTRB),
        .M08_AXI_wvalid(axi_periph_IOI_M08_AXI_WVALID),
        .S00_ACLK(backup_controller_Clk),
        .S00_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .S00_AXI_araddr(IO_Intermediary_axi_dp_ARADDR),
        .S00_AXI_arprot(IO_Intermediary_axi_dp_ARPROT),
        .S00_AXI_arready(IO_Intermediary_axi_dp_ARREADY),
        .S00_AXI_arvalid(IO_Intermediary_axi_dp_ARVALID),
        .S00_AXI_awaddr(IO_Intermediary_axi_dp_AWADDR),
        .S00_AXI_awprot(IO_Intermediary_axi_dp_AWPROT),
        .S00_AXI_awready(IO_Intermediary_axi_dp_AWREADY),
        .S00_AXI_awvalid(IO_Intermediary_axi_dp_AWVALID),
        .S00_AXI_bready(IO_Intermediary_axi_dp_BREADY),
        .S00_AXI_bresp(IO_Intermediary_axi_dp_BRESP),
        .S00_AXI_bvalid(IO_Intermediary_axi_dp_BVALID),
        .S00_AXI_rdata(IO_Intermediary_axi_dp_RDATA),
        .S00_AXI_rready(IO_Intermediary_axi_dp_RREADY),
        .S00_AXI_rresp(IO_Intermediary_axi_dp_RRESP),
        .S00_AXI_rvalid(IO_Intermediary_axi_dp_RVALID),
        .S00_AXI_wdata(IO_Intermediary_axi_dp_WDATA),
        .S00_AXI_wready(IO_Intermediary_axi_dp_WREADY),
        .S00_AXI_wstrb(IO_Intermediary_axi_dp_WSTRB),
        .S00_AXI_wvalid(IO_Intermediary_axi_dp_WVALID));
TAIGA_System_backup_controller_axi_periph_0 axi_periph_backup_controller
       (.ACLK(backup_controller_Clk),
        .ARESETN(rst_production_controller_100M_interconnect_aresetn),
        .M00_ACLK(backup_controller_Clk),
        .M00_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M00_AXI_araddr(backup_controller_intc_axi_ARADDR),
        .M00_AXI_arready(backup_controller_intc_axi_ARREADY),
        .M00_AXI_arvalid(backup_controller_intc_axi_ARVALID),
        .M00_AXI_awaddr(backup_controller_intc_axi_AWADDR),
        .M00_AXI_awready(backup_controller_intc_axi_AWREADY),
        .M00_AXI_awvalid(backup_controller_intc_axi_AWVALID),
        .M00_AXI_bready(backup_controller_intc_axi_BREADY),
        .M00_AXI_bresp(backup_controller_intc_axi_BRESP),
        .M00_AXI_bvalid(backup_controller_intc_axi_BVALID),
        .M00_AXI_rdata(backup_controller_intc_axi_RDATA),
        .M00_AXI_rready(backup_controller_intc_axi_RREADY),
        .M00_AXI_rresp(backup_controller_intc_axi_RRESP),
        .M00_AXI_rvalid(backup_controller_intc_axi_RVALID),
        .M00_AXI_wdata(backup_controller_intc_axi_WDATA),
        .M00_AXI_wready(backup_controller_intc_axi_WREADY),
        .M00_AXI_wstrb(backup_controller_intc_axi_WSTRB),
        .M00_AXI_wvalid(backup_controller_intc_axi_WVALID),
        .M01_ACLK(backup_controller_Clk),
        .M01_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M01_AXI_araddr(axi_periph_backup_controller_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_periph_backup_controller_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_periph_backup_controller_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_periph_backup_controller_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_periph_backup_controller_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_periph_backup_controller_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_periph_backup_controller_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_periph_backup_controller_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_periph_backup_controller_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_periph_backup_controller_M01_AXI_RDATA),
        .M01_AXI_rready(axi_periph_backup_controller_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_periph_backup_controller_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_periph_backup_controller_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_periph_backup_controller_M01_AXI_WDATA),
        .M01_AXI_wready(axi_periph_backup_controller_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_periph_backup_controller_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_periph_backup_controller_M01_AXI_WVALID),
        .M02_ACLK(backup_controller_Clk),
        .M02_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M02_AXI_araddr(axi_periph_backup_controller_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_periph_backup_controller_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_periph_backup_controller_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_periph_backup_controller_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_periph_backup_controller_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_periph_backup_controller_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_periph_backup_controller_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_periph_backup_controller_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_periph_backup_controller_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_periph_backup_controller_M02_AXI_RDATA),
        .M02_AXI_rready(axi_periph_backup_controller_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_periph_backup_controller_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_periph_backup_controller_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_periph_backup_controller_M02_AXI_WDATA),
        .M02_AXI_wready(axi_periph_backup_controller_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_periph_backup_controller_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_periph_backup_controller_M02_AXI_WVALID),
        .M03_ACLK(backup_controller_Clk),
        .M03_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M03_AXI_araddr(axi_periph_backup_controller_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_periph_backup_controller_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_periph_backup_controller_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_periph_backup_controller_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_periph_backup_controller_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_periph_backup_controller_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_periph_backup_controller_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_periph_backup_controller_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_periph_backup_controller_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_periph_backup_controller_M03_AXI_RDATA),
        .M03_AXI_rready(axi_periph_backup_controller_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_periph_backup_controller_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_periph_backup_controller_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_periph_backup_controller_M03_AXI_WDATA),
        .M03_AXI_wready(axi_periph_backup_controller_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_periph_backup_controller_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_periph_backup_controller_M03_AXI_WVALID),
        .S00_ACLK(backup_controller_Clk),
        .S00_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .S00_AXI_araddr(backup_controller_axi_dp_ARADDR),
        .S00_AXI_arprot(backup_controller_axi_dp_ARPROT),
        .S00_AXI_arready(backup_controller_axi_dp_ARREADY),
        .S00_AXI_arvalid(backup_controller_axi_dp_ARVALID),
        .S00_AXI_awaddr(backup_controller_axi_dp_AWADDR),
        .S00_AXI_awprot(backup_controller_axi_dp_AWPROT),
        .S00_AXI_awready(backup_controller_axi_dp_AWREADY),
        .S00_AXI_awvalid(backup_controller_axi_dp_AWVALID),
        .S00_AXI_bready(backup_controller_axi_dp_BREADY),
        .S00_AXI_bresp(backup_controller_axi_dp_BRESP),
        .S00_AXI_bvalid(backup_controller_axi_dp_BVALID),
        .S00_AXI_rdata(backup_controller_axi_dp_RDATA),
        .S00_AXI_rready(backup_controller_axi_dp_RREADY),
        .S00_AXI_rresp(backup_controller_axi_dp_RRESP),
        .S00_AXI_rvalid(backup_controller_axi_dp_RVALID),
        .S00_AXI_wdata(backup_controller_axi_dp_WDATA),
        .S00_AXI_wready(backup_controller_axi_dp_WREADY),
        .S00_AXI_wstrb(backup_controller_axi_dp_WSTRB),
        .S00_AXI_wvalid(backup_controller_axi_dp_WVALID));
TAIGA_System_axi_interconnect_0_0 axi_periph_production_controller
       (.ACLK(backup_controller_Clk),
        .ARESETN(rst_production_controller_100M_interconnect_aresetn),
        .M00_ACLK(backup_controller_Clk),
        .M00_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M00_AXI_araddr(axi_periph_production_controller_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_periph_production_controller_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_periph_production_controller_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_periph_production_controller_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_periph_production_controller_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_periph_production_controller_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_periph_production_controller_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_periph_production_controller_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_periph_production_controller_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_periph_production_controller_M00_AXI_RDATA),
        .M00_AXI_rready(axi_periph_production_controller_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_periph_production_controller_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_periph_production_controller_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_periph_production_controller_M00_AXI_WDATA),
        .M00_AXI_wready(axi_periph_production_controller_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_periph_production_controller_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_periph_production_controller_M00_AXI_WVALID),
        .M01_ACLK(backup_controller_Clk),
        .M01_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .M01_AXI_araddr(axi_periph_production_controller_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_periph_production_controller_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_periph_production_controller_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_periph_production_controller_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_periph_production_controller_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_periph_production_controller_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_periph_production_controller_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_periph_production_controller_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_periph_production_controller_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_periph_production_controller_M01_AXI_RDATA),
        .M01_AXI_rready(axi_periph_production_controller_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_periph_production_controller_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_periph_production_controller_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_periph_production_controller_M01_AXI_WDATA),
        .M01_AXI_wready(axi_periph_production_controller_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_periph_production_controller_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_periph_production_controller_M01_AXI_WVALID),
        .S00_ACLK(backup_controller_Clk),
        .S00_ARESETN(rst_production_controller_100M_peripheral_aresetn),
        .S00_AXI_araddr(production_controller_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(production_controller_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(production_controller_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(production_controller_M_AXI_GP0_ARID),
        .S00_AXI_arlen(production_controller_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(production_controller_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(production_controller_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(production_controller_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(production_controller_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(production_controller_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(production_controller_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(production_controller_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(production_controller_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(production_controller_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(production_controller_M_AXI_GP0_AWID),
        .S00_AXI_awlen(production_controller_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(production_controller_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(production_controller_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(production_controller_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(production_controller_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(production_controller_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(production_controller_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(production_controller_M_AXI_GP0_BID),
        .S00_AXI_bready(production_controller_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(production_controller_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(production_controller_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(production_controller_M_AXI_GP0_RDATA),
        .S00_AXI_rid(production_controller_M_AXI_GP0_RID),
        .S00_AXI_rlast(production_controller_M_AXI_GP0_RLAST),
        .S00_AXI_rready(production_controller_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(production_controller_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(production_controller_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(production_controller_M_AXI_GP0_WDATA),
        .S00_AXI_wid(production_controller_M_AXI_GP0_WID),
        .S00_AXI_wlast(production_controller_M_AXI_GP0_WLAST),
        .S00_AXI_wready(production_controller_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(production_controller_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(production_controller_M_AXI_GP0_WVALID));
TAIGA_System_axi_quad_spi_0_0 axi_quad_spi_plant
       (.ext_spi_clk(backup_controller_Clk),
        .io0_i(GND_1),
        .io0_o(axi_quad_spi_plant_io0_o),
        .io1_i(io1_i_1),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(IO_Intermediary_axi_periph_M01_AXI_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(IO_Intermediary_axi_periph_M01_AXI_ARREADY),
        .s_axi_arvalid(IO_Intermediary_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(IO_Intermediary_axi_periph_M01_AXI_AWADDR),
        .s_axi_awready(IO_Intermediary_axi_periph_M01_AXI_AWREADY),
        .s_axi_awvalid(IO_Intermediary_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(IO_Intermediary_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(IO_Intermediary_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(IO_Intermediary_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(IO_Intermediary_axi_periph_M01_AXI_RDATA),
        .s_axi_rready(IO_Intermediary_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(IO_Intermediary_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(IO_Intermediary_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(IO_Intermediary_axi_periph_M01_AXI_WDATA),
        .s_axi_wready(IO_Intermediary_axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(IO_Intermediary_axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(IO_Intermediary_axi_periph_M01_AXI_WVALID),
        .sck_i(GND_1),
        .sck_o(axi_quad_spi_plant_sck_o),
        .ss_i({GND_1,GND_1,GND_1,GND_1}),
        .ss_o(axi_quad_spi_plant_ss_o));
TAIGA_System_axi_uartlite_0_0 axi_supervisory_uart
       (.rx(rx_1),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(axi_periph_IOI_M08_AXI_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(axi_periph_IOI_M08_AXI_ARREADY),
        .s_axi_arvalid(axi_periph_IOI_M08_AXI_ARVALID),
        .s_axi_awaddr(axi_periph_IOI_M08_AXI_AWADDR),
        .s_axi_awready(axi_periph_IOI_M08_AXI_AWREADY),
        .s_axi_awvalid(axi_periph_IOI_M08_AXI_AWVALID),
        .s_axi_bready(axi_periph_IOI_M08_AXI_BREADY),
        .s_axi_bresp(axi_periph_IOI_M08_AXI_BRESP),
        .s_axi_bvalid(axi_periph_IOI_M08_AXI_BVALID),
        .s_axi_rdata(axi_periph_IOI_M08_AXI_RDATA),
        .s_axi_rready(axi_periph_IOI_M08_AXI_RREADY),
        .s_axi_rresp(axi_periph_IOI_M08_AXI_RRESP),
        .s_axi_rvalid(axi_periph_IOI_M08_AXI_RVALID),
        .s_axi_wdata(axi_periph_IOI_M08_AXI_WDATA),
        .s_axi_wready(axi_periph_IOI_M08_AXI_WREADY),
        .s_axi_wstrb(axi_periph_IOI_M08_AXI_WSTRB),
        .s_axi_wvalid(axi_periph_IOI_M08_AXI_WVALID),
        .tx(axi_supervisory_uart_tx));
TAIGA_System_axi_timer_0_0 axi_timer_backup_controller
       (.capturetrig0(GND_1),
        .capturetrig1(GND_1),
        .freeze(GND_1),
        .interrupt(axi_timer_backup_controller_interrupt),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(axi_periph_backup_controller_M01_AXI_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(axi_periph_backup_controller_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_periph_backup_controller_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_periph_backup_controller_M01_AXI_AWADDR),
        .s_axi_awready(axi_periph_backup_controller_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_periph_backup_controller_M01_AXI_AWVALID),
        .s_axi_bready(axi_periph_backup_controller_M01_AXI_BREADY),
        .s_axi_bresp(axi_periph_backup_controller_M01_AXI_BRESP),
        .s_axi_bvalid(axi_periph_backup_controller_M01_AXI_BVALID),
        .s_axi_rdata(axi_periph_backup_controller_M01_AXI_RDATA),
        .s_axi_rready(axi_periph_backup_controller_M01_AXI_RREADY),
        .s_axi_rresp(axi_periph_backup_controller_M01_AXI_RRESP),
        .s_axi_rvalid(axi_periph_backup_controller_M01_AXI_RVALID),
        .s_axi_wdata(axi_periph_backup_controller_M01_AXI_WDATA),
        .s_axi_wready(axi_periph_backup_controller_M01_AXI_WREADY),
        .s_axi_wstrb(axi_periph_backup_controller_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_periph_backup_controller_M01_AXI_WVALID));
TAIGA_System_axi_timebase_wdt_0_0 axi_wdt_IOI
       (.freeze(GND_1),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(axi_periph_IOI_M04_AXI_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(axi_periph_IOI_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_periph_IOI_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_periph_IOI_M04_AXI_AWADDR),
        .s_axi_awready(axi_periph_IOI_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_periph_IOI_M04_AXI_AWVALID),
        .s_axi_bready(axi_periph_IOI_M04_AXI_BREADY),
        .s_axi_bresp(axi_periph_IOI_M04_AXI_BRESP),
        .s_axi_bvalid(axi_periph_IOI_M04_AXI_BVALID),
        .s_axi_rdata(axi_periph_IOI_M04_AXI_RDATA),
        .s_axi_rready(axi_periph_IOI_M04_AXI_RREADY),
        .s_axi_rresp(axi_periph_IOI_M04_AXI_RRESP),
        .s_axi_rvalid(axi_periph_IOI_M04_AXI_RVALID),
        .s_axi_wdata(axi_periph_IOI_M04_AXI_WDATA),
        .s_axi_wready(axi_periph_IOI_M04_AXI_WREADY),
        .s_axi_wstrb(axi_periph_IOI_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_periph_IOI_M04_AXI_WVALID),
        .wdt_interrupt(axi_wdt_IOI_wdt_interrupt));
(* BMM_INFO_PROCESSOR = "microblaze-le > TAIGA_System backup_controller_local_memory/dlmb_bram_if_cntlr" *) 
   (* KEEP_HIERARCHY = "yes" *) 
   TAIGA_System_microblaze_0_1 backup_controller
       (.Byte_Enable(backup_controller_dlmb_1_BE),
        .Clk(backup_controller_Clk),
        .DCE(backup_controller_dlmb_1_CE),
        .DReady(backup_controller_dlmb_1_READY),
        .DUE(backup_controller_dlmb_1_UE),
        .DWait(backup_controller_dlmb_1_WAIT),
        .D_AS(backup_controller_dlmb_1_ADDRSTROBE),
        .Data_Addr(backup_controller_dlmb_1_ABUS),
        .Data_Read(backup_controller_dlmb_1_READDBUS),
        .Data_Write(backup_controller_dlmb_1_WRITEDBUS),
        .Dbg_Capture(backup_controller_debug_CAPTURE),
        .Dbg_Clk(backup_controller_debug_CLK),
        .Dbg_Reg_En(backup_controller_debug_REG_EN),
        .Dbg_Shift(backup_controller_debug_SHIFT),
        .Dbg_TDI(backup_controller_debug_TDI),
        .Dbg_TDO(backup_controller_debug_TDO),
        .Dbg_Update(backup_controller_debug_UPDATE),
        .Debug_Rst(backup_controller_debug_RST),
        .ICE(backup_controller_ilmb_1_CE),
        .IFetch(backup_controller_ilmb_1_READSTROBE),
        .IReady(backup_controller_ilmb_1_READY),
        .IUE(backup_controller_ilmb_1_UE),
        .IWAIT(backup_controller_ilmb_1_WAIT),
        .I_AS(backup_controller_ilmb_1_ADDRSTROBE),
        .Instr(backup_controller_ilmb_1_READDBUS),
        .Instr_Addr(backup_controller_ilmb_1_ABUS),
        .Interrupt(backup_controller_interrupt_INTERRUPT),
        .Interrupt_Ack(backup_controller_interrupt_ACK),
        .Interrupt_Address({backup_controller_interrupt_ADDRESS[31],backup_controller_interrupt_ADDRESS[30],backup_controller_interrupt_ADDRESS[29],backup_controller_interrupt_ADDRESS[28],backup_controller_interrupt_ADDRESS[27],backup_controller_interrupt_ADDRESS[26],backup_controller_interrupt_ADDRESS[25],backup_controller_interrupt_ADDRESS[24],backup_controller_interrupt_ADDRESS[23],backup_controller_interrupt_ADDRESS[22],backup_controller_interrupt_ADDRESS[21],backup_controller_interrupt_ADDRESS[20],backup_controller_interrupt_ADDRESS[19],backup_controller_interrupt_ADDRESS[18],backup_controller_interrupt_ADDRESS[17],backup_controller_interrupt_ADDRESS[16],backup_controller_interrupt_ADDRESS[15],backup_controller_interrupt_ADDRESS[14],backup_controller_interrupt_ADDRESS[13],backup_controller_interrupt_ADDRESS[12],backup_controller_interrupt_ADDRESS[11],backup_controller_interrupt_ADDRESS[10],backup_controller_interrupt_ADDRESS[9],backup_controller_interrupt_ADDRESS[8],backup_controller_interrupt_ADDRESS[7],backup_controller_interrupt_ADDRESS[6],backup_controller_interrupt_ADDRESS[5],backup_controller_interrupt_ADDRESS[4],backup_controller_interrupt_ADDRESS[3],backup_controller_interrupt_ADDRESS[2],backup_controller_interrupt_ADDRESS[1],backup_controller_interrupt_ADDRESS[0]}),
        .M_AXI_DP_ARADDR(backup_controller_axi_dp_ARADDR),
        .M_AXI_DP_ARPROT(backup_controller_axi_dp_ARPROT),
        .M_AXI_DP_ARREADY(backup_controller_axi_dp_ARREADY),
        .M_AXI_DP_ARVALID(backup_controller_axi_dp_ARVALID),
        .M_AXI_DP_AWADDR(backup_controller_axi_dp_AWADDR),
        .M_AXI_DP_AWPROT(backup_controller_axi_dp_AWPROT),
        .M_AXI_DP_AWREADY(backup_controller_axi_dp_AWREADY),
        .M_AXI_DP_AWVALID(backup_controller_axi_dp_AWVALID),
        .M_AXI_DP_BREADY(backup_controller_axi_dp_BREADY),
        .M_AXI_DP_BRESP(backup_controller_axi_dp_BRESP),
        .M_AXI_DP_BVALID(backup_controller_axi_dp_BVALID),
        .M_AXI_DP_RDATA(backup_controller_axi_dp_RDATA),
        .M_AXI_DP_RREADY(backup_controller_axi_dp_RREADY),
        .M_AXI_DP_RRESP(backup_controller_axi_dp_RRESP),
        .M_AXI_DP_RVALID(backup_controller_axi_dp_RVALID),
        .M_AXI_DP_WDATA(backup_controller_axi_dp_WDATA),
        .M_AXI_DP_WREADY(backup_controller_axi_dp_WREADY),
        .M_AXI_DP_WSTRB(backup_controller_axi_dp_WSTRB),
        .M_AXI_DP_WVALID(backup_controller_axi_dp_WVALID),
        .Read_Strobe(backup_controller_dlmb_1_READSTROBE),
        .Reset(rst_production_controller_100M_mb_reset),
        .Write_Strobe(backup_controller_dlmb_1_WRITESTROBE));
TAIGA_System_backup_controller_axi_intc_0 backup_controller_axi_intc
       (.interrupt_address(backup_controller_interrupt_ADDRESS),
        .intr(axi_timer_backup_controller_interrupt),
        .irq(backup_controller_interrupt_INTERRUPT),
        .processor_ack({backup_controller_interrupt_ACK[0],backup_controller_interrupt_ACK[1]}),
        .processor_clk(backup_controller_Clk),
        .processor_rst(rst_production_controller_100M_mb_reset),
        .s_axi_aclk(backup_controller_Clk),
        .s_axi_araddr(backup_controller_intc_axi_ARADDR),
        .s_axi_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axi_arready(backup_controller_intc_axi_ARREADY),
        .s_axi_arvalid(backup_controller_intc_axi_ARVALID),
        .s_axi_awaddr(backup_controller_intc_axi_AWADDR),
        .s_axi_awready(backup_controller_intc_axi_AWREADY),
        .s_axi_awvalid(backup_controller_intc_axi_AWVALID),
        .s_axi_bready(backup_controller_intc_axi_BREADY),
        .s_axi_bresp(backup_controller_intc_axi_BRESP),
        .s_axi_bvalid(backup_controller_intc_axi_BVALID),
        .s_axi_rdata(backup_controller_intc_axi_RDATA),
        .s_axi_rready(backup_controller_intc_axi_RREADY),
        .s_axi_rresp(backup_controller_intc_axi_RRESP),
        .s_axi_rvalid(backup_controller_intc_axi_RVALID),
        .s_axi_wdata(backup_controller_intc_axi_WDATA),
        .s_axi_wready(backup_controller_intc_axi_WREADY),
        .s_axi_wstrb(backup_controller_intc_axi_WSTRB),
        .s_axi_wvalid(backup_controller_intc_axi_WVALID));
backup_controller_local_memory_imp_2FVAXH backup_controller_local_memory
       (.DLMB_abus(backup_controller_dlmb_1_ABUS),
        .DLMB_addrstrobe(backup_controller_dlmb_1_ADDRSTROBE),
        .DLMB_be(backup_controller_dlmb_1_BE),
        .DLMB_ce(backup_controller_dlmb_1_CE),
        .DLMB_readdbus(backup_controller_dlmb_1_READDBUS),
        .DLMB_readstrobe(backup_controller_dlmb_1_READSTROBE),
        .DLMB_ready(backup_controller_dlmb_1_READY),
        .DLMB_ue(backup_controller_dlmb_1_UE),
        .DLMB_wait(backup_controller_dlmb_1_WAIT),
        .DLMB_writedbus(backup_controller_dlmb_1_WRITEDBUS),
        .DLMB_writestrobe(backup_controller_dlmb_1_WRITESTROBE),
        .ILMB_abus(backup_controller_ilmb_1_ABUS),
        .ILMB_addrstrobe(backup_controller_ilmb_1_ADDRSTROBE),
        .ILMB_ce(backup_controller_ilmb_1_CE),
        .ILMB_readdbus(backup_controller_ilmb_1_READDBUS),
        .ILMB_readstrobe(backup_controller_ilmb_1_READSTROBE),
        .ILMB_ready(backup_controller_ilmb_1_READY),
        .ILMB_ue(backup_controller_ilmb_1_UE),
        .ILMB_wait(backup_controller_ilmb_1_WAIT),
        .LMB_Clk(backup_controller_Clk),
        .LMB_Rst(rst_production_controller_100M_bus_struct_reset));
TAIGA_System_fifo_IOI_to_production_0 fifo_IOI_to_backup
       (.m_axis_tdata(fifo_IOI_to_backup_M_AXIS_TDATA),
        .m_axis_tready(fifo_IOI_to_backup_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_IOI_to_backup_M_AXIS_TVALID),
        .s_aclk(backup_controller_Clk),
        .s_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axis_tdata(queue_multiplexer_0_tx_data_b),
        .s_axis_tready(fifo_IOI_to_backup_s_axis_tready),
        .s_axis_tuser({GND_1,GND_1,GND_1,GND_1}),
        .s_axis_tvalid(queue_multiplexer_0_tx_valid_b));
TAIGA_System_fifo_production_to_IOI_0 fifo_IOI_to_production
       (.m_axis_tdata(fifo_IOI_to_production_M_AXIS_TDATA),
        .m_axis_tready(fifo_IOI_to_production_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_IOI_to_production_M_AXIS_TVALID),
        .s_aclk(backup_controller_Clk),
        .s_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axis_tdata(queue_multiplexer_0_tx_data_a),
        .s_axis_tready(fifo_IOI_to_production_s_axis_tready),
        .s_axis_tuser({GND_1,GND_1,GND_1,GND_1}),
        .s_axis_tvalid(queue_multiplexer_0_tx_valid_a));
TAIGA_System_fifo_production_to_IOI_1 fifo_backup_to_IOI
       (.m_axis_tdata(fifo_backup_to_IOI_m_axis_tdata),
        .m_axis_tready(queue_multiplexer_0_rx_ready_b),
        .m_axis_tvalid(fifo_backup_to_IOI_m_axis_tvalid),
        .s_aclk(backup_controller_Clk),
        .s_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axis_tdata(axi_fifo_backup_dequeue_AXI_STR_TXD_TDATA),
        .s_axis_tready(axi_fifo_backup_dequeue_AXI_STR_TXD_TREADY),
        .s_axis_tuser({GND_1,GND_1,GND_1,GND_1}),
        .s_axis_tvalid(axi_fifo_backup_dequeue_AXI_STR_TXD_TVALID));
TAIGA_System_fifo_generator_0_0 fifo_production_to_IOI
       (.m_axis_tdata(fifo_production_to_IOI_m_axis_tdata),
        .m_axis_tready(queue_multiplexer_0_rx_ready_a),
        .m_axis_tvalid(fifo_production_to_IOI_m_axis_tvalid),
        .s_aclk(backup_controller_Clk),
        .s_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .s_axis_tdata(axi_fifo_production_AXI_STR_TXD_TDATA),
        .s_axis_tready(axi_fifo_production_AXI_STR_TXD_TREADY),
        .s_axis_tuser({GND_1,GND_1,GND_1,GND_1}),
        .s_axis_tvalid(axi_fifo_production_AXI_STR_TXD_TVALID));
local_memory_IOI_imp_15Z7RBE local_memory_IOI
       (.DLMB_abus(IO_Intermediary_dlmb_1_ABUS),
        .DLMB_addrstrobe(IO_Intermediary_dlmb_1_ADDRSTROBE),
        .DLMB_be(IO_Intermediary_dlmb_1_BE),
        .DLMB_ce(IO_Intermediary_dlmb_1_CE),
        .DLMB_readdbus(IO_Intermediary_dlmb_1_READDBUS),
        .DLMB_readstrobe(IO_Intermediary_dlmb_1_READSTROBE),
        .DLMB_ready(IO_Intermediary_dlmb_1_READY),
        .DLMB_ue(IO_Intermediary_dlmb_1_UE),
        .DLMB_wait(IO_Intermediary_dlmb_1_WAIT),
        .DLMB_writedbus(IO_Intermediary_dlmb_1_WRITEDBUS),
        .DLMB_writestrobe(IO_Intermediary_dlmb_1_WRITESTROBE),
        .ILMB_abus(IO_Intermediary_ilmb_1_ABUS),
        .ILMB_addrstrobe(IO_Intermediary_ilmb_1_ADDRSTROBE),
        .ILMB_ce(IO_Intermediary_ilmb_1_CE),
        .ILMB_readdbus(IO_Intermediary_ilmb_1_READDBUS),
        .ILMB_readstrobe(IO_Intermediary_ilmb_1_READSTROBE),
        .ILMB_ready(IO_Intermediary_ilmb_1_READY),
        .ILMB_ue(IO_Intermediary_ilmb_1_UE),
        .ILMB_wait(IO_Intermediary_ilmb_1_WAIT),
        .LMB_Clk(backup_controller_Clk),
        .LMB_Rst(rst_production_controller_100M_bus_struct_reset));
TAIGA_System_mdm_1_1 mdm_1
       (.Dbg_Capture_0(IO_Intermediary_debug_CAPTURE),
        .Dbg_Capture_1(backup_controller_debug_CAPTURE),
        .Dbg_Clk_0(IO_Intermediary_debug_CLK),
        .Dbg_Clk_1(backup_controller_debug_CLK),
        .Dbg_Reg_En_0(IO_Intermediary_debug_REG_EN),
        .Dbg_Reg_En_1(backup_controller_debug_REG_EN),
        .Dbg_Rst_0(IO_Intermediary_debug_RST),
        .Dbg_Rst_1(backup_controller_debug_RST),
        .Dbg_Shift_0(IO_Intermediary_debug_SHIFT),
        .Dbg_Shift_1(backup_controller_debug_SHIFT),
        .Dbg_TDI_0(IO_Intermediary_debug_TDI),
        .Dbg_TDI_1(backup_controller_debug_TDI),
        .Dbg_TDO_0(IO_Intermediary_debug_TDO),
        .Dbg_TDO_1(backup_controller_debug_TDO),
        .Dbg_Update_0(IO_Intermediary_debug_UPDATE),
        .Dbg_Update_1(backup_controller_debug_UPDATE),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst));
TAIGA_System_processing_system7_0_0 production_controller
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(backup_controller_Clk),
        .FCLK_RESET0_N(production_controller_FCLK_RESET0_N),
        .I2C0_SCL_I(GND_1),
        .I2C0_SDA_I(GND_1),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(backup_controller_Clk),
        .M_AXI_GP0_ARADDR(production_controller_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(production_controller_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(production_controller_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(production_controller_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(production_controller_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(production_controller_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(production_controller_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(production_controller_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(production_controller_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(production_controller_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(production_controller_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(production_controller_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(production_controller_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(production_controller_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(production_controller_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(production_controller_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(production_controller_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(production_controller_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(production_controller_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(production_controller_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(production_controller_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(production_controller_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(production_controller_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(production_controller_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(production_controller_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(production_controller_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(production_controller_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(production_controller_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(production_controller_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(production_controller_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(production_controller_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(production_controller_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(production_controller_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(production_controller_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(production_controller_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(production_controller_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(production_controller_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(production_controller_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SDIO0_WP(GND_1),
        .USB0_VBUS_PWRFAULT(GND_1));
TAIGA_System_queue_multiplexer_0_0 queue_multiplexer
       (.rx_data(queue_multiplexer_0_rx_data),
        .rx_data_a(fifo_production_to_IOI_m_axis_tdata),
        .rx_data_b(fifo_backup_to_IOI_m_axis_tdata),
        .rx_ready(axi_fifo_IOI_dequeue_axi_str_rxd_tready),
        .rx_ready_a(queue_multiplexer_0_rx_ready_a),
        .rx_ready_b(queue_multiplexer_0_rx_ready_b),
        .rx_valid(queue_multiplexer_0_rx_valid),
        .rx_valid_a(fifo_production_to_IOI_m_axis_tvalid),
        .rx_valid_b(fifo_backup_to_IOI_m_axis_tvalid),
        .switch_select(axi_gpio_trigger_gpio_io_o),
        .tx_data(axi_fifo_IOI_enqueue_axi_str_txd_tdata),
        .tx_data_a(queue_multiplexer_0_tx_data_a),
        .tx_data_b(queue_multiplexer_0_tx_data_b),
        .tx_ready(queue_multiplexer_0_tx_ready),
        .tx_ready_a(fifo_IOI_to_production_s_axis_tready),
        .tx_ready_b(fifo_IOI_to_backup_s_axis_tready),
        .tx_valid(axi_fifo_IOI_enqueue_axi_str_txd_tvalid),
        .tx_valid_a(queue_multiplexer_0_tx_valid_a),
        .tx_valid_b(queue_multiplexer_0_tx_valid_b));
TAIGA_System_rst_production_controller_100M_1 rst_production_controller_100M
       (.aux_reset_in(VCC_1),
        .bus_struct_reset(rst_production_controller_100M_bus_struct_reset),
        .dcm_locked(VCC_1),
        .ext_reset_in(production_controller_FCLK_RESET0_N),
        .interconnect_aresetn(rst_production_controller_100M_interconnect_aresetn),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .mb_reset(rst_production_controller_100M_mb_reset),
        .peripheral_aresetn(rst_production_controller_100M_peripheral_aresetn),
        .slowest_sync_clk(backup_controller_Clk));
endmodule

module TAIGA_System_IO_Intermediary_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arready,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awready,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [8:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [8:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output [6:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [6:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input [0:0]M02_ARESETN;
  output [8:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [8:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input [0:0]M03_ARESETN;
  output [8:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [8:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input [0:0]M04_ARESETN;
  output [3:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [3:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input [0:0]M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input [0:0]M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input [0:0]M07_ARESETN;
  output [8:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [8:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input [0:0]M08_ARESETN;
  output [3:0]M08_AXI_araddr;
  input M08_AXI_arready;
  output M08_AXI_arvalid;
  output [3:0]M08_AXI_awaddr;
  input M08_AXI_awready;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire [0:0]M00_ARESETN_1;
  wire M01_ACLK_1;
  wire [0:0]M01_ARESETN_1;
  wire M02_ACLK_1;
  wire [0:0]M02_ARESETN_1;
  wire M03_ACLK_1;
  wire [0:0]M03_ARESETN_1;
  wire M04_ACLK_1;
  wire [0:0]M04_ARESETN_1;
  wire M05_ACLK_1;
  wire [0:0]M05_ARESETN_1;
  wire M06_ACLK_1;
  wire [0:0]M06_ARESETN_1;
  wire M07_ACLK_1;
  wire [0:0]M07_ARESETN_1;
  wire M08_ACLK_1;
  wire [0:0]M08_ARESETN_1;
  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire axi_periph_IOI_ACLK_net;
  wire [0:0]axi_periph_IOI_ARESETN_net;
  wire [31:0]axi_periph_IOI_to_s00_couplers_ARADDR;
  wire [2:0]axi_periph_IOI_to_s00_couplers_ARPROT;
  wire [0:0]axi_periph_IOI_to_s00_couplers_ARREADY;
  wire [0:0]axi_periph_IOI_to_s00_couplers_ARVALID;
  wire [31:0]axi_periph_IOI_to_s00_couplers_AWADDR;
  wire [2:0]axi_periph_IOI_to_s00_couplers_AWPROT;
  wire [0:0]axi_periph_IOI_to_s00_couplers_AWREADY;
  wire [0:0]axi_periph_IOI_to_s00_couplers_AWVALID;
  wire [0:0]axi_periph_IOI_to_s00_couplers_BREADY;
  wire [1:0]axi_periph_IOI_to_s00_couplers_BRESP;
  wire [0:0]axi_periph_IOI_to_s00_couplers_BVALID;
  wire [31:0]axi_periph_IOI_to_s00_couplers_RDATA;
  wire [0:0]axi_periph_IOI_to_s00_couplers_RREADY;
  wire [1:0]axi_periph_IOI_to_s00_couplers_RRESP;
  wire [0:0]axi_periph_IOI_to_s00_couplers_RVALID;
  wire [31:0]axi_periph_IOI_to_s00_couplers_WDATA;
  wire [0:0]axi_periph_IOI_to_s00_couplers_WREADY;
  wire [3:0]axi_periph_IOI_to_s00_couplers_WSTRB;
  wire [0:0]axi_periph_IOI_to_s00_couplers_WVALID;
  wire [8:0]m00_couplers_to_axi_periph_IOI_ARADDR;
  wire m00_couplers_to_axi_periph_IOI_ARREADY;
  wire m00_couplers_to_axi_periph_IOI_ARVALID;
  wire [8:0]m00_couplers_to_axi_periph_IOI_AWADDR;
  wire m00_couplers_to_axi_periph_IOI_AWREADY;
  wire m00_couplers_to_axi_periph_IOI_AWVALID;
  wire m00_couplers_to_axi_periph_IOI_BREADY;
  wire [1:0]m00_couplers_to_axi_periph_IOI_BRESP;
  wire m00_couplers_to_axi_periph_IOI_BVALID;
  wire [31:0]m00_couplers_to_axi_periph_IOI_RDATA;
  wire m00_couplers_to_axi_periph_IOI_RREADY;
  wire [1:0]m00_couplers_to_axi_periph_IOI_RRESP;
  wire m00_couplers_to_axi_periph_IOI_RVALID;
  wire [31:0]m00_couplers_to_axi_periph_IOI_WDATA;
  wire m00_couplers_to_axi_periph_IOI_WREADY;
  wire [3:0]m00_couplers_to_axi_periph_IOI_WSTRB;
  wire m00_couplers_to_axi_periph_IOI_WVALID;
  wire [6:0]m01_couplers_to_axi_periph_IOI_ARADDR;
  wire m01_couplers_to_axi_periph_IOI_ARREADY;
  wire m01_couplers_to_axi_periph_IOI_ARVALID;
  wire [6:0]m01_couplers_to_axi_periph_IOI_AWADDR;
  wire m01_couplers_to_axi_periph_IOI_AWREADY;
  wire m01_couplers_to_axi_periph_IOI_AWVALID;
  wire m01_couplers_to_axi_periph_IOI_BREADY;
  wire [1:0]m01_couplers_to_axi_periph_IOI_BRESP;
  wire m01_couplers_to_axi_periph_IOI_BVALID;
  wire [31:0]m01_couplers_to_axi_periph_IOI_RDATA;
  wire m01_couplers_to_axi_periph_IOI_RREADY;
  wire [1:0]m01_couplers_to_axi_periph_IOI_RRESP;
  wire m01_couplers_to_axi_periph_IOI_RVALID;
  wire [31:0]m01_couplers_to_axi_periph_IOI_WDATA;
  wire m01_couplers_to_axi_periph_IOI_WREADY;
  wire [3:0]m01_couplers_to_axi_periph_IOI_WSTRB;
  wire m01_couplers_to_axi_periph_IOI_WVALID;
  wire [8:0]m02_couplers_to_axi_periph_IOI_ARADDR;
  wire m02_couplers_to_axi_periph_IOI_ARREADY;
  wire m02_couplers_to_axi_periph_IOI_ARVALID;
  wire [8:0]m02_couplers_to_axi_periph_IOI_AWADDR;
  wire m02_couplers_to_axi_periph_IOI_AWREADY;
  wire m02_couplers_to_axi_periph_IOI_AWVALID;
  wire m02_couplers_to_axi_periph_IOI_BREADY;
  wire [1:0]m02_couplers_to_axi_periph_IOI_BRESP;
  wire m02_couplers_to_axi_periph_IOI_BVALID;
  wire [31:0]m02_couplers_to_axi_periph_IOI_RDATA;
  wire m02_couplers_to_axi_periph_IOI_RREADY;
  wire [1:0]m02_couplers_to_axi_periph_IOI_RRESP;
  wire m02_couplers_to_axi_periph_IOI_RVALID;
  wire [31:0]m02_couplers_to_axi_periph_IOI_WDATA;
  wire m02_couplers_to_axi_periph_IOI_WREADY;
  wire [3:0]m02_couplers_to_axi_periph_IOI_WSTRB;
  wire m02_couplers_to_axi_periph_IOI_WVALID;
  wire [8:0]m03_couplers_to_axi_periph_IOI_ARADDR;
  wire m03_couplers_to_axi_periph_IOI_ARREADY;
  wire m03_couplers_to_axi_periph_IOI_ARVALID;
  wire [8:0]m03_couplers_to_axi_periph_IOI_AWADDR;
  wire m03_couplers_to_axi_periph_IOI_AWREADY;
  wire m03_couplers_to_axi_periph_IOI_AWVALID;
  wire m03_couplers_to_axi_periph_IOI_BREADY;
  wire [1:0]m03_couplers_to_axi_periph_IOI_BRESP;
  wire m03_couplers_to_axi_periph_IOI_BVALID;
  wire [31:0]m03_couplers_to_axi_periph_IOI_RDATA;
  wire m03_couplers_to_axi_periph_IOI_RREADY;
  wire [1:0]m03_couplers_to_axi_periph_IOI_RRESP;
  wire m03_couplers_to_axi_periph_IOI_RVALID;
  wire [31:0]m03_couplers_to_axi_periph_IOI_WDATA;
  wire m03_couplers_to_axi_periph_IOI_WREADY;
  wire [3:0]m03_couplers_to_axi_periph_IOI_WSTRB;
  wire m03_couplers_to_axi_periph_IOI_WVALID;
  wire [3:0]m04_couplers_to_axi_periph_IOI_ARADDR;
  wire m04_couplers_to_axi_periph_IOI_ARREADY;
  wire m04_couplers_to_axi_periph_IOI_ARVALID;
  wire [3:0]m04_couplers_to_axi_periph_IOI_AWADDR;
  wire m04_couplers_to_axi_periph_IOI_AWREADY;
  wire m04_couplers_to_axi_periph_IOI_AWVALID;
  wire m04_couplers_to_axi_periph_IOI_BREADY;
  wire [1:0]m04_couplers_to_axi_periph_IOI_BRESP;
  wire m04_couplers_to_axi_periph_IOI_BVALID;
  wire [31:0]m04_couplers_to_axi_periph_IOI_RDATA;
  wire m04_couplers_to_axi_periph_IOI_RREADY;
  wire [1:0]m04_couplers_to_axi_periph_IOI_RRESP;
  wire m04_couplers_to_axi_periph_IOI_RVALID;
  wire [31:0]m04_couplers_to_axi_periph_IOI_WDATA;
  wire m04_couplers_to_axi_periph_IOI_WREADY;
  wire [3:0]m04_couplers_to_axi_periph_IOI_WSTRB;
  wire m04_couplers_to_axi_periph_IOI_WVALID;
  wire [31:0]m05_couplers_to_axi_periph_IOI_ARADDR;
  wire m05_couplers_to_axi_periph_IOI_ARREADY;
  wire m05_couplers_to_axi_periph_IOI_ARVALID;
  wire [31:0]m05_couplers_to_axi_periph_IOI_AWADDR;
  wire m05_couplers_to_axi_periph_IOI_AWREADY;
  wire m05_couplers_to_axi_periph_IOI_AWVALID;
  wire m05_couplers_to_axi_periph_IOI_BREADY;
  wire [1:0]m05_couplers_to_axi_periph_IOI_BRESP;
  wire m05_couplers_to_axi_periph_IOI_BVALID;
  wire [31:0]m05_couplers_to_axi_periph_IOI_RDATA;
  wire m05_couplers_to_axi_periph_IOI_RREADY;
  wire [1:0]m05_couplers_to_axi_periph_IOI_RRESP;
  wire m05_couplers_to_axi_periph_IOI_RVALID;
  wire [31:0]m05_couplers_to_axi_periph_IOI_WDATA;
  wire m05_couplers_to_axi_periph_IOI_WREADY;
  wire [3:0]m05_couplers_to_axi_periph_IOI_WSTRB;
  wire m05_couplers_to_axi_periph_IOI_WVALID;
  wire [31:0]m06_couplers_to_axi_periph_IOI_ARADDR;
  wire m06_couplers_to_axi_periph_IOI_ARREADY;
  wire m06_couplers_to_axi_periph_IOI_ARVALID;
  wire [31:0]m06_couplers_to_axi_periph_IOI_AWADDR;
  wire m06_couplers_to_axi_periph_IOI_AWREADY;
  wire m06_couplers_to_axi_periph_IOI_AWVALID;
  wire m06_couplers_to_axi_periph_IOI_BREADY;
  wire [1:0]m06_couplers_to_axi_periph_IOI_BRESP;
  wire m06_couplers_to_axi_periph_IOI_BVALID;
  wire [31:0]m06_couplers_to_axi_periph_IOI_RDATA;
  wire m06_couplers_to_axi_periph_IOI_RREADY;
  wire [1:0]m06_couplers_to_axi_periph_IOI_RRESP;
  wire m06_couplers_to_axi_periph_IOI_RVALID;
  wire [31:0]m06_couplers_to_axi_periph_IOI_WDATA;
  wire m06_couplers_to_axi_periph_IOI_WREADY;
  wire [3:0]m06_couplers_to_axi_periph_IOI_WSTRB;
  wire m06_couplers_to_axi_periph_IOI_WVALID;
  wire [8:0]m07_couplers_to_axi_periph_IOI_ARADDR;
  wire m07_couplers_to_axi_periph_IOI_ARREADY;
  wire m07_couplers_to_axi_periph_IOI_ARVALID;
  wire [8:0]m07_couplers_to_axi_periph_IOI_AWADDR;
  wire m07_couplers_to_axi_periph_IOI_AWREADY;
  wire m07_couplers_to_axi_periph_IOI_AWVALID;
  wire m07_couplers_to_axi_periph_IOI_BREADY;
  wire [1:0]m07_couplers_to_axi_periph_IOI_BRESP;
  wire m07_couplers_to_axi_periph_IOI_BVALID;
  wire [31:0]m07_couplers_to_axi_periph_IOI_RDATA;
  wire m07_couplers_to_axi_periph_IOI_RREADY;
  wire [1:0]m07_couplers_to_axi_periph_IOI_RRESP;
  wire m07_couplers_to_axi_periph_IOI_RVALID;
  wire [31:0]m07_couplers_to_axi_periph_IOI_WDATA;
  wire m07_couplers_to_axi_periph_IOI_WREADY;
  wire [3:0]m07_couplers_to_axi_periph_IOI_WSTRB;
  wire m07_couplers_to_axi_periph_IOI_WVALID;
  wire [3:0]m08_couplers_to_axi_periph_IOI_ARADDR;
  wire m08_couplers_to_axi_periph_IOI_ARREADY;
  wire m08_couplers_to_axi_periph_IOI_ARVALID;
  wire [3:0]m08_couplers_to_axi_periph_IOI_AWADDR;
  wire m08_couplers_to_axi_periph_IOI_AWREADY;
  wire m08_couplers_to_axi_periph_IOI_AWVALID;
  wire m08_couplers_to_axi_periph_IOI_BREADY;
  wire [1:0]m08_couplers_to_axi_periph_IOI_BRESP;
  wire m08_couplers_to_axi_periph_IOI_BVALID;
  wire [31:0]m08_couplers_to_axi_periph_IOI_RDATA;
  wire m08_couplers_to_axi_periph_IOI_RREADY;
  wire [1:0]m08_couplers_to_axi_periph_IOI_RRESP;
  wire m08_couplers_to_axi_periph_IOI_RVALID;
  wire [31:0]m08_couplers_to_axi_periph_IOI_WDATA;
  wire m08_couplers_to_axi_periph_IOI_WREADY;
  wire [3:0]m08_couplers_to_axi_periph_IOI_WSTRB;
  wire m08_couplers_to_axi_periph_IOI_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN[0];
  assign M00_AXI_araddr[8:0] = m00_couplers_to_axi_periph_IOI_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_periph_IOI_ARVALID;
  assign M00_AXI_awaddr[8:0] = m00_couplers_to_axi_periph_IOI_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_periph_IOI_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_periph_IOI_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_periph_IOI_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_periph_IOI_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_periph_IOI_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_periph_IOI_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN[0];
  assign M01_AXI_araddr[6:0] = m01_couplers_to_axi_periph_IOI_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_periph_IOI_ARVALID;
  assign M01_AXI_awaddr[6:0] = m01_couplers_to_axi_periph_IOI_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_periph_IOI_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_periph_IOI_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_periph_IOI_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_periph_IOI_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_periph_IOI_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_periph_IOI_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN[0];
  assign M02_AXI_araddr[8:0] = m02_couplers_to_axi_periph_IOI_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_periph_IOI_ARVALID;
  assign M02_AXI_awaddr[8:0] = m02_couplers_to_axi_periph_IOI_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_periph_IOI_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_periph_IOI_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_periph_IOI_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_periph_IOI_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_periph_IOI_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_periph_IOI_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN[0];
  assign M03_AXI_araddr[8:0] = m03_couplers_to_axi_periph_IOI_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_axi_periph_IOI_ARVALID;
  assign M03_AXI_awaddr[8:0] = m03_couplers_to_axi_periph_IOI_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_axi_periph_IOI_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_axi_periph_IOI_BREADY;
  assign M03_AXI_rready = m03_couplers_to_axi_periph_IOI_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_periph_IOI_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_periph_IOI_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_axi_periph_IOI_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN[0];
  assign M04_AXI_araddr[3:0] = m04_couplers_to_axi_periph_IOI_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_axi_periph_IOI_ARVALID;
  assign M04_AXI_awaddr[3:0] = m04_couplers_to_axi_periph_IOI_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_axi_periph_IOI_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_axi_periph_IOI_BREADY;
  assign M04_AXI_rready = m04_couplers_to_axi_periph_IOI_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_periph_IOI_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_periph_IOI_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_axi_periph_IOI_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN[0];
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi_periph_IOI_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_axi_periph_IOI_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi_periph_IOI_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_axi_periph_IOI_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_axi_periph_IOI_BREADY;
  assign M05_AXI_rready = m05_couplers_to_axi_periph_IOI_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi_periph_IOI_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi_periph_IOI_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_axi_periph_IOI_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN[0];
  assign M06_AXI_araddr[31:0] = m06_couplers_to_axi_periph_IOI_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_axi_periph_IOI_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_axi_periph_IOI_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_axi_periph_IOI_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_axi_periph_IOI_BREADY;
  assign M06_AXI_rready = m06_couplers_to_axi_periph_IOI_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi_periph_IOI_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi_periph_IOI_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_axi_periph_IOI_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN[0];
  assign M07_AXI_araddr[8:0] = m07_couplers_to_axi_periph_IOI_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_axi_periph_IOI_ARVALID;
  assign M07_AXI_awaddr[8:0] = m07_couplers_to_axi_periph_IOI_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_axi_periph_IOI_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_axi_periph_IOI_BREADY;
  assign M07_AXI_rready = m07_couplers_to_axi_periph_IOI_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_axi_periph_IOI_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_axi_periph_IOI_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_axi_periph_IOI_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN[0];
  assign M08_AXI_araddr[3:0] = m08_couplers_to_axi_periph_IOI_ARADDR;
  assign M08_AXI_arvalid = m08_couplers_to_axi_periph_IOI_ARVALID;
  assign M08_AXI_awaddr[3:0] = m08_couplers_to_axi_periph_IOI_AWADDR;
  assign M08_AXI_awvalid = m08_couplers_to_axi_periph_IOI_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_axi_periph_IOI_BREADY;
  assign M08_AXI_rready = m08_couplers_to_axi_periph_IOI_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_axi_periph_IOI_WDATA;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_axi_periph_IOI_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_axi_periph_IOI_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready[0] = axi_periph_IOI_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_periph_IOI_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_periph_IOI_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_periph_IOI_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_periph_IOI_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_periph_IOI_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_periph_IOI_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_periph_IOI_to_s00_couplers_WREADY;
  assign axi_periph_IOI_ACLK_net = ACLK;
  assign axi_periph_IOI_ARESETN_net = ARESETN[0];
  assign axi_periph_IOI_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_periph_IOI_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_periph_IOI_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_periph_IOI_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_periph_IOI_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_periph_IOI_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_periph_IOI_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_periph_IOI_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_periph_IOI_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_periph_IOI_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_periph_IOI_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_periph_IOI_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_periph_IOI_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_periph_IOI_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_periph_IOI_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_periph_IOI_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_periph_IOI_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_periph_IOI_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_periph_IOI_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_periph_IOI_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_periph_IOI_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_periph_IOI_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_periph_IOI_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_periph_IOI_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_periph_IOI_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_periph_IOI_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_periph_IOI_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_periph_IOI_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_periph_IOI_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_periph_IOI_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_periph_IOI_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_periph_IOI_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_periph_IOI_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_periph_IOI_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_periph_IOI_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_periph_IOI_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_axi_periph_IOI_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_axi_periph_IOI_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_periph_IOI_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_axi_periph_IOI_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_periph_IOI_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_periph_IOI_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_axi_periph_IOI_WREADY = M03_AXI_wready;
  assign m04_couplers_to_axi_periph_IOI_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_axi_periph_IOI_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_axi_periph_IOI_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_periph_IOI_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_axi_periph_IOI_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_periph_IOI_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_periph_IOI_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_axi_periph_IOI_WREADY = M04_AXI_wready;
  assign m05_couplers_to_axi_periph_IOI_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_axi_periph_IOI_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_axi_periph_IOI_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_periph_IOI_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_axi_periph_IOI_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi_periph_IOI_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_periph_IOI_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_axi_periph_IOI_WREADY = M05_AXI_wready;
  assign m06_couplers_to_axi_periph_IOI_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_axi_periph_IOI_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_axi_periph_IOI_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_periph_IOI_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_axi_periph_IOI_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi_periph_IOI_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_periph_IOI_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_axi_periph_IOI_WREADY = M06_AXI_wready;
  assign m07_couplers_to_axi_periph_IOI_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_axi_periph_IOI_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_axi_periph_IOI_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_axi_periph_IOI_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_axi_periph_IOI_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_axi_periph_IOI_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_axi_periph_IOI_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_axi_periph_IOI_WREADY = M07_AXI_wready;
  assign m08_couplers_to_axi_periph_IOI_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_axi_periph_IOI_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_axi_periph_IOI_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_axi_periph_IOI_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_axi_periph_IOI_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_axi_periph_IOI_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_axi_periph_IOI_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_axi_periph_IOI_WREADY = M08_AXI_wready;
m00_couplers_imp_YTVM2O m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_periph_IOI_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_periph_IOI_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_periph_IOI_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_periph_IOI_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_periph_IOI_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_periph_IOI_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_periph_IOI_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_periph_IOI_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_periph_IOI_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_periph_IOI_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_periph_IOI_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_periph_IOI_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_periph_IOI_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_periph_IOI_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_periph_IOI_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_periph_IOI_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_periph_IOI_WVALID),
        .S_ACLK(axi_periph_IOI_ACLK_net),
        .S_ARESETN(axi_periph_IOI_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR[8:0]),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR[8:0]),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
m01_couplers_imp_TLO0N4 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_periph_IOI_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_periph_IOI_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_periph_IOI_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_periph_IOI_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_periph_IOI_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_periph_IOI_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_periph_IOI_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_periph_IOI_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_periph_IOI_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_periph_IOI_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_periph_IOI_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_periph_IOI_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_periph_IOI_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_periph_IOI_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_periph_IOI_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_periph_IOI_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_periph_IOI_WVALID),
        .S_ACLK(axi_periph_IOI_ACLK_net),
        .S_ARESETN(axi_periph_IOI_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR[38:32]),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR[38:32]),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
m02_couplers_imp_N9GQGW m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_periph_IOI_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_periph_IOI_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_periph_IOI_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_periph_IOI_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_periph_IOI_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_periph_IOI_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_periph_IOI_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_periph_IOI_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_periph_IOI_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_periph_IOI_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_periph_IOI_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_periph_IOI_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_periph_IOI_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_periph_IOI_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_periph_IOI_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_periph_IOI_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_periph_IOI_WVALID),
        .S_ACLK(axi_periph_IOI_ACLK_net),
        .S_ARESETN(axi_periph_IOI_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR[72:64]),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR[72:64]),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
m03_couplers_imp_J56THC m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_periph_IOI_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_periph_IOI_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_periph_IOI_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_periph_IOI_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_periph_IOI_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_periph_IOI_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_periph_IOI_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_periph_IOI_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_periph_IOI_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_periph_IOI_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_periph_IOI_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_periph_IOI_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_periph_IOI_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_periph_IOI_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_periph_IOI_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_periph_IOI_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_periph_IOI_WVALID),
        .S_ACLK(axi_periph_IOI_ACLK_net),
        .S_ARESETN(axi_periph_IOI_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR[104:96]),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR[104:96]),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
m04_couplers_imp_9743GG m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_axi_periph_IOI_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_periph_IOI_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_periph_IOI_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_periph_IOI_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_periph_IOI_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_periph_IOI_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_periph_IOI_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_periph_IOI_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_periph_IOI_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_periph_IOI_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_periph_IOI_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_periph_IOI_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_periph_IOI_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_periph_IOI_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_periph_IOI_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_periph_IOI_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_periph_IOI_WVALID),
        .S_ACLK(axi_periph_IOI_ACLK_net),
        .S_ARESETN(axi_periph_IOI_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR[131:128]),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR[131:128]),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
m05_couplers_imp_EZYCZK m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_axi_periph_IOI_ARADDR),
        .M_AXI_arready(m05_couplers_to_axi_periph_IOI_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi_periph_IOI_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_periph_IOI_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi_periph_IOI_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi_periph_IOI_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_periph_IOI_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_periph_IOI_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_periph_IOI_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_periph_IOI_RDATA),
        .M_AXI_rready(m05_couplers_to_axi_periph_IOI_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_periph_IOI_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_periph_IOI_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_periph_IOI_WDATA),
        .M_AXI_wready(m05_couplers_to_axi_periph_IOI_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_periph_IOI_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_periph_IOI_WVALID),
        .S_ACLK(axi_periph_IOI_ACLK_net),
        .S_ARESETN(axi_periph_IOI_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
m06_couplers_imp_4AGV7K m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_axi_periph_IOI_ARADDR),
        .M_AXI_arready(m06_couplers_to_axi_periph_IOI_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi_periph_IOI_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_periph_IOI_AWADDR),
        .M_AXI_awready(m06_couplers_to_axi_periph_IOI_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi_periph_IOI_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_periph_IOI_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_periph_IOI_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_periph_IOI_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_periph_IOI_RDATA),
        .M_AXI_rready(m06_couplers_to_axi_periph_IOI_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_periph_IOI_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_periph_IOI_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_periph_IOI_WDATA),
        .M_AXI_wready(m06_couplers_to_axi_periph_IOI_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi_periph_IOI_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi_periph_IOI_WVALID),
        .S_ACLK(axi_periph_IOI_ACLK_net),
        .S_ARESETN(axi_periph_IOI_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
m07_couplers_imp_6RFB28 m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_axi_periph_IOI_ARADDR),
        .M_AXI_arready(m07_couplers_to_axi_periph_IOI_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_axi_periph_IOI_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_axi_periph_IOI_AWADDR),
        .M_AXI_awready(m07_couplers_to_axi_periph_IOI_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_axi_periph_IOI_AWVALID),
        .M_AXI_bready(m07_couplers_to_axi_periph_IOI_BREADY),
        .M_AXI_bresp(m07_couplers_to_axi_periph_IOI_BRESP),
        .M_AXI_bvalid(m07_couplers_to_axi_periph_IOI_BVALID),
        .M_AXI_rdata(m07_couplers_to_axi_periph_IOI_RDATA),
        .M_AXI_rready(m07_couplers_to_axi_periph_IOI_RREADY),
        .M_AXI_rresp(m07_couplers_to_axi_periph_IOI_RRESP),
        .M_AXI_rvalid(m07_couplers_to_axi_periph_IOI_RVALID),
        .M_AXI_wdata(m07_couplers_to_axi_periph_IOI_WDATA),
        .M_AXI_wready(m07_couplers_to_axi_periph_IOI_WREADY),
        .M_AXI_wstrb(m07_couplers_to_axi_periph_IOI_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_axi_periph_IOI_WVALID),
        .S_ACLK(axi_periph_IOI_ACLK_net),
        .S_ARESETN(axi_periph_IOI_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR[232:224]),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR[232:224]),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
m08_couplers_imp_1ILGM0W m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_axi_periph_IOI_ARADDR),
        .M_AXI_arready(m08_couplers_to_axi_periph_IOI_ARREADY),
        .M_AXI_arvalid(m08_couplers_to_axi_periph_IOI_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_axi_periph_IOI_AWADDR),
        .M_AXI_awready(m08_couplers_to_axi_periph_IOI_AWREADY),
        .M_AXI_awvalid(m08_couplers_to_axi_periph_IOI_AWVALID),
        .M_AXI_bready(m08_couplers_to_axi_periph_IOI_BREADY),
        .M_AXI_bresp(m08_couplers_to_axi_periph_IOI_BRESP),
        .M_AXI_bvalid(m08_couplers_to_axi_periph_IOI_BVALID),
        .M_AXI_rdata(m08_couplers_to_axi_periph_IOI_RDATA),
        .M_AXI_rready(m08_couplers_to_axi_periph_IOI_RREADY),
        .M_AXI_rresp(m08_couplers_to_axi_periph_IOI_RRESP),
        .M_AXI_rvalid(m08_couplers_to_axi_periph_IOI_RVALID),
        .M_AXI_wdata(m08_couplers_to_axi_periph_IOI_WDATA),
        .M_AXI_wready(m08_couplers_to_axi_periph_IOI_WREADY),
        .M_AXI_wstrb(m08_couplers_to_axi_periph_IOI_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_axi_periph_IOI_WVALID),
        .S_ACLK(axi_periph_IOI_ACLK_net),
        .S_ARESETN(axi_periph_IOI_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR[259:256]),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR[259:256]),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
s00_couplers_imp_QVIVKJ s00_couplers
       (.M_ACLK(axi_periph_IOI_ACLK_net),
        .M_ARESETN(axi_periph_IOI_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_periph_IOI_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_periph_IOI_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_periph_IOI_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_periph_IOI_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_periph_IOI_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_periph_IOI_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_periph_IOI_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_periph_IOI_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_periph_IOI_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_periph_IOI_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_periph_IOI_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_periph_IOI_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_periph_IOI_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_periph_IOI_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_periph_IOI_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_periph_IOI_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_periph_IOI_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_periph_IOI_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_periph_IOI_to_s00_couplers_WVALID));
TAIGA_System_xbar_0 xbar
       (.aclk(axi_periph_IOI_ACLK_net),
        .aresetn(axi_periph_IOI_ARESETN_net),
        .m_axi_araddr({xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module TAIGA_System_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [8:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [8:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire [0:0]M00_ARESETN_1;
  wire M01_ACLK_1;
  wire [0:0]M01_ARESETN_1;
  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire axi_periph_production_controller_ACLK_net;
  wire [0:0]axi_periph_production_controller_ARESETN_net;
  wire [31:0]axi_periph_production_controller_to_s00_couplers_ARADDR;
  wire [1:0]axi_periph_production_controller_to_s00_couplers_ARBURST;
  wire [3:0]axi_periph_production_controller_to_s00_couplers_ARCACHE;
  wire [11:0]axi_periph_production_controller_to_s00_couplers_ARID;
  wire [3:0]axi_periph_production_controller_to_s00_couplers_ARLEN;
  wire [1:0]axi_periph_production_controller_to_s00_couplers_ARLOCK;
  wire [2:0]axi_periph_production_controller_to_s00_couplers_ARPROT;
  wire [3:0]axi_periph_production_controller_to_s00_couplers_ARQOS;
  wire axi_periph_production_controller_to_s00_couplers_ARREADY;
  wire [2:0]axi_periph_production_controller_to_s00_couplers_ARSIZE;
  wire axi_periph_production_controller_to_s00_couplers_ARVALID;
  wire [31:0]axi_periph_production_controller_to_s00_couplers_AWADDR;
  wire [1:0]axi_periph_production_controller_to_s00_couplers_AWBURST;
  wire [3:0]axi_periph_production_controller_to_s00_couplers_AWCACHE;
  wire [11:0]axi_periph_production_controller_to_s00_couplers_AWID;
  wire [3:0]axi_periph_production_controller_to_s00_couplers_AWLEN;
  wire [1:0]axi_periph_production_controller_to_s00_couplers_AWLOCK;
  wire [2:0]axi_periph_production_controller_to_s00_couplers_AWPROT;
  wire [3:0]axi_periph_production_controller_to_s00_couplers_AWQOS;
  wire axi_periph_production_controller_to_s00_couplers_AWREADY;
  wire [2:0]axi_periph_production_controller_to_s00_couplers_AWSIZE;
  wire axi_periph_production_controller_to_s00_couplers_AWVALID;
  wire [11:0]axi_periph_production_controller_to_s00_couplers_BID;
  wire axi_periph_production_controller_to_s00_couplers_BREADY;
  wire [1:0]axi_periph_production_controller_to_s00_couplers_BRESP;
  wire axi_periph_production_controller_to_s00_couplers_BVALID;
  wire [31:0]axi_periph_production_controller_to_s00_couplers_RDATA;
  wire [11:0]axi_periph_production_controller_to_s00_couplers_RID;
  wire axi_periph_production_controller_to_s00_couplers_RLAST;
  wire axi_periph_production_controller_to_s00_couplers_RREADY;
  wire [1:0]axi_periph_production_controller_to_s00_couplers_RRESP;
  wire axi_periph_production_controller_to_s00_couplers_RVALID;
  wire [31:0]axi_periph_production_controller_to_s00_couplers_WDATA;
  wire [11:0]axi_periph_production_controller_to_s00_couplers_WID;
  wire axi_periph_production_controller_to_s00_couplers_WLAST;
  wire axi_periph_production_controller_to_s00_couplers_WREADY;
  wire [3:0]axi_periph_production_controller_to_s00_couplers_WSTRB;
  wire axi_periph_production_controller_to_s00_couplers_WVALID;
  wire [8:0]m00_couplers_to_axi_periph_production_controller_ARADDR;
  wire m00_couplers_to_axi_periph_production_controller_ARREADY;
  wire m00_couplers_to_axi_periph_production_controller_ARVALID;
  wire [8:0]m00_couplers_to_axi_periph_production_controller_AWADDR;
  wire m00_couplers_to_axi_periph_production_controller_AWREADY;
  wire m00_couplers_to_axi_periph_production_controller_AWVALID;
  wire m00_couplers_to_axi_periph_production_controller_BREADY;
  wire [1:0]m00_couplers_to_axi_periph_production_controller_BRESP;
  wire m00_couplers_to_axi_periph_production_controller_BVALID;
  wire [31:0]m00_couplers_to_axi_periph_production_controller_RDATA;
  wire m00_couplers_to_axi_periph_production_controller_RREADY;
  wire [1:0]m00_couplers_to_axi_periph_production_controller_RRESP;
  wire m00_couplers_to_axi_periph_production_controller_RVALID;
  wire [31:0]m00_couplers_to_axi_periph_production_controller_WDATA;
  wire m00_couplers_to_axi_periph_production_controller_WREADY;
  wire [3:0]m00_couplers_to_axi_periph_production_controller_WSTRB;
  wire m00_couplers_to_axi_periph_production_controller_WVALID;
  wire [31:0]m01_couplers_to_axi_periph_production_controller_ARADDR;
  wire [0:0]m01_couplers_to_axi_periph_production_controller_ARREADY;
  wire [0:0]m01_couplers_to_axi_periph_production_controller_ARVALID;
  wire [31:0]m01_couplers_to_axi_periph_production_controller_AWADDR;
  wire [0:0]m01_couplers_to_axi_periph_production_controller_AWREADY;
  wire [0:0]m01_couplers_to_axi_periph_production_controller_AWVALID;
  wire [0:0]m01_couplers_to_axi_periph_production_controller_BREADY;
  wire [1:0]m01_couplers_to_axi_periph_production_controller_BRESP;
  wire [0:0]m01_couplers_to_axi_periph_production_controller_BVALID;
  wire [31:0]m01_couplers_to_axi_periph_production_controller_RDATA;
  wire [0:0]m01_couplers_to_axi_periph_production_controller_RREADY;
  wire [1:0]m01_couplers_to_axi_periph_production_controller_RRESP;
  wire [0:0]m01_couplers_to_axi_periph_production_controller_RVALID;
  wire [31:0]m01_couplers_to_axi_periph_production_controller_WDATA;
  wire [0:0]m01_couplers_to_axi_periph_production_controller_WREADY;
  wire [3:0]m01_couplers_to_axi_periph_production_controller_WSTRB;
  wire [0:0]m01_couplers_to_axi_periph_production_controller_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN[0];
  assign M00_AXI_araddr[8:0] = m00_couplers_to_axi_periph_production_controller_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_periph_production_controller_ARVALID;
  assign M00_AXI_awaddr[8:0] = m00_couplers_to_axi_periph_production_controller_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_periph_production_controller_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_periph_production_controller_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_periph_production_controller_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_periph_production_controller_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_periph_production_controller_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_periph_production_controller_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN[0];
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_periph_production_controller_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_periph_production_controller_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_periph_production_controller_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_periph_production_controller_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_periph_production_controller_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_periph_production_controller_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_periph_production_controller_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_periph_production_controller_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_periph_production_controller_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready = axi_periph_production_controller_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_periph_production_controller_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = axi_periph_production_controller_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_periph_production_controller_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_periph_production_controller_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_periph_production_controller_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = axi_periph_production_controller_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_periph_production_controller_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_periph_production_controller_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_periph_production_controller_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_periph_production_controller_to_s00_couplers_WREADY;
  assign axi_periph_production_controller_ACLK_net = ACLK;
  assign axi_periph_production_controller_ARESETN_net = ARESETN[0];
  assign axi_periph_production_controller_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_periph_production_controller_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_periph_production_controller_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_periph_production_controller_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign axi_periph_production_controller_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_periph_production_controller_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_periph_production_controller_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_periph_production_controller_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_periph_production_controller_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_periph_production_controller_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_periph_production_controller_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_periph_production_controller_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_periph_production_controller_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_periph_production_controller_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign axi_periph_production_controller_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_periph_production_controller_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_periph_production_controller_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_periph_production_controller_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_periph_production_controller_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_periph_production_controller_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_periph_production_controller_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_periph_production_controller_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_periph_production_controller_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_periph_production_controller_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign axi_periph_production_controller_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_periph_production_controller_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_periph_production_controller_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_periph_production_controller_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_periph_production_controller_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_periph_production_controller_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_periph_production_controller_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_periph_production_controller_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_periph_production_controller_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_periph_production_controller_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_periph_production_controller_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_periph_production_controller_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_periph_production_controller_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_periph_production_controller_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_periph_production_controller_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_periph_production_controller_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_periph_production_controller_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_periph_production_controller_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_periph_production_controller_WREADY = M01_AXI_wready[0];
m00_couplers_imp_MYMUCK m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_periph_production_controller_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_periph_production_controller_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_periph_production_controller_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_periph_production_controller_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_periph_production_controller_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_periph_production_controller_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_periph_production_controller_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_periph_production_controller_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_periph_production_controller_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_periph_production_controller_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_periph_production_controller_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_periph_production_controller_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_periph_production_controller_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_periph_production_controller_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_periph_production_controller_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_periph_production_controller_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_periph_production_controller_WVALID),
        .S_ACLK(axi_periph_production_controller_ACLK_net),
        .S_ARESETN(axi_periph_production_controller_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR[8:0]),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR[8:0]),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
m01_couplers_imp_JECGRO m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_periph_production_controller_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_periph_production_controller_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_periph_production_controller_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_periph_production_controller_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_periph_production_controller_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_periph_production_controller_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_periph_production_controller_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_periph_production_controller_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_periph_production_controller_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_periph_production_controller_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_periph_production_controller_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_periph_production_controller_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_periph_production_controller_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_periph_production_controller_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_periph_production_controller_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_periph_production_controller_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_periph_production_controller_WVALID),
        .S_ACLK(axi_periph_production_controller_ACLK_net),
        .S_ARESETN(axi_periph_production_controller_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
s00_couplers_imp_M356UV s00_couplers
       (.M_ACLK(axi_periph_production_controller_ACLK_net),
        .M_ARESETN(axi_periph_production_controller_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_periph_production_controller_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_periph_production_controller_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_periph_production_controller_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_periph_production_controller_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_periph_production_controller_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_periph_production_controller_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_periph_production_controller_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_periph_production_controller_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_periph_production_controller_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_periph_production_controller_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_periph_production_controller_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_periph_production_controller_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_periph_production_controller_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_periph_production_controller_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_periph_production_controller_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_periph_production_controller_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_periph_production_controller_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_periph_production_controller_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_periph_production_controller_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_periph_production_controller_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_periph_production_controller_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_periph_production_controller_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_periph_production_controller_to_s00_couplers_BID),
        .S_AXI_bready(axi_periph_production_controller_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_periph_production_controller_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_periph_production_controller_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_periph_production_controller_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_periph_production_controller_to_s00_couplers_RID),
        .S_AXI_rlast(axi_periph_production_controller_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_periph_production_controller_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_periph_production_controller_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_periph_production_controller_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_periph_production_controller_to_s00_couplers_WDATA),
        .S_AXI_wid(axi_periph_production_controller_to_s00_couplers_WID),
        .S_AXI_wlast(axi_periph_production_controller_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_periph_production_controller_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_periph_production_controller_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_periph_production_controller_to_s00_couplers_WVALID));
TAIGA_System_xbar_2 xbar
       (.aclk(axi_periph_production_controller_ACLK_net),
        .aresetn(axi_periph_production_controller_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module TAIGA_System_backup_controller_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input [0:0]ARESETN;
  input M00_ACLK;
  input [0:0]M00_ARESETN;
  output [8:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [8:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input [0:0]M01_ARESETN;
  output [4:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [4:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input [0:0]M02_ARESETN;
  output [8:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [8:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input [0:0]M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input S00_ACLK;
  input [0:0]S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire [0:0]M00_ARESETN_1;
  wire M01_ACLK_1;
  wire [0:0]M01_ARESETN_1;
  wire M02_ACLK_1;
  wire [0:0]M02_ARESETN_1;
  wire M03_ACLK_1;
  wire [0:0]M03_ARESETN_1;
  wire S00_ACLK_1;
  wire [0:0]S00_ARESETN_1;
  wire axi_periph_backup_controller_ACLK_net;
  wire [0:0]axi_periph_backup_controller_ARESETN_net;
  wire [31:0]axi_periph_backup_controller_to_s00_couplers_ARADDR;
  wire [2:0]axi_periph_backup_controller_to_s00_couplers_ARPROT;
  wire [0:0]axi_periph_backup_controller_to_s00_couplers_ARREADY;
  wire [0:0]axi_periph_backup_controller_to_s00_couplers_ARVALID;
  wire [31:0]axi_periph_backup_controller_to_s00_couplers_AWADDR;
  wire [2:0]axi_periph_backup_controller_to_s00_couplers_AWPROT;
  wire [0:0]axi_periph_backup_controller_to_s00_couplers_AWREADY;
  wire [0:0]axi_periph_backup_controller_to_s00_couplers_AWVALID;
  wire [0:0]axi_periph_backup_controller_to_s00_couplers_BREADY;
  wire [1:0]axi_periph_backup_controller_to_s00_couplers_BRESP;
  wire [0:0]axi_periph_backup_controller_to_s00_couplers_BVALID;
  wire [31:0]axi_periph_backup_controller_to_s00_couplers_RDATA;
  wire [0:0]axi_periph_backup_controller_to_s00_couplers_RREADY;
  wire [1:0]axi_periph_backup_controller_to_s00_couplers_RRESP;
  wire [0:0]axi_periph_backup_controller_to_s00_couplers_RVALID;
  wire [31:0]axi_periph_backup_controller_to_s00_couplers_WDATA;
  wire [0:0]axi_periph_backup_controller_to_s00_couplers_WREADY;
  wire [3:0]axi_periph_backup_controller_to_s00_couplers_WSTRB;
  wire [0:0]axi_periph_backup_controller_to_s00_couplers_WVALID;
  wire [8:0]m00_couplers_to_axi_periph_backup_controller_ARADDR;
  wire m00_couplers_to_axi_periph_backup_controller_ARREADY;
  wire m00_couplers_to_axi_periph_backup_controller_ARVALID;
  wire [8:0]m00_couplers_to_axi_periph_backup_controller_AWADDR;
  wire m00_couplers_to_axi_periph_backup_controller_AWREADY;
  wire m00_couplers_to_axi_periph_backup_controller_AWVALID;
  wire m00_couplers_to_axi_periph_backup_controller_BREADY;
  wire [1:0]m00_couplers_to_axi_periph_backup_controller_BRESP;
  wire m00_couplers_to_axi_periph_backup_controller_BVALID;
  wire [31:0]m00_couplers_to_axi_periph_backup_controller_RDATA;
  wire m00_couplers_to_axi_periph_backup_controller_RREADY;
  wire [1:0]m00_couplers_to_axi_periph_backup_controller_RRESP;
  wire m00_couplers_to_axi_periph_backup_controller_RVALID;
  wire [31:0]m00_couplers_to_axi_periph_backup_controller_WDATA;
  wire m00_couplers_to_axi_periph_backup_controller_WREADY;
  wire [3:0]m00_couplers_to_axi_periph_backup_controller_WSTRB;
  wire m00_couplers_to_axi_periph_backup_controller_WVALID;
  wire [4:0]m01_couplers_to_axi_periph_backup_controller_ARADDR;
  wire m01_couplers_to_axi_periph_backup_controller_ARREADY;
  wire m01_couplers_to_axi_periph_backup_controller_ARVALID;
  wire [4:0]m01_couplers_to_axi_periph_backup_controller_AWADDR;
  wire m01_couplers_to_axi_periph_backup_controller_AWREADY;
  wire m01_couplers_to_axi_periph_backup_controller_AWVALID;
  wire m01_couplers_to_axi_periph_backup_controller_BREADY;
  wire [1:0]m01_couplers_to_axi_periph_backup_controller_BRESP;
  wire m01_couplers_to_axi_periph_backup_controller_BVALID;
  wire [31:0]m01_couplers_to_axi_periph_backup_controller_RDATA;
  wire m01_couplers_to_axi_periph_backup_controller_RREADY;
  wire [1:0]m01_couplers_to_axi_periph_backup_controller_RRESP;
  wire m01_couplers_to_axi_periph_backup_controller_RVALID;
  wire [31:0]m01_couplers_to_axi_periph_backup_controller_WDATA;
  wire m01_couplers_to_axi_periph_backup_controller_WREADY;
  wire [3:0]m01_couplers_to_axi_periph_backup_controller_WSTRB;
  wire m01_couplers_to_axi_periph_backup_controller_WVALID;
  wire [8:0]m02_couplers_to_axi_periph_backup_controller_ARADDR;
  wire m02_couplers_to_axi_periph_backup_controller_ARREADY;
  wire m02_couplers_to_axi_periph_backup_controller_ARVALID;
  wire [8:0]m02_couplers_to_axi_periph_backup_controller_AWADDR;
  wire m02_couplers_to_axi_periph_backup_controller_AWREADY;
  wire m02_couplers_to_axi_periph_backup_controller_AWVALID;
  wire m02_couplers_to_axi_periph_backup_controller_BREADY;
  wire [1:0]m02_couplers_to_axi_periph_backup_controller_BRESP;
  wire m02_couplers_to_axi_periph_backup_controller_BVALID;
  wire [31:0]m02_couplers_to_axi_periph_backup_controller_RDATA;
  wire m02_couplers_to_axi_periph_backup_controller_RREADY;
  wire [1:0]m02_couplers_to_axi_periph_backup_controller_RRESP;
  wire m02_couplers_to_axi_periph_backup_controller_RVALID;
  wire [31:0]m02_couplers_to_axi_periph_backup_controller_WDATA;
  wire m02_couplers_to_axi_periph_backup_controller_WREADY;
  wire [3:0]m02_couplers_to_axi_periph_backup_controller_WSTRB;
  wire m02_couplers_to_axi_periph_backup_controller_WVALID;
  wire [31:0]m03_couplers_to_axi_periph_backup_controller_ARADDR;
  wire [0:0]m03_couplers_to_axi_periph_backup_controller_ARREADY;
  wire [0:0]m03_couplers_to_axi_periph_backup_controller_ARVALID;
  wire [31:0]m03_couplers_to_axi_periph_backup_controller_AWADDR;
  wire [0:0]m03_couplers_to_axi_periph_backup_controller_AWREADY;
  wire [0:0]m03_couplers_to_axi_periph_backup_controller_AWVALID;
  wire [0:0]m03_couplers_to_axi_periph_backup_controller_BREADY;
  wire [1:0]m03_couplers_to_axi_periph_backup_controller_BRESP;
  wire [0:0]m03_couplers_to_axi_periph_backup_controller_BVALID;
  wire [31:0]m03_couplers_to_axi_periph_backup_controller_RDATA;
  wire [0:0]m03_couplers_to_axi_periph_backup_controller_RREADY;
  wire [1:0]m03_couplers_to_axi_periph_backup_controller_RRESP;
  wire [0:0]m03_couplers_to_axi_periph_backup_controller_RVALID;
  wire [31:0]m03_couplers_to_axi_periph_backup_controller_WDATA;
  wire [0:0]m03_couplers_to_axi_periph_backup_controller_WREADY;
  wire [3:0]m03_couplers_to_axi_periph_backup_controller_WSTRB;
  wire [0:0]m03_couplers_to_axi_periph_backup_controller_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN[0];
  assign M00_AXI_araddr[8:0] = m00_couplers_to_axi_periph_backup_controller_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_periph_backup_controller_ARVALID;
  assign M00_AXI_awaddr[8:0] = m00_couplers_to_axi_periph_backup_controller_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_periph_backup_controller_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_periph_backup_controller_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_periph_backup_controller_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_periph_backup_controller_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_periph_backup_controller_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_periph_backup_controller_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN[0];
  assign M01_AXI_araddr[4:0] = m01_couplers_to_axi_periph_backup_controller_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_periph_backup_controller_ARVALID;
  assign M01_AXI_awaddr[4:0] = m01_couplers_to_axi_periph_backup_controller_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_periph_backup_controller_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_periph_backup_controller_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_periph_backup_controller_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_periph_backup_controller_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_periph_backup_controller_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_periph_backup_controller_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN[0];
  assign M02_AXI_araddr[8:0] = m02_couplers_to_axi_periph_backup_controller_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_periph_backup_controller_ARVALID;
  assign M02_AXI_awaddr[8:0] = m02_couplers_to_axi_periph_backup_controller_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_periph_backup_controller_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_periph_backup_controller_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_periph_backup_controller_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_periph_backup_controller_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_periph_backup_controller_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_periph_backup_controller_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN[0];
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_periph_backup_controller_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi_periph_backup_controller_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_periph_backup_controller_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi_periph_backup_controller_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi_periph_backup_controller_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi_periph_backup_controller_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_periph_backup_controller_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_periph_backup_controller_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi_periph_backup_controller_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN[0];
  assign S00_AXI_arready[0] = axi_periph_backup_controller_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_periph_backup_controller_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_periph_backup_controller_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_periph_backup_controller_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_periph_backup_controller_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_periph_backup_controller_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_periph_backup_controller_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_periph_backup_controller_to_s00_couplers_WREADY;
  assign axi_periph_backup_controller_ACLK_net = ACLK;
  assign axi_periph_backup_controller_ARESETN_net = ARESETN[0];
  assign axi_periph_backup_controller_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_periph_backup_controller_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_periph_backup_controller_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_periph_backup_controller_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_periph_backup_controller_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_periph_backup_controller_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_periph_backup_controller_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_periph_backup_controller_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_periph_backup_controller_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_periph_backup_controller_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_periph_backup_controller_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_periph_backup_controller_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_periph_backup_controller_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_periph_backup_controller_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_periph_backup_controller_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_periph_backup_controller_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_periph_backup_controller_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_periph_backup_controller_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_periph_backup_controller_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_periph_backup_controller_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_periph_backup_controller_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_periph_backup_controller_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_periph_backup_controller_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_periph_backup_controller_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_periph_backup_controller_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_periph_backup_controller_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_periph_backup_controller_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_periph_backup_controller_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_periph_backup_controller_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_periph_backup_controller_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_periph_backup_controller_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_periph_backup_controller_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_periph_backup_controller_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_periph_backup_controller_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_periph_backup_controller_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_periph_backup_controller_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi_periph_backup_controller_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi_periph_backup_controller_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_periph_backup_controller_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi_periph_backup_controller_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_periph_backup_controller_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_periph_backup_controller_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi_periph_backup_controller_WREADY = M03_AXI_wready[0];
m00_couplers_imp_JGH9NQ m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_periph_backup_controller_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_periph_backup_controller_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_periph_backup_controller_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_periph_backup_controller_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_periph_backup_controller_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_periph_backup_controller_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_periph_backup_controller_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_periph_backup_controller_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_periph_backup_controller_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_periph_backup_controller_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_periph_backup_controller_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_periph_backup_controller_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_periph_backup_controller_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_periph_backup_controller_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_periph_backup_controller_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_periph_backup_controller_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_periph_backup_controller_WVALID),
        .S_ACLK(axi_periph_backup_controller_ACLK_net),
        .S_ARESETN(axi_periph_backup_controller_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR[8:0]),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR[8:0]),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
m01_couplers_imp_MHFLK6 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_periph_backup_controller_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_periph_backup_controller_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_periph_backup_controller_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_periph_backup_controller_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_periph_backup_controller_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_periph_backup_controller_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_periph_backup_controller_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_periph_backup_controller_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_periph_backup_controller_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_periph_backup_controller_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_periph_backup_controller_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_periph_backup_controller_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_periph_backup_controller_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_periph_backup_controller_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_periph_backup_controller_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_periph_backup_controller_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_periph_backup_controller_WVALID),
        .S_ACLK(axi_periph_backup_controller_ACLK_net),
        .S_ARESETN(axi_periph_backup_controller_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR[36:32]),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR[36:32]),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
m02_couplers_imp_SZ7IXY m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_periph_backup_controller_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_periph_backup_controller_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_periph_backup_controller_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_periph_backup_controller_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_periph_backup_controller_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_periph_backup_controller_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_periph_backup_controller_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_periph_backup_controller_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_periph_backup_controller_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_periph_backup_controller_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_periph_backup_controller_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_periph_backup_controller_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_periph_backup_controller_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_periph_backup_controller_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_periph_backup_controller_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_periph_backup_controller_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_periph_backup_controller_WVALID),
        .S_ACLK(axi_periph_backup_controller_ACLK_net),
        .S_ARESETN(axi_periph_backup_controller_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR[72:64]),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR[72:64]),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
m03_couplers_imp_ZC09YE m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_periph_backup_controller_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi_periph_backup_controller_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_periph_backup_controller_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_periph_backup_controller_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi_periph_backup_controller_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_periph_backup_controller_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_periph_backup_controller_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_periph_backup_controller_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_periph_backup_controller_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_periph_backup_controller_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_periph_backup_controller_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_periph_backup_controller_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_periph_backup_controller_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_periph_backup_controller_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_periph_backup_controller_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_periph_backup_controller_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_periph_backup_controller_WVALID),
        .S_ACLK(axi_periph_backup_controller_ACLK_net),
        .S_ARESETN(axi_periph_backup_controller_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
s00_couplers_imp_PDSNHX s00_couplers
       (.M_ACLK(axi_periph_backup_controller_ACLK_net),
        .M_ARESETN(axi_periph_backup_controller_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_periph_backup_controller_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_periph_backup_controller_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_periph_backup_controller_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_periph_backup_controller_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_periph_backup_controller_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_periph_backup_controller_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_periph_backup_controller_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_periph_backup_controller_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_periph_backup_controller_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_periph_backup_controller_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_periph_backup_controller_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_periph_backup_controller_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_periph_backup_controller_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_periph_backup_controller_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_periph_backup_controller_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_periph_backup_controller_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_periph_backup_controller_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_periph_backup_controller_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_periph_backup_controller_to_s00_couplers_WVALID));
TAIGA_System_xbar_1 xbar
       (.aclk(axi_periph_backup_controller_ACLK_net),
        .aresetn(axi_periph_backup_controller_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module backup_controller_local_memory_imp_2FVAXH
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    LMB_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input [0:0]LMB_Rst;

  wire GND_1;
  wire backup_controller_Clk;
  wire [0:0]backup_controller_LMB_Rst;
  wire [0:31]backup_controller_dlmb_ABUS;
  wire backup_controller_dlmb_ADDRSTROBE;
  wire [0:3]backup_controller_dlmb_BE;
  wire backup_controller_dlmb_CE;
  wire [0:31]backup_controller_dlmb_READDBUS;
  wire backup_controller_dlmb_READSTROBE;
  wire backup_controller_dlmb_READY;
  wire backup_controller_dlmb_UE;
  wire backup_controller_dlmb_WAIT;
  wire [0:31]backup_controller_dlmb_WRITEDBUS;
  wire backup_controller_dlmb_WRITESTROBE;
  wire [0:31]backup_controller_dlmb_bus_ABUS;
  wire backup_controller_dlmb_bus_ADDRSTROBE;
  wire [0:3]backup_controller_dlmb_bus_BE;
  wire backup_controller_dlmb_bus_CE;
  wire [0:31]backup_controller_dlmb_bus_READDBUS;
  wire backup_controller_dlmb_bus_READSTROBE;
  wire backup_controller_dlmb_bus_READY;
  wire backup_controller_dlmb_bus_UE;
  wire backup_controller_dlmb_bus_WAIT;
  wire [0:31]backup_controller_dlmb_bus_WRITEDBUS;
  wire backup_controller_dlmb_bus_WRITESTROBE;
  wire [0:31]backup_controller_dlmb_cntlr_ADDR;
  wire backup_controller_dlmb_cntlr_CLK;
  wire [0:31]backup_controller_dlmb_cntlr_DIN;
  wire [31:0]backup_controller_dlmb_cntlr_DOUT;
  wire backup_controller_dlmb_cntlr_EN;
  wire backup_controller_dlmb_cntlr_RST;
  wire [0:3]backup_controller_dlmb_cntlr_WE;
  wire [0:31]backup_controller_ilmb_ABUS;
  wire backup_controller_ilmb_ADDRSTROBE;
  wire backup_controller_ilmb_CE;
  wire [0:31]backup_controller_ilmb_READDBUS;
  wire backup_controller_ilmb_READSTROBE;
  wire backup_controller_ilmb_READY;
  wire backup_controller_ilmb_UE;
  wire backup_controller_ilmb_WAIT;
  wire [0:31]backup_controller_ilmb_bus_ABUS;
  wire backup_controller_ilmb_bus_ADDRSTROBE;
  wire [0:3]backup_controller_ilmb_bus_BE;
  wire backup_controller_ilmb_bus_CE;
  wire [0:31]backup_controller_ilmb_bus_READDBUS;
  wire backup_controller_ilmb_bus_READSTROBE;
  wire backup_controller_ilmb_bus_READY;
  wire backup_controller_ilmb_bus_UE;
  wire backup_controller_ilmb_bus_WAIT;
  wire [0:31]backup_controller_ilmb_bus_WRITEDBUS;
  wire backup_controller_ilmb_bus_WRITESTROBE;
  wire [0:31]backup_controller_ilmb_cntlr_ADDR;
  wire backup_controller_ilmb_cntlr_CLK;
  wire [0:31]backup_controller_ilmb_cntlr_DIN;
  wire [31:0]backup_controller_ilmb_cntlr_DOUT;
  wire backup_controller_ilmb_cntlr_EN;
  wire backup_controller_ilmb_cntlr_RST;
  wire [0:3]backup_controller_ilmb_cntlr_WE;

  assign DLMB_ce = backup_controller_dlmb_CE;
  assign DLMB_readdbus[0:31] = backup_controller_dlmb_READDBUS;
  assign DLMB_ready = backup_controller_dlmb_READY;
  assign DLMB_ue = backup_controller_dlmb_UE;
  assign DLMB_wait = backup_controller_dlmb_WAIT;
  assign ILMB_ce = backup_controller_ilmb_CE;
  assign ILMB_readdbus[0:31] = backup_controller_ilmb_READDBUS;
  assign ILMB_ready = backup_controller_ilmb_READY;
  assign ILMB_ue = backup_controller_ilmb_UE;
  assign ILMB_wait = backup_controller_ilmb_WAIT;
  assign backup_controller_Clk = LMB_Clk;
  assign backup_controller_LMB_Rst = LMB_Rst[0];
  assign backup_controller_dlmb_ABUS = DLMB_abus[0:31];
  assign backup_controller_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign backup_controller_dlmb_BE = DLMB_be[0:3];
  assign backup_controller_dlmb_READSTROBE = DLMB_readstrobe;
  assign backup_controller_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign backup_controller_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign backup_controller_ilmb_ABUS = ILMB_abus[0:31];
  assign backup_controller_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign backup_controller_ilmb_READSTROBE = ILMB_readstrobe;
GND GND
       (.G(GND_1));
(* BMM_INFO_ADDRESS_SPACE = "byte  0x0 32 >  TAIGA_System backup_controller_local_memory/lmb_bram" *) 
   (* KEEP_HIERARCHY = "yes" *) 
   TAIGA_System_dlmb_bram_if_cntlr_0 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(backup_controller_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(backup_controller_dlmb_cntlr_CLK),
        .BRAM_Din_A({backup_controller_dlmb_cntlr_DOUT[31],backup_controller_dlmb_cntlr_DOUT[30],backup_controller_dlmb_cntlr_DOUT[29],backup_controller_dlmb_cntlr_DOUT[28],backup_controller_dlmb_cntlr_DOUT[27],backup_controller_dlmb_cntlr_DOUT[26],backup_controller_dlmb_cntlr_DOUT[25],backup_controller_dlmb_cntlr_DOUT[24],backup_controller_dlmb_cntlr_DOUT[23],backup_controller_dlmb_cntlr_DOUT[22],backup_controller_dlmb_cntlr_DOUT[21],backup_controller_dlmb_cntlr_DOUT[20],backup_controller_dlmb_cntlr_DOUT[19],backup_controller_dlmb_cntlr_DOUT[18],backup_controller_dlmb_cntlr_DOUT[17],backup_controller_dlmb_cntlr_DOUT[16],backup_controller_dlmb_cntlr_DOUT[15],backup_controller_dlmb_cntlr_DOUT[14],backup_controller_dlmb_cntlr_DOUT[13],backup_controller_dlmb_cntlr_DOUT[12],backup_controller_dlmb_cntlr_DOUT[11],backup_controller_dlmb_cntlr_DOUT[10],backup_controller_dlmb_cntlr_DOUT[9],backup_controller_dlmb_cntlr_DOUT[8],backup_controller_dlmb_cntlr_DOUT[7],backup_controller_dlmb_cntlr_DOUT[6],backup_controller_dlmb_cntlr_DOUT[5],backup_controller_dlmb_cntlr_DOUT[4],backup_controller_dlmb_cntlr_DOUT[3],backup_controller_dlmb_cntlr_DOUT[2],backup_controller_dlmb_cntlr_DOUT[1],backup_controller_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(backup_controller_dlmb_cntlr_DIN),
        .BRAM_EN_A(backup_controller_dlmb_cntlr_EN),
        .BRAM_Rst_A(backup_controller_dlmb_cntlr_RST),
        .BRAM_WEN_A(backup_controller_dlmb_cntlr_WE),
        .LMB_ABus(backup_controller_dlmb_bus_ABUS),
        .LMB_AddrStrobe(backup_controller_dlmb_bus_ADDRSTROBE),
        .LMB_BE(backup_controller_dlmb_bus_BE),
        .LMB_Clk(backup_controller_Clk),
        .LMB_ReadStrobe(backup_controller_dlmb_bus_READSTROBE),
        .LMB_Rst(backup_controller_LMB_Rst),
        .LMB_WriteDBus(backup_controller_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(backup_controller_dlmb_bus_WRITESTROBE),
        .Sl_CE(backup_controller_dlmb_bus_CE),
        .Sl_DBus(backup_controller_dlmb_bus_READDBUS),
        .Sl_Ready(backup_controller_dlmb_bus_READY),
        .Sl_UE(backup_controller_dlmb_bus_UE),
        .Sl_Wait(backup_controller_dlmb_bus_WAIT));
TAIGA_System_dlmb_v10_0 dlmb_v10
       (.LMB_ABus(backup_controller_dlmb_bus_ABUS),
        .LMB_AddrStrobe(backup_controller_dlmb_bus_ADDRSTROBE),
        .LMB_BE(backup_controller_dlmb_bus_BE),
        .LMB_CE(backup_controller_dlmb_CE),
        .LMB_Clk(backup_controller_Clk),
        .LMB_ReadDBus(backup_controller_dlmb_READDBUS),
        .LMB_ReadStrobe(backup_controller_dlmb_bus_READSTROBE),
        .LMB_Ready(backup_controller_dlmb_READY),
        .LMB_UE(backup_controller_dlmb_UE),
        .LMB_Wait(backup_controller_dlmb_WAIT),
        .LMB_WriteDBus(backup_controller_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(backup_controller_dlmb_bus_WRITESTROBE),
        .M_ABus(backup_controller_dlmb_ABUS),
        .M_AddrStrobe(backup_controller_dlmb_ADDRSTROBE),
        .M_BE(backup_controller_dlmb_BE),
        .M_DBus(backup_controller_dlmb_WRITEDBUS),
        .M_ReadStrobe(backup_controller_dlmb_READSTROBE),
        .M_WriteStrobe(backup_controller_dlmb_WRITESTROBE),
        .SYS_Rst(backup_controller_LMB_Rst),
        .Sl_CE(backup_controller_dlmb_bus_CE),
        .Sl_DBus(backup_controller_dlmb_bus_READDBUS),
        .Sl_Ready(backup_controller_dlmb_bus_READY),
        .Sl_UE(backup_controller_dlmb_bus_UE),
        .Sl_Wait(backup_controller_dlmb_bus_WAIT));
TAIGA_System_ilmb_bram_if_cntlr_0 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(backup_controller_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(backup_controller_ilmb_cntlr_CLK),
        .BRAM_Din_A({backup_controller_ilmb_cntlr_DOUT[31],backup_controller_ilmb_cntlr_DOUT[30],backup_controller_ilmb_cntlr_DOUT[29],backup_controller_ilmb_cntlr_DOUT[28],backup_controller_ilmb_cntlr_DOUT[27],backup_controller_ilmb_cntlr_DOUT[26],backup_controller_ilmb_cntlr_DOUT[25],backup_controller_ilmb_cntlr_DOUT[24],backup_controller_ilmb_cntlr_DOUT[23],backup_controller_ilmb_cntlr_DOUT[22],backup_controller_ilmb_cntlr_DOUT[21],backup_controller_ilmb_cntlr_DOUT[20],backup_controller_ilmb_cntlr_DOUT[19],backup_controller_ilmb_cntlr_DOUT[18],backup_controller_ilmb_cntlr_DOUT[17],backup_controller_ilmb_cntlr_DOUT[16],backup_controller_ilmb_cntlr_DOUT[15],backup_controller_ilmb_cntlr_DOUT[14],backup_controller_ilmb_cntlr_DOUT[13],backup_controller_ilmb_cntlr_DOUT[12],backup_controller_ilmb_cntlr_DOUT[11],backup_controller_ilmb_cntlr_DOUT[10],backup_controller_ilmb_cntlr_DOUT[9],backup_controller_ilmb_cntlr_DOUT[8],backup_controller_ilmb_cntlr_DOUT[7],backup_controller_ilmb_cntlr_DOUT[6],backup_controller_ilmb_cntlr_DOUT[5],backup_controller_ilmb_cntlr_DOUT[4],backup_controller_ilmb_cntlr_DOUT[3],backup_controller_ilmb_cntlr_DOUT[2],backup_controller_ilmb_cntlr_DOUT[1],backup_controller_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(backup_controller_ilmb_cntlr_DIN),
        .BRAM_EN_A(backup_controller_ilmb_cntlr_EN),
        .BRAM_Rst_A(backup_controller_ilmb_cntlr_RST),
        .BRAM_WEN_A(backup_controller_ilmb_cntlr_WE),
        .LMB_ABus(backup_controller_ilmb_bus_ABUS),
        .LMB_AddrStrobe(backup_controller_ilmb_bus_ADDRSTROBE),
        .LMB_BE(backup_controller_ilmb_bus_BE),
        .LMB_Clk(backup_controller_Clk),
        .LMB_ReadStrobe(backup_controller_ilmb_bus_READSTROBE),
        .LMB_Rst(backup_controller_LMB_Rst),
        .LMB_WriteDBus(backup_controller_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(backup_controller_ilmb_bus_WRITESTROBE),
        .Sl_CE(backup_controller_ilmb_bus_CE),
        .Sl_DBus(backup_controller_ilmb_bus_READDBUS),
        .Sl_Ready(backup_controller_ilmb_bus_READY),
        .Sl_UE(backup_controller_ilmb_bus_UE),
        .Sl_Wait(backup_controller_ilmb_bus_WAIT));
TAIGA_System_ilmb_v10_0 ilmb_v10
       (.LMB_ABus(backup_controller_ilmb_bus_ABUS),
        .LMB_AddrStrobe(backup_controller_ilmb_bus_ADDRSTROBE),
        .LMB_BE(backup_controller_ilmb_bus_BE),
        .LMB_CE(backup_controller_ilmb_CE),
        .LMB_Clk(backup_controller_Clk),
        .LMB_ReadDBus(backup_controller_ilmb_READDBUS),
        .LMB_ReadStrobe(backup_controller_ilmb_bus_READSTROBE),
        .LMB_Ready(backup_controller_ilmb_READY),
        .LMB_UE(backup_controller_ilmb_UE),
        .LMB_Wait(backup_controller_ilmb_WAIT),
        .LMB_WriteDBus(backup_controller_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(backup_controller_ilmb_bus_WRITESTROBE),
        .M_ABus(backup_controller_ilmb_ABUS),
        .M_AddrStrobe(backup_controller_ilmb_ADDRSTROBE),
        .M_BE({GND_1,GND_1,GND_1,GND_1}),
        .M_DBus({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .M_ReadStrobe(backup_controller_ilmb_READSTROBE),
        .M_WriteStrobe(GND_1),
        .SYS_Rst(backup_controller_LMB_Rst),
        .Sl_CE(backup_controller_ilmb_bus_CE),
        .Sl_DBus(backup_controller_ilmb_bus_READDBUS),
        .Sl_Ready(backup_controller_ilmb_bus_READY),
        .Sl_UE(backup_controller_ilmb_bus_UE),
        .Sl_Wait(backup_controller_ilmb_bus_WAIT));
TAIGA_System_lmb_bram_0 lmb_bram
       (.addra({backup_controller_dlmb_cntlr_ADDR[0],backup_controller_dlmb_cntlr_ADDR[1],backup_controller_dlmb_cntlr_ADDR[2],backup_controller_dlmb_cntlr_ADDR[3],backup_controller_dlmb_cntlr_ADDR[4],backup_controller_dlmb_cntlr_ADDR[5],backup_controller_dlmb_cntlr_ADDR[6],backup_controller_dlmb_cntlr_ADDR[7],backup_controller_dlmb_cntlr_ADDR[8],backup_controller_dlmb_cntlr_ADDR[9],backup_controller_dlmb_cntlr_ADDR[10],backup_controller_dlmb_cntlr_ADDR[11],backup_controller_dlmb_cntlr_ADDR[12],backup_controller_dlmb_cntlr_ADDR[13],backup_controller_dlmb_cntlr_ADDR[14],backup_controller_dlmb_cntlr_ADDR[15],backup_controller_dlmb_cntlr_ADDR[16],backup_controller_dlmb_cntlr_ADDR[17],backup_controller_dlmb_cntlr_ADDR[18],backup_controller_dlmb_cntlr_ADDR[19],backup_controller_dlmb_cntlr_ADDR[20],backup_controller_dlmb_cntlr_ADDR[21],backup_controller_dlmb_cntlr_ADDR[22],backup_controller_dlmb_cntlr_ADDR[23],backup_controller_dlmb_cntlr_ADDR[24],backup_controller_dlmb_cntlr_ADDR[25],backup_controller_dlmb_cntlr_ADDR[26],backup_controller_dlmb_cntlr_ADDR[27],backup_controller_dlmb_cntlr_ADDR[28],backup_controller_dlmb_cntlr_ADDR[29],backup_controller_dlmb_cntlr_ADDR[30],backup_controller_dlmb_cntlr_ADDR[31]}),
        .addrb({backup_controller_ilmb_cntlr_ADDR[0],backup_controller_ilmb_cntlr_ADDR[1],backup_controller_ilmb_cntlr_ADDR[2],backup_controller_ilmb_cntlr_ADDR[3],backup_controller_ilmb_cntlr_ADDR[4],backup_controller_ilmb_cntlr_ADDR[5],backup_controller_ilmb_cntlr_ADDR[6],backup_controller_ilmb_cntlr_ADDR[7],backup_controller_ilmb_cntlr_ADDR[8],backup_controller_ilmb_cntlr_ADDR[9],backup_controller_ilmb_cntlr_ADDR[10],backup_controller_ilmb_cntlr_ADDR[11],backup_controller_ilmb_cntlr_ADDR[12],backup_controller_ilmb_cntlr_ADDR[13],backup_controller_ilmb_cntlr_ADDR[14],backup_controller_ilmb_cntlr_ADDR[15],backup_controller_ilmb_cntlr_ADDR[16],backup_controller_ilmb_cntlr_ADDR[17],backup_controller_ilmb_cntlr_ADDR[18],backup_controller_ilmb_cntlr_ADDR[19],backup_controller_ilmb_cntlr_ADDR[20],backup_controller_ilmb_cntlr_ADDR[21],backup_controller_ilmb_cntlr_ADDR[22],backup_controller_ilmb_cntlr_ADDR[23],backup_controller_ilmb_cntlr_ADDR[24],backup_controller_ilmb_cntlr_ADDR[25],backup_controller_ilmb_cntlr_ADDR[26],backup_controller_ilmb_cntlr_ADDR[27],backup_controller_ilmb_cntlr_ADDR[28],backup_controller_ilmb_cntlr_ADDR[29],backup_controller_ilmb_cntlr_ADDR[30],backup_controller_ilmb_cntlr_ADDR[31]}),
        .clka(backup_controller_dlmb_cntlr_CLK),
        .clkb(backup_controller_ilmb_cntlr_CLK),
        .dina({backup_controller_dlmb_cntlr_DIN[0],backup_controller_dlmb_cntlr_DIN[1],backup_controller_dlmb_cntlr_DIN[2],backup_controller_dlmb_cntlr_DIN[3],backup_controller_dlmb_cntlr_DIN[4],backup_controller_dlmb_cntlr_DIN[5],backup_controller_dlmb_cntlr_DIN[6],backup_controller_dlmb_cntlr_DIN[7],backup_controller_dlmb_cntlr_DIN[8],backup_controller_dlmb_cntlr_DIN[9],backup_controller_dlmb_cntlr_DIN[10],backup_controller_dlmb_cntlr_DIN[11],backup_controller_dlmb_cntlr_DIN[12],backup_controller_dlmb_cntlr_DIN[13],backup_controller_dlmb_cntlr_DIN[14],backup_controller_dlmb_cntlr_DIN[15],backup_controller_dlmb_cntlr_DIN[16],backup_controller_dlmb_cntlr_DIN[17],backup_controller_dlmb_cntlr_DIN[18],backup_controller_dlmb_cntlr_DIN[19],backup_controller_dlmb_cntlr_DIN[20],backup_controller_dlmb_cntlr_DIN[21],backup_controller_dlmb_cntlr_DIN[22],backup_controller_dlmb_cntlr_DIN[23],backup_controller_dlmb_cntlr_DIN[24],backup_controller_dlmb_cntlr_DIN[25],backup_controller_dlmb_cntlr_DIN[26],backup_controller_dlmb_cntlr_DIN[27],backup_controller_dlmb_cntlr_DIN[28],backup_controller_dlmb_cntlr_DIN[29],backup_controller_dlmb_cntlr_DIN[30],backup_controller_dlmb_cntlr_DIN[31]}),
        .dinb({backup_controller_ilmb_cntlr_DIN[0],backup_controller_ilmb_cntlr_DIN[1],backup_controller_ilmb_cntlr_DIN[2],backup_controller_ilmb_cntlr_DIN[3],backup_controller_ilmb_cntlr_DIN[4],backup_controller_ilmb_cntlr_DIN[5],backup_controller_ilmb_cntlr_DIN[6],backup_controller_ilmb_cntlr_DIN[7],backup_controller_ilmb_cntlr_DIN[8],backup_controller_ilmb_cntlr_DIN[9],backup_controller_ilmb_cntlr_DIN[10],backup_controller_ilmb_cntlr_DIN[11],backup_controller_ilmb_cntlr_DIN[12],backup_controller_ilmb_cntlr_DIN[13],backup_controller_ilmb_cntlr_DIN[14],backup_controller_ilmb_cntlr_DIN[15],backup_controller_ilmb_cntlr_DIN[16],backup_controller_ilmb_cntlr_DIN[17],backup_controller_ilmb_cntlr_DIN[18],backup_controller_ilmb_cntlr_DIN[19],backup_controller_ilmb_cntlr_DIN[20],backup_controller_ilmb_cntlr_DIN[21],backup_controller_ilmb_cntlr_DIN[22],backup_controller_ilmb_cntlr_DIN[23],backup_controller_ilmb_cntlr_DIN[24],backup_controller_ilmb_cntlr_DIN[25],backup_controller_ilmb_cntlr_DIN[26],backup_controller_ilmb_cntlr_DIN[27],backup_controller_ilmb_cntlr_DIN[28],backup_controller_ilmb_cntlr_DIN[29],backup_controller_ilmb_cntlr_DIN[30],backup_controller_ilmb_cntlr_DIN[31]}),
        .douta(backup_controller_dlmb_cntlr_DOUT),
        .doutb(backup_controller_ilmb_cntlr_DOUT),
        .ena(backup_controller_dlmb_cntlr_EN),
        .enb(backup_controller_ilmb_cntlr_EN),
        .rsta(backup_controller_dlmb_cntlr_RST),
        .rstb(backup_controller_ilmb_cntlr_RST),
        .wea({backup_controller_dlmb_cntlr_WE[0],backup_controller_dlmb_cntlr_WE[1],backup_controller_dlmb_cntlr_WE[2],backup_controller_dlmb_cntlr_WE[3]}),
        .web({backup_controller_ilmb_cntlr_WE[0],backup_controller_ilmb_cntlr_WE[1],backup_controller_ilmb_cntlr_WE[2],backup_controller_ilmb_cntlr_WE[3]}));
endmodule

module local_memory_IOI_imp_15Z7RBE
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    LMB_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input [0:0]LMB_Rst;

  wire GND_1;
  wire IO_Intermediary_Clk;
  wire [0:0]IO_Intermediary_LMB_Rst;
  wire [0:31]IO_Intermediary_dlmb_ABUS;
  wire IO_Intermediary_dlmb_ADDRSTROBE;
  wire [0:3]IO_Intermediary_dlmb_BE;
  wire IO_Intermediary_dlmb_CE;
  wire [0:31]IO_Intermediary_dlmb_READDBUS;
  wire IO_Intermediary_dlmb_READSTROBE;
  wire IO_Intermediary_dlmb_READY;
  wire IO_Intermediary_dlmb_UE;
  wire IO_Intermediary_dlmb_WAIT;
  wire [0:31]IO_Intermediary_dlmb_WRITEDBUS;
  wire IO_Intermediary_dlmb_WRITESTROBE;
  wire [0:31]IO_Intermediary_dlmb_bus_ABUS;
  wire IO_Intermediary_dlmb_bus_ADDRSTROBE;
  wire [0:3]IO_Intermediary_dlmb_bus_BE;
  wire IO_Intermediary_dlmb_bus_CE;
  wire [0:31]IO_Intermediary_dlmb_bus_READDBUS;
  wire IO_Intermediary_dlmb_bus_READSTROBE;
  wire IO_Intermediary_dlmb_bus_READY;
  wire IO_Intermediary_dlmb_bus_UE;
  wire IO_Intermediary_dlmb_bus_WAIT;
  wire [0:31]IO_Intermediary_dlmb_bus_WRITEDBUS;
  wire IO_Intermediary_dlmb_bus_WRITESTROBE;
  wire [0:31]IO_Intermediary_dlmb_cntlr_ADDR;
  wire IO_Intermediary_dlmb_cntlr_CLK;
  wire [0:31]IO_Intermediary_dlmb_cntlr_DIN;
  wire [31:0]IO_Intermediary_dlmb_cntlr_DOUT;
  wire IO_Intermediary_dlmb_cntlr_EN;
  wire IO_Intermediary_dlmb_cntlr_RST;
  wire [0:3]IO_Intermediary_dlmb_cntlr_WE;
  wire [0:31]IO_Intermediary_ilmb_ABUS;
  wire IO_Intermediary_ilmb_ADDRSTROBE;
  wire IO_Intermediary_ilmb_CE;
  wire [0:31]IO_Intermediary_ilmb_READDBUS;
  wire IO_Intermediary_ilmb_READSTROBE;
  wire IO_Intermediary_ilmb_READY;
  wire IO_Intermediary_ilmb_UE;
  wire IO_Intermediary_ilmb_WAIT;
  wire [0:31]IO_Intermediary_ilmb_bus_ABUS;
  wire IO_Intermediary_ilmb_bus_ADDRSTROBE;
  wire [0:3]IO_Intermediary_ilmb_bus_BE;
  wire IO_Intermediary_ilmb_bus_CE;
  wire [0:31]IO_Intermediary_ilmb_bus_READDBUS;
  wire IO_Intermediary_ilmb_bus_READSTROBE;
  wire IO_Intermediary_ilmb_bus_READY;
  wire IO_Intermediary_ilmb_bus_UE;
  wire IO_Intermediary_ilmb_bus_WAIT;
  wire [0:31]IO_Intermediary_ilmb_bus_WRITEDBUS;
  wire IO_Intermediary_ilmb_bus_WRITESTROBE;
  wire [0:31]IO_Intermediary_ilmb_cntlr_ADDR;
  wire IO_Intermediary_ilmb_cntlr_CLK;
  wire [0:31]IO_Intermediary_ilmb_cntlr_DIN;
  wire [31:0]IO_Intermediary_ilmb_cntlr_DOUT;
  wire IO_Intermediary_ilmb_cntlr_EN;
  wire IO_Intermediary_ilmb_cntlr_RST;
  wire [0:3]IO_Intermediary_ilmb_cntlr_WE;

  assign DLMB_ce = IO_Intermediary_dlmb_CE;
  assign DLMB_readdbus[0:31] = IO_Intermediary_dlmb_READDBUS;
  assign DLMB_ready = IO_Intermediary_dlmb_READY;
  assign DLMB_ue = IO_Intermediary_dlmb_UE;
  assign DLMB_wait = IO_Intermediary_dlmb_WAIT;
  assign ILMB_ce = IO_Intermediary_ilmb_CE;
  assign ILMB_readdbus[0:31] = IO_Intermediary_ilmb_READDBUS;
  assign ILMB_ready = IO_Intermediary_ilmb_READY;
  assign ILMB_ue = IO_Intermediary_ilmb_UE;
  assign ILMB_wait = IO_Intermediary_ilmb_WAIT;
  assign IO_Intermediary_Clk = LMB_Clk;
  assign IO_Intermediary_LMB_Rst = LMB_Rst[0];
  assign IO_Intermediary_dlmb_ABUS = DLMB_abus[0:31];
  assign IO_Intermediary_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign IO_Intermediary_dlmb_BE = DLMB_be[0:3];
  assign IO_Intermediary_dlmb_READSTROBE = DLMB_readstrobe;
  assign IO_Intermediary_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign IO_Intermediary_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign IO_Intermediary_ilmb_ABUS = ILMB_abus[0:31];
  assign IO_Intermediary_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign IO_Intermediary_ilmb_READSTROBE = ILMB_readstrobe;
GND GND
       (.G(GND_1));
(* BMM_INFO_ADDRESS_SPACE = "byte  0x0 32 >  TAIGA_System local_memory_IOI/lmb_bram" *) 
   (* KEEP_HIERARCHY = "yes" *) 
   TAIGA_System_dlmb_bram_if_cntlr_1 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(IO_Intermediary_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(IO_Intermediary_dlmb_cntlr_CLK),
        .BRAM_Din_A({IO_Intermediary_dlmb_cntlr_DOUT[31],IO_Intermediary_dlmb_cntlr_DOUT[30],IO_Intermediary_dlmb_cntlr_DOUT[29],IO_Intermediary_dlmb_cntlr_DOUT[28],IO_Intermediary_dlmb_cntlr_DOUT[27],IO_Intermediary_dlmb_cntlr_DOUT[26],IO_Intermediary_dlmb_cntlr_DOUT[25],IO_Intermediary_dlmb_cntlr_DOUT[24],IO_Intermediary_dlmb_cntlr_DOUT[23],IO_Intermediary_dlmb_cntlr_DOUT[22],IO_Intermediary_dlmb_cntlr_DOUT[21],IO_Intermediary_dlmb_cntlr_DOUT[20],IO_Intermediary_dlmb_cntlr_DOUT[19],IO_Intermediary_dlmb_cntlr_DOUT[18],IO_Intermediary_dlmb_cntlr_DOUT[17],IO_Intermediary_dlmb_cntlr_DOUT[16],IO_Intermediary_dlmb_cntlr_DOUT[15],IO_Intermediary_dlmb_cntlr_DOUT[14],IO_Intermediary_dlmb_cntlr_DOUT[13],IO_Intermediary_dlmb_cntlr_DOUT[12],IO_Intermediary_dlmb_cntlr_DOUT[11],IO_Intermediary_dlmb_cntlr_DOUT[10],IO_Intermediary_dlmb_cntlr_DOUT[9],IO_Intermediary_dlmb_cntlr_DOUT[8],IO_Intermediary_dlmb_cntlr_DOUT[7],IO_Intermediary_dlmb_cntlr_DOUT[6],IO_Intermediary_dlmb_cntlr_DOUT[5],IO_Intermediary_dlmb_cntlr_DOUT[4],IO_Intermediary_dlmb_cntlr_DOUT[3],IO_Intermediary_dlmb_cntlr_DOUT[2],IO_Intermediary_dlmb_cntlr_DOUT[1],IO_Intermediary_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(IO_Intermediary_dlmb_cntlr_DIN),
        .BRAM_EN_A(IO_Intermediary_dlmb_cntlr_EN),
        .BRAM_Rst_A(IO_Intermediary_dlmb_cntlr_RST),
        .BRAM_WEN_A(IO_Intermediary_dlmb_cntlr_WE),
        .LMB_ABus(IO_Intermediary_dlmb_bus_ABUS),
        .LMB_AddrStrobe(IO_Intermediary_dlmb_bus_ADDRSTROBE),
        .LMB_BE(IO_Intermediary_dlmb_bus_BE),
        .LMB_Clk(IO_Intermediary_Clk),
        .LMB_ReadStrobe(IO_Intermediary_dlmb_bus_READSTROBE),
        .LMB_Rst(IO_Intermediary_LMB_Rst),
        .LMB_WriteDBus(IO_Intermediary_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(IO_Intermediary_dlmb_bus_WRITESTROBE),
        .Sl_CE(IO_Intermediary_dlmb_bus_CE),
        .Sl_DBus(IO_Intermediary_dlmb_bus_READDBUS),
        .Sl_Ready(IO_Intermediary_dlmb_bus_READY),
        .Sl_UE(IO_Intermediary_dlmb_bus_UE),
        .Sl_Wait(IO_Intermediary_dlmb_bus_WAIT));
TAIGA_System_dlmb_v10_1 dlmb_v10
       (.LMB_ABus(IO_Intermediary_dlmb_bus_ABUS),
        .LMB_AddrStrobe(IO_Intermediary_dlmb_bus_ADDRSTROBE),
        .LMB_BE(IO_Intermediary_dlmb_bus_BE),
        .LMB_CE(IO_Intermediary_dlmb_CE),
        .LMB_Clk(IO_Intermediary_Clk),
        .LMB_ReadDBus(IO_Intermediary_dlmb_READDBUS),
        .LMB_ReadStrobe(IO_Intermediary_dlmb_bus_READSTROBE),
        .LMB_Ready(IO_Intermediary_dlmb_READY),
        .LMB_UE(IO_Intermediary_dlmb_UE),
        .LMB_Wait(IO_Intermediary_dlmb_WAIT),
        .LMB_WriteDBus(IO_Intermediary_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(IO_Intermediary_dlmb_bus_WRITESTROBE),
        .M_ABus(IO_Intermediary_dlmb_ABUS),
        .M_AddrStrobe(IO_Intermediary_dlmb_ADDRSTROBE),
        .M_BE(IO_Intermediary_dlmb_BE),
        .M_DBus(IO_Intermediary_dlmb_WRITEDBUS),
        .M_ReadStrobe(IO_Intermediary_dlmb_READSTROBE),
        .M_WriteStrobe(IO_Intermediary_dlmb_WRITESTROBE),
        .SYS_Rst(IO_Intermediary_LMB_Rst),
        .Sl_CE(IO_Intermediary_dlmb_bus_CE),
        .Sl_DBus(IO_Intermediary_dlmb_bus_READDBUS),
        .Sl_Ready(IO_Intermediary_dlmb_bus_READY),
        .Sl_UE(IO_Intermediary_dlmb_bus_UE),
        .Sl_Wait(IO_Intermediary_dlmb_bus_WAIT));
TAIGA_System_ilmb_bram_if_cntlr_1 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(IO_Intermediary_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(IO_Intermediary_ilmb_cntlr_CLK),
        .BRAM_Din_A({IO_Intermediary_ilmb_cntlr_DOUT[31],IO_Intermediary_ilmb_cntlr_DOUT[30],IO_Intermediary_ilmb_cntlr_DOUT[29],IO_Intermediary_ilmb_cntlr_DOUT[28],IO_Intermediary_ilmb_cntlr_DOUT[27],IO_Intermediary_ilmb_cntlr_DOUT[26],IO_Intermediary_ilmb_cntlr_DOUT[25],IO_Intermediary_ilmb_cntlr_DOUT[24],IO_Intermediary_ilmb_cntlr_DOUT[23],IO_Intermediary_ilmb_cntlr_DOUT[22],IO_Intermediary_ilmb_cntlr_DOUT[21],IO_Intermediary_ilmb_cntlr_DOUT[20],IO_Intermediary_ilmb_cntlr_DOUT[19],IO_Intermediary_ilmb_cntlr_DOUT[18],IO_Intermediary_ilmb_cntlr_DOUT[17],IO_Intermediary_ilmb_cntlr_DOUT[16],IO_Intermediary_ilmb_cntlr_DOUT[15],IO_Intermediary_ilmb_cntlr_DOUT[14],IO_Intermediary_ilmb_cntlr_DOUT[13],IO_Intermediary_ilmb_cntlr_DOUT[12],IO_Intermediary_ilmb_cntlr_DOUT[11],IO_Intermediary_ilmb_cntlr_DOUT[10],IO_Intermediary_ilmb_cntlr_DOUT[9],IO_Intermediary_ilmb_cntlr_DOUT[8],IO_Intermediary_ilmb_cntlr_DOUT[7],IO_Intermediary_ilmb_cntlr_DOUT[6],IO_Intermediary_ilmb_cntlr_DOUT[5],IO_Intermediary_ilmb_cntlr_DOUT[4],IO_Intermediary_ilmb_cntlr_DOUT[3],IO_Intermediary_ilmb_cntlr_DOUT[2],IO_Intermediary_ilmb_cntlr_DOUT[1],IO_Intermediary_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(IO_Intermediary_ilmb_cntlr_DIN),
        .BRAM_EN_A(IO_Intermediary_ilmb_cntlr_EN),
        .BRAM_Rst_A(IO_Intermediary_ilmb_cntlr_RST),
        .BRAM_WEN_A(IO_Intermediary_ilmb_cntlr_WE),
        .LMB_ABus(IO_Intermediary_ilmb_bus_ABUS),
        .LMB_AddrStrobe(IO_Intermediary_ilmb_bus_ADDRSTROBE),
        .LMB_BE(IO_Intermediary_ilmb_bus_BE),
        .LMB_Clk(IO_Intermediary_Clk),
        .LMB_ReadStrobe(IO_Intermediary_ilmb_bus_READSTROBE),
        .LMB_Rst(IO_Intermediary_LMB_Rst),
        .LMB_WriteDBus(IO_Intermediary_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(IO_Intermediary_ilmb_bus_WRITESTROBE),
        .Sl_CE(IO_Intermediary_ilmb_bus_CE),
        .Sl_DBus(IO_Intermediary_ilmb_bus_READDBUS),
        .Sl_Ready(IO_Intermediary_ilmb_bus_READY),
        .Sl_UE(IO_Intermediary_ilmb_bus_UE),
        .Sl_Wait(IO_Intermediary_ilmb_bus_WAIT));
TAIGA_System_ilmb_v10_1 ilmb_v10
       (.LMB_ABus(IO_Intermediary_ilmb_bus_ABUS),
        .LMB_AddrStrobe(IO_Intermediary_ilmb_bus_ADDRSTROBE),
        .LMB_BE(IO_Intermediary_ilmb_bus_BE),
        .LMB_CE(IO_Intermediary_ilmb_CE),
        .LMB_Clk(IO_Intermediary_Clk),
        .LMB_ReadDBus(IO_Intermediary_ilmb_READDBUS),
        .LMB_ReadStrobe(IO_Intermediary_ilmb_bus_READSTROBE),
        .LMB_Ready(IO_Intermediary_ilmb_READY),
        .LMB_UE(IO_Intermediary_ilmb_UE),
        .LMB_Wait(IO_Intermediary_ilmb_WAIT),
        .LMB_WriteDBus(IO_Intermediary_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(IO_Intermediary_ilmb_bus_WRITESTROBE),
        .M_ABus(IO_Intermediary_ilmb_ABUS),
        .M_AddrStrobe(IO_Intermediary_ilmb_ADDRSTROBE),
        .M_BE({GND_1,GND_1,GND_1,GND_1}),
        .M_DBus({GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1,GND_1}),
        .M_ReadStrobe(IO_Intermediary_ilmb_READSTROBE),
        .M_WriteStrobe(GND_1),
        .SYS_Rst(IO_Intermediary_LMB_Rst),
        .Sl_CE(IO_Intermediary_ilmb_bus_CE),
        .Sl_DBus(IO_Intermediary_ilmb_bus_READDBUS),
        .Sl_Ready(IO_Intermediary_ilmb_bus_READY),
        .Sl_UE(IO_Intermediary_ilmb_bus_UE),
        .Sl_Wait(IO_Intermediary_ilmb_bus_WAIT));
TAIGA_System_lmb_bram_1 lmb_bram
       (.addra({IO_Intermediary_dlmb_cntlr_ADDR[0],IO_Intermediary_dlmb_cntlr_ADDR[1],IO_Intermediary_dlmb_cntlr_ADDR[2],IO_Intermediary_dlmb_cntlr_ADDR[3],IO_Intermediary_dlmb_cntlr_ADDR[4],IO_Intermediary_dlmb_cntlr_ADDR[5],IO_Intermediary_dlmb_cntlr_ADDR[6],IO_Intermediary_dlmb_cntlr_ADDR[7],IO_Intermediary_dlmb_cntlr_ADDR[8],IO_Intermediary_dlmb_cntlr_ADDR[9],IO_Intermediary_dlmb_cntlr_ADDR[10],IO_Intermediary_dlmb_cntlr_ADDR[11],IO_Intermediary_dlmb_cntlr_ADDR[12],IO_Intermediary_dlmb_cntlr_ADDR[13],IO_Intermediary_dlmb_cntlr_ADDR[14],IO_Intermediary_dlmb_cntlr_ADDR[15],IO_Intermediary_dlmb_cntlr_ADDR[16],IO_Intermediary_dlmb_cntlr_ADDR[17],IO_Intermediary_dlmb_cntlr_ADDR[18],IO_Intermediary_dlmb_cntlr_ADDR[19],IO_Intermediary_dlmb_cntlr_ADDR[20],IO_Intermediary_dlmb_cntlr_ADDR[21],IO_Intermediary_dlmb_cntlr_ADDR[22],IO_Intermediary_dlmb_cntlr_ADDR[23],IO_Intermediary_dlmb_cntlr_ADDR[24],IO_Intermediary_dlmb_cntlr_ADDR[25],IO_Intermediary_dlmb_cntlr_ADDR[26],IO_Intermediary_dlmb_cntlr_ADDR[27],IO_Intermediary_dlmb_cntlr_ADDR[28],IO_Intermediary_dlmb_cntlr_ADDR[29],IO_Intermediary_dlmb_cntlr_ADDR[30],IO_Intermediary_dlmb_cntlr_ADDR[31]}),
        .addrb({IO_Intermediary_ilmb_cntlr_ADDR[0],IO_Intermediary_ilmb_cntlr_ADDR[1],IO_Intermediary_ilmb_cntlr_ADDR[2],IO_Intermediary_ilmb_cntlr_ADDR[3],IO_Intermediary_ilmb_cntlr_ADDR[4],IO_Intermediary_ilmb_cntlr_ADDR[5],IO_Intermediary_ilmb_cntlr_ADDR[6],IO_Intermediary_ilmb_cntlr_ADDR[7],IO_Intermediary_ilmb_cntlr_ADDR[8],IO_Intermediary_ilmb_cntlr_ADDR[9],IO_Intermediary_ilmb_cntlr_ADDR[10],IO_Intermediary_ilmb_cntlr_ADDR[11],IO_Intermediary_ilmb_cntlr_ADDR[12],IO_Intermediary_ilmb_cntlr_ADDR[13],IO_Intermediary_ilmb_cntlr_ADDR[14],IO_Intermediary_ilmb_cntlr_ADDR[15],IO_Intermediary_ilmb_cntlr_ADDR[16],IO_Intermediary_ilmb_cntlr_ADDR[17],IO_Intermediary_ilmb_cntlr_ADDR[18],IO_Intermediary_ilmb_cntlr_ADDR[19],IO_Intermediary_ilmb_cntlr_ADDR[20],IO_Intermediary_ilmb_cntlr_ADDR[21],IO_Intermediary_ilmb_cntlr_ADDR[22],IO_Intermediary_ilmb_cntlr_ADDR[23],IO_Intermediary_ilmb_cntlr_ADDR[24],IO_Intermediary_ilmb_cntlr_ADDR[25],IO_Intermediary_ilmb_cntlr_ADDR[26],IO_Intermediary_ilmb_cntlr_ADDR[27],IO_Intermediary_ilmb_cntlr_ADDR[28],IO_Intermediary_ilmb_cntlr_ADDR[29],IO_Intermediary_ilmb_cntlr_ADDR[30],IO_Intermediary_ilmb_cntlr_ADDR[31]}),
        .clka(IO_Intermediary_dlmb_cntlr_CLK),
        .clkb(IO_Intermediary_ilmb_cntlr_CLK),
        .dina({IO_Intermediary_dlmb_cntlr_DIN[0],IO_Intermediary_dlmb_cntlr_DIN[1],IO_Intermediary_dlmb_cntlr_DIN[2],IO_Intermediary_dlmb_cntlr_DIN[3],IO_Intermediary_dlmb_cntlr_DIN[4],IO_Intermediary_dlmb_cntlr_DIN[5],IO_Intermediary_dlmb_cntlr_DIN[6],IO_Intermediary_dlmb_cntlr_DIN[7],IO_Intermediary_dlmb_cntlr_DIN[8],IO_Intermediary_dlmb_cntlr_DIN[9],IO_Intermediary_dlmb_cntlr_DIN[10],IO_Intermediary_dlmb_cntlr_DIN[11],IO_Intermediary_dlmb_cntlr_DIN[12],IO_Intermediary_dlmb_cntlr_DIN[13],IO_Intermediary_dlmb_cntlr_DIN[14],IO_Intermediary_dlmb_cntlr_DIN[15],IO_Intermediary_dlmb_cntlr_DIN[16],IO_Intermediary_dlmb_cntlr_DIN[17],IO_Intermediary_dlmb_cntlr_DIN[18],IO_Intermediary_dlmb_cntlr_DIN[19],IO_Intermediary_dlmb_cntlr_DIN[20],IO_Intermediary_dlmb_cntlr_DIN[21],IO_Intermediary_dlmb_cntlr_DIN[22],IO_Intermediary_dlmb_cntlr_DIN[23],IO_Intermediary_dlmb_cntlr_DIN[24],IO_Intermediary_dlmb_cntlr_DIN[25],IO_Intermediary_dlmb_cntlr_DIN[26],IO_Intermediary_dlmb_cntlr_DIN[27],IO_Intermediary_dlmb_cntlr_DIN[28],IO_Intermediary_dlmb_cntlr_DIN[29],IO_Intermediary_dlmb_cntlr_DIN[30],IO_Intermediary_dlmb_cntlr_DIN[31]}),
        .dinb({IO_Intermediary_ilmb_cntlr_DIN[0],IO_Intermediary_ilmb_cntlr_DIN[1],IO_Intermediary_ilmb_cntlr_DIN[2],IO_Intermediary_ilmb_cntlr_DIN[3],IO_Intermediary_ilmb_cntlr_DIN[4],IO_Intermediary_ilmb_cntlr_DIN[5],IO_Intermediary_ilmb_cntlr_DIN[6],IO_Intermediary_ilmb_cntlr_DIN[7],IO_Intermediary_ilmb_cntlr_DIN[8],IO_Intermediary_ilmb_cntlr_DIN[9],IO_Intermediary_ilmb_cntlr_DIN[10],IO_Intermediary_ilmb_cntlr_DIN[11],IO_Intermediary_ilmb_cntlr_DIN[12],IO_Intermediary_ilmb_cntlr_DIN[13],IO_Intermediary_ilmb_cntlr_DIN[14],IO_Intermediary_ilmb_cntlr_DIN[15],IO_Intermediary_ilmb_cntlr_DIN[16],IO_Intermediary_ilmb_cntlr_DIN[17],IO_Intermediary_ilmb_cntlr_DIN[18],IO_Intermediary_ilmb_cntlr_DIN[19],IO_Intermediary_ilmb_cntlr_DIN[20],IO_Intermediary_ilmb_cntlr_DIN[21],IO_Intermediary_ilmb_cntlr_DIN[22],IO_Intermediary_ilmb_cntlr_DIN[23],IO_Intermediary_ilmb_cntlr_DIN[24],IO_Intermediary_ilmb_cntlr_DIN[25],IO_Intermediary_ilmb_cntlr_DIN[26],IO_Intermediary_ilmb_cntlr_DIN[27],IO_Intermediary_ilmb_cntlr_DIN[28],IO_Intermediary_ilmb_cntlr_DIN[29],IO_Intermediary_ilmb_cntlr_DIN[30],IO_Intermediary_ilmb_cntlr_DIN[31]}),
        .douta(IO_Intermediary_dlmb_cntlr_DOUT),
        .doutb(IO_Intermediary_ilmb_cntlr_DOUT),
        .ena(IO_Intermediary_dlmb_cntlr_EN),
        .enb(IO_Intermediary_ilmb_cntlr_EN),
        .rsta(IO_Intermediary_dlmb_cntlr_RST),
        .rstb(IO_Intermediary_ilmb_cntlr_RST),
        .wea({IO_Intermediary_dlmb_cntlr_WE[0],IO_Intermediary_dlmb_cntlr_WE[1],IO_Intermediary_dlmb_cntlr_WE[2],IO_Intermediary_dlmb_cntlr_WE[3]}),
        .web({IO_Intermediary_ilmb_cntlr_WE[0],IO_Intermediary_ilmb_cntlr_WE[1],IO_Intermediary_ilmb_cntlr_WE[2],IO_Intermediary_ilmb_cntlr_WE[3]}));
endmodule

module m00_couplers_imp_JGH9NQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [8:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [8:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [8:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[8:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[8:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[8:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_MYMUCK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [8:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [8:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [8:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[8:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[8:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[8:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_YTVM2O
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [8:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [8:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [8:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[8:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[8:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[8:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_JECGRO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_MHFLK6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [4:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [4:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [4:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [4:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [4:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [4:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[4:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[4:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[4:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[4:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_TLO0N4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [6:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [6:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [6:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [6:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[6:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[6:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[6:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_N9GQGW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [8:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [8:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [8:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[8:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[8:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[8:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_SZ7IXY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [8:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [8:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [8:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[8:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[8:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[8:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_J56THC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [8:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [8:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [8:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[8:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[8:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[8:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_ZC09YE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_9743GG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [3:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [3:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [3:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [3:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [3:0]m04_couplers_to_m04_couplers_ARADDR;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [3:0]m04_couplers_to_m04_couplers_AWADDR;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[3:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[3:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[3:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[3:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_EZYCZK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m06_couplers_imp_4AGV7K
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m06_couplers_to_m06_couplers_ARADDR;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire [31:0]m06_couplers_to_m06_couplers_AWADDR;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module m07_couplers_imp_6RFB28
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [8:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [8:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [8:0]m07_couplers_to_m07_couplers_ARADDR;
  wire m07_couplers_to_m07_couplers_ARREADY;
  wire m07_couplers_to_m07_couplers_ARVALID;
  wire [8:0]m07_couplers_to_m07_couplers_AWADDR;
  wire m07_couplers_to_m07_couplers_AWREADY;
  wire m07_couplers_to_m07_couplers_AWVALID;
  wire m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[8:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[8:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready;
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[8:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready;
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready;
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready;
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid;
endmodule

module m08_couplers_imp_1ILGM0W
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [3:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [3:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [3:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [3:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [3:0]m08_couplers_to_m08_couplers_ARADDR;
  wire m08_couplers_to_m08_couplers_ARREADY;
  wire m08_couplers_to_m08_couplers_ARVALID;
  wire [3:0]m08_couplers_to_m08_couplers_AWADDR;
  wire m08_couplers_to_m08_couplers_AWREADY;
  wire m08_couplers_to_m08_couplers_AWVALID;
  wire m08_couplers_to_m08_couplers_BREADY;
  wire [1:0]m08_couplers_to_m08_couplers_BRESP;
  wire m08_couplers_to_m08_couplers_BVALID;
  wire [31:0]m08_couplers_to_m08_couplers_RDATA;
  wire m08_couplers_to_m08_couplers_RREADY;
  wire [1:0]m08_couplers_to_m08_couplers_RRESP;
  wire m08_couplers_to_m08_couplers_RVALID;
  wire [31:0]m08_couplers_to_m08_couplers_WDATA;
  wire m08_couplers_to_m08_couplers_WREADY;
  wire [3:0]m08_couplers_to_m08_couplers_WSTRB;
  wire m08_couplers_to_m08_couplers_WVALID;

  assign M_AXI_araddr[3:0] = m08_couplers_to_m08_couplers_ARADDR;
  assign M_AXI_arvalid = m08_couplers_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[3:0] = m08_couplers_to_m08_couplers_AWADDR;
  assign M_AXI_awvalid = m08_couplers_to_m08_couplers_AWVALID;
  assign M_AXI_bready = m08_couplers_to_m08_couplers_BREADY;
  assign M_AXI_rready = m08_couplers_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m08_couplers_to_m08_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m08_couplers_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = m08_couplers_to_m08_couplers_WVALID;
  assign S_AXI_arready = m08_couplers_to_m08_couplers_ARREADY;
  assign S_AXI_awready = m08_couplers_to_m08_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_m08_couplers_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_m08_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_m08_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_m08_couplers_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_m08_couplers_RVALID;
  assign S_AXI_wready = m08_couplers_to_m08_couplers_WREADY;
  assign m08_couplers_to_m08_couplers_ARADDR = S_AXI_araddr[3:0];
  assign m08_couplers_to_m08_couplers_ARREADY = M_AXI_arready;
  assign m08_couplers_to_m08_couplers_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_m08_couplers_AWADDR = S_AXI_awaddr[3:0];
  assign m08_couplers_to_m08_couplers_AWREADY = M_AXI_awready;
  assign m08_couplers_to_m08_couplers_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_m08_couplers_BREADY = S_AXI_bready;
  assign m08_couplers_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign m08_couplers_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign m08_couplers_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign m08_couplers_to_m08_couplers_RREADY = S_AXI_rready;
  assign m08_couplers_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign m08_couplers_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign m08_couplers_to_m08_couplers_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_m08_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_m08_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_M356UV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire [0:0]S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN[0];
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
TAIGA_System_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_PDSNHX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_QVIVKJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input [0:0]M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input [0:0]S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule
