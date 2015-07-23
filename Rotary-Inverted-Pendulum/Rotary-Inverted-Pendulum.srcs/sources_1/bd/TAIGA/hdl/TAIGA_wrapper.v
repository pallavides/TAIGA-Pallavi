//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.1 (lin64) Build 1215546 Mon Apr 27 19:07:21 MDT 2015
//Date        : Thu Jul 23 14:32:30 2015
//Host        : XPS running 64-bit Ubuntu 14.04.2 LTS
//Command     : generate_target TAIGA_wrapper.bd
//Design      : TAIGA_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TAIGA_wrapper
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
    gpio_debug_backup_tri_o,
    gpio_debug_ioi_tri_o,
    gpio_debug_production_tri_o,
    gpio_led_backup_tri_o,
    gpio_led_ioi_tri_o,
    gpio_led_production_tri_o,
    gpio_sw_tri_i,
    gpio_trigger,
    ioi_uart_rxd,
    ioi_uart_txd,
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
  output [1:0]gpio_debug_backup_tri_o;
  output [3:0]gpio_debug_ioi_tri_o;
  output [1:0]gpio_debug_production_tri_o;
  output [0:0]gpio_led_backup_tri_o;
  output [0:0]gpio_led_ioi_tri_o;
  output [0:0]gpio_led_production_tri_o;
  input [3:0]gpio_sw_tri_i;
  output [0:0]gpio_trigger;
  input ioi_uart_rxd;
  output ioi_uart_txd;
  input spi_plant_miso_i;
  output spi_plant_mosi_o;
  output spi_plant_sck_o;
  output [3:0]spi_plant_ss_o;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [3:0]gpio_btn_tri_i;
  wire [1:0]gpio_debug_backup_tri_o;
  wire [3:0]gpio_debug_ioi_tri_o;
  wire [1:0]gpio_debug_production_tri_o;
  wire [0:0]gpio_led_backup_tri_o;
  wire [0:0]gpio_led_ioi_tri_o;
  wire [0:0]gpio_led_production_tri_o;
  wire [3:0]gpio_sw_tri_i;
  wire [0:0]gpio_trigger;
  wire ioi_uart_rxd;
  wire ioi_uart_txd;
  wire spi_plant_miso_i;
  wire spi_plant_mosi_o;
  wire spi_plant_sck_o;
  wire [3:0]spi_plant_ss_o;

  TAIGA TAIGA_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .gpio_btn_tri_i(gpio_btn_tri_i),
        .gpio_debug_backup_tri_o(gpio_debug_backup_tri_o),
        .gpio_debug_ioi_tri_o(gpio_debug_ioi_tri_o),
        .gpio_debug_production_tri_o(gpio_debug_production_tri_o),
        .gpio_led_backup_tri_o(gpio_led_backup_tri_o),
        .gpio_led_ioi_tri_o(gpio_led_ioi_tri_o),
        .gpio_led_production_tri_o(gpio_led_production_tri_o),
        .gpio_sw_tri_i(gpio_sw_tri_i),
        .gpio_trigger(gpio_trigger),
        .ioi_uart_rxd(ioi_uart_rxd),
        .ioi_uart_txd(ioi_uart_txd),
        .spi_plant_miso_i(spi_plant_miso_i),
        .spi_plant_mosi_o(spi_plant_mosi_o),
        .spi_plant_sck_o(spi_plant_sck_o),
        .spi_plant_ss_o(spi_plant_ss_o));
endmodule
