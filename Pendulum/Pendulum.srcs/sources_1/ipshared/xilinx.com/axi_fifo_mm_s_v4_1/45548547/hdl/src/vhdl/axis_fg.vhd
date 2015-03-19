-------------------------------------------------------------------------------
--
--  AXI4-AXI4 Stream FIFO Core - AXIS FG module
--
-------------------------------------------------------------------------------
-- (c) Copyright 2006 - 2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        axis_fg.vhd
-- Version:         v4_1
-- Description:     AXIS FG module providing Register slice and packet FIFO interface
--                  from FIFO Generator Core
--
------------------------------------------------------------------------------
-- Structure:   
--                axi_fifo_mm_s.vhd
--                   axi_fifo_mm_s_pkg.vhd
--                   axi_lite_ipif.vhd
--                   axi_wrapper.vhd
--                      axi_read_fsm.vhd
--                      axi_read_wrapper.vhd
--                      axi_write_fsm.vhd
--                      axi_write_wrapper.vhd
--                   ipic2axi_s.vhd
--                      fifo.vhd
--                         axis_fg.vhd
------------------------------------------------------------------------------
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_arith.conv_std_logic_vector;
use ieee.numeric_std.all;    
use ieee.std_logic_misc.all;


library axi_fifo_mm_s_v4_1;
use axi_fifo_mm_s_v4_1.axi_fifo_mm_s_pkg.all;

library fifo_generator_v12_0;
use fifo_generator_v12_0.all;

-- synopsys translate_off
library unisim;
use     unisim.vcomponents.all; -- Component declarations for unisim.
use     unisim.all; -- Makes unisim entities available for default binding.
-- synopsys translate_on

entity axis_fg is
  generic(
    C_FAMILY		    :  string := "virtex7";
    C_DEPTH                 :  integer := 512;
    C_PF_THRESHOLD          :  integer := 500;
    C_PE_THRESHOLD          :  integer := 16;
    C_FIFO_GEN_TYPE         :  integer := 0; -- 0: Data FIFO; 1: Packet FIFO; 2: One stage Register Slice
    C_DATA_COUNT_WIDTH      :  integer := 9;

    C_HAS_AXIS_TID          : integer := 0;
    C_HAS_AXIS_TDEST        : integer := 1;
    C_HAS_AXIS_TUSER        : integer := 0;
    C_HAS_AXIS_TLAST        : integer := 1;
    C_HAS_AXIS_TSTRB        : integer := 1;
    C_HAS_AXIS_TKEEP        : integer := 0;

    C_AXIS_TDATA_WIDTH      :  integer := 32;
    C_AXIS_TID_WIDTH        :  integer := 1;
    C_AXIS_TDEST_WIDTH      :  integer := 4;
    C_AXIS_TUSER_WIDTH      :  integer := 1
  );
  port(
    aclk                    : in  std_logic;
    aresetn                 : in  std_logic;

    -- AXI Streaming Slave Signals (Write side)
    s_axis_tvalid           : in  std_logic := '0';
    s_axis_tready           : out std_logic := '0';
    s_axis_tdata            : in  std_logic_vector(C_AXIS_TDATA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    s_axis_tstrb            : in  std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
    s_axis_tkeep            : in  std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
    s_axis_tlast            : in  std_logic := '0';
    s_axis_tid              : in  std_logic_vector(C_AXIS_TID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    s_axis_tdest            : in  std_logic_vector(C_AXIS_TDEST_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    s_axis_tuser            : in  std_logic_vector(C_AXIS_TUSER_WIDTH-1 DOWNTO 0) := (OTHERS => '0');

    -- AXI Streaming Master Signals (Read side)
    m_axis_tvalid           : out std_logic := '0';
    m_axis_tready           : in  std_logic := '0';
    m_axis_tdata            : out std_logic_vector(C_AXIS_TDATA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    m_axis_tstrb            : out std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
    m_axis_tkeep            : out std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
    m_axis_tlast            : out std_logic := '0';
    m_axis_tid              : out std_logic_vector(C_AXIS_TID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    m_axis_tdest            : out std_logic_vector(C_AXIS_TDEST_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    m_axis_tuser            : out std_logic_vector(C_AXIS_TUSER_WIDTH-1 DOWNTO 0) := (OTHERS => '0');

    axis_prog_full          : out std_logic := '0';
    axis_prog_empty         : out std_logic := '0';
    axis_data_count         : out std_logic_vector(C_DATA_COUNT_WIDTH DOWNTO 0) := (OTHERS => '0')
  );
end axis_fg;

architecture structure of axis_fg is

  CONSTANT ALL_ZERO_64                     : std_logic_vector(63 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_32                     : std_logic_vector(31 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_8                      : std_logic_vector(7 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_4                      : std_logic_vector(3 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_3                      : std_logic_vector(2 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_2                      : std_logic_vector(1 DOWNTO 0) := (OTHERS => '0');
  CONSTANT AXI4_USR_WIDTH_ZERO             : std_logic_vector(0 DOWNTO 0) := (OTHERS => '0');
  CONSTANT GND                             : std_logic := '0';
  CONSTANT PROG_FLAG_WIDTH                 : std_logic_vector(9 DOWNTO 0) := (OTHERS => '0');
  CONSTANT C_DIN_WIDTH_AXIS                : integer := C_AXIS_TDATA_WIDTH + C_AXIS_TDATA_WIDTH/8 + C_AXIS_TDEST_WIDTH + 
                                                        if_then_else(C_HAS_AXIS_TID = 1, C_AXIS_TID_WIDTH, 0) +
                                                        if_then_else(C_HAS_AXIS_TUSER = 1, C_AXIS_TUSER_WIDTH, 0) + 1;
  CONSTANT TKEEP_WIDTH                     : integer := C_AXIS_TDATA_WIDTH/8;
  CONSTANT AXIS_TYPE                       : integer := if_then_else(C_FIFO_GEN_TYPE = 2, 1, 0);
  CONSTANT LOG2DEPTH                       : integer := log2roundup(C_DEPTH);
  CONSTANT REG_SLICE_MODE_AXIS             : integer := if_then_else(C_FIFO_GEN_TYPE = 2, 1, 0);


  SIGNAL dout_axi_fifo			   : std_logic_vector(C_AXIS_TDATA_WIDTH-1 downto 0);
  SIGNAL full_axi_fifo          	   : std_logic;
  SIGNAL almost_full_axi_fifo   	   : std_logic;
  SIGNAL wr_ack_axi_fifo        	   : std_logic;
  SIGNAL overflow_axi_fifo      	   : std_logic;
  SIGNAL empty_axi_fifo         	   : std_logic;
  SIGNAL almost_empty_axi_fifo  	   : std_logic;
  SIGNAL valid_axi_fifo         	   : std_logic;
  SIGNAL underflow_axi_fifo     	   : std_logic;
  SIGNAL data_count_axi_fifo    	   : std_logic_vector((log2roundup(C_DEPTH))-1 downto 0);
  SIGNAL rd_data_count_axi_fifo 	   : std_logic_vector((log2roundup(C_DEPTH))-1 downto 0);
  SIGNAL wr_data_count_axi_fifo 	   : std_logic_vector((log2roundup(C_DEPTH))-1 downto 0);
  SIGNAL prog_full_axi_fifo     	   : std_logic;
  SIGNAL prog_empty_axi_fifo    	   : std_logic;
  SIGNAL sbiterr_axi_fifo       	   : std_logic;
  SIGNAL dbiterr_axi_fifo       	   : std_logic;
  SIGNAL wr_rst_busy_i          	   : std_logic;
  SIGNAL rd_rst_busy_i          	   : std_logic;
  SIGNAL m_axi_awid_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_awaddr_axi_fifo		   : std_logic_vector(32-1 downto 0);
  SIGNAL m_axi_awlen_axi_fifo		   : std_logic_vector(8-1 downto 0);
  SIGNAL m_axi_awsize_axi_fifo		   : std_logic_vector(3-1 downto 0);
  SIGNAL m_axi_awburst_axi_fifo		   : std_logic_vector(2-1 downto 0);
  SIGNAL m_axi_awlock_axi_fifo		   : std_logic_vector(2-1 downto 0);
  SIGNAL m_axi_awcache_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_awprot_axi_fifo		   : std_logic_vector(3-1 downto 0);
  SIGNAL m_axi_awqos_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_awregion_axi_fifo	   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_awuser_axi_fifo		   : std_logic_vector(1-1 downto 0);
  SIGNAL m_axi_awvalid_axi_fifo		   : std_logic;
  SIGNAL m_axi_wid_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_wdata_axi_fifo		   : std_logic_vector(64-1 downto 0);
  SIGNAL m_axi_wstrb_axi_fifo		   : std_logic_vector(8-1 downto 0);
  SIGNAL m_axi_wlast_axi_fifo		   : std_logic;
  SIGNAL m_axi_wuser_axi_fifo		   : std_logic_vector(1-1 downto 0);
  SIGNAL m_axi_wvalid_axi_fifo		   : std_logic;
  SIGNAL m_axi_bready_axi_fifo		   : std_logic;
  SIGNAL s_axi_awready_axi_fifo		   : std_logic;
  SIGNAL s_axi_wready_axi_fifo		   : std_logic;
  SIGNAL s_axi_bid_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL s_axi_bresp_axi_fifo		   : std_logic_vector(2-1 downto 0);
  SIGNAL s_axi_buser_axi_fifo		   : std_logic_vector(1-1 downto 0);
  SIGNAL s_axi_bvalid_axi_fifo		   : std_logic;
  SIGNAL m_axi_arid_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_araddr_axi_fifo		   : std_logic_vector(32-1 downto 0);
  SIGNAL m_axi_arlen_axi_fifo		   : std_logic_vector(8-1 downto 0);
  SIGNAL m_axi_arsize_axi_fifo		   : std_logic_vector(3-1 downto 0);
  SIGNAL m_axi_arburst_axi_fifo		   : std_logic_vector(2-1 downto 0);
  SIGNAL m_axi_arlock_axi_fifo		   : std_logic_vector(2-1 downto 0);
  SIGNAL m_axi_arcache_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_arprot_axi_fifo		   : std_logic_vector(3-1 downto 0);
  SIGNAL m_axi_arqos_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_arregion_axi_fifo	   : std_logic_vector(4-1 downto 0);
  SIGNAL m_axi_aruser_axi_fifo		   : std_logic_vector(1-1 downto 0);
  SIGNAL m_axi_arvalid_axi_fifo		   : std_logic;
  SIGNAL m_axi_rready_axi_fifo		   : std_logic;
  SIGNAL s_axi_arready_axi_fifo		   : std_logic;
  SIGNAL s_axi_rid_axi_fifo		   : std_logic_vector(4-1 downto 0);
  SIGNAL s_axi_rdata_axi_fifo		   : std_logic_vector(64-1 downto 0);
  SIGNAL s_axi_rresp_axi_fifo		   : std_logic_vector(2-1 downto 0);
  SIGNAL s_axi_rlast_axi_fifo		   : std_logic;
  SIGNAL s_axi_ruser_axi_fifo		   : std_logic_vector(1-1 downto 0);
  SIGNAL s_axi_rvalid_axi_fifo		   : std_logic;

  SIGNAL axi_aw_prog_full_thresh_axi_fifo  : std_logic_vector(4-1 downto 0);
  SIGNAL axi_aw_prog_empty_thresh_axi_fifo : std_logic_vector(4-1 downto 0);
  SIGNAL axi_aw_data_count_axi_fifo        : std_logic_vector(4 downto 0);
  SIGNAL axi_aw_wr_data_count_axi_fifo     : std_logic_vector(4 downto 0);
  SIGNAL axi_aw_rd_data_count_axi_fifo     : std_logic_vector(4 downto 0);
  SIGNAL axi_aw_sbiterr_axi_fifo 	   : std_logic;
  SIGNAL axi_aw_dbiterr_axi_fifo           : std_logic;
  SIGNAL axi_aw_overflow_axi_fifo          : std_logic;
  SIGNAL axi_aw_underflow_axi_fifo         : std_logic;
  SIGNAL axi_aw_prog_full                  : std_logic;
  SIGNAL axi_aw_prog_empty                 : std_logic;
  SIGNAL axi_w_prog_full_thresh_axi_fifo   : std_logic_vector(10-1 downto 0);
  SIGNAL axi_w_prog_empty_thresh_axi_fifo  : std_logic_vector(10-1 downto 0);
  SIGNAL axi_w_data_count_axi_fifo         : std_logic_vector(10 downto 0);
  SIGNAL axi_w_wr_data_count_axi_fifo      : std_logic_vector(10 downto 0);
  SIGNAL axi_w_rd_data_count_axi_fifo      : std_logic_vector(10 downto 0);
  SIGNAL axi_w_sbiterr_axi_fifo            : std_logic;
  SIGNAL axi_w_dbiterr_axi_fifo            : std_logic;
  SIGNAL axi_w_overflow_axi_fifo           : std_logic;
  SIGNAL axi_w_underflow_axi_fifo          : std_logic;
  SIGNAL axi_w_prog_full                   : std_logic;
  SIGNAL axi_w_prog_empty                  : std_logic;
  SIGNAL axi_b_prog_full_thresh_axi_fifo   : std_logic_vector(4-1 downto 0);
  SIGNAL axi_b_prog_empty_thresh_axi_fifo  : std_logic_vector(4-1 downto 0);
  SIGNAL axi_b_data_count_axi_fifo         : std_logic_vector(4 downto 0);
  SIGNAL axi_b_wr_data_count_axi_fifo      : std_logic_vector(4 downto 0);
  SIGNAL axi_b_rd_data_count_axi_fifo      : std_logic_vector(4 downto 0);
  SIGNAL axi_b_sbiterr_axi_fifo            : std_logic;
  SIGNAL axi_b_dbiterr_axi_fifo            : std_logic;
  SIGNAL axi_b_overflow_axi_fifo           : std_logic;
  SIGNAL axi_b_underflow_axi_fifo          : std_logic;
  SIGNAL axi_b_prog_full                   : std_logic;
  SIGNAL axi_b_prog_empty                  : std_logic;
  SIGNAL axi_ar_prog_full_thresh_axi_fifo  : std_logic_vector(4-1 downto 0);
  SIGNAL axi_ar_prog_empty_thresh_axi_fifo : std_logic_vector(4-1 downto 0);
  SIGNAL axi_ar_data_count_axi_fifo        : std_logic_vector(4 downto 0);
  SIGNAL axi_ar_wr_data_count_axi_fifo     : std_logic_vector(4 downto 0);
  SIGNAL axi_ar_rd_data_count_axi_fifo     : std_logic_vector(4 downto 0);
  SIGNAL axi_ar_sbiterr_axi_fifo           : std_logic;
  SIGNAL axi_ar_dbiterr_axi_fifo           : std_logic;
  SIGNAL axi_ar_overflow_axi_fifo          : std_logic;
  SIGNAL axi_ar_underflow_axi_fifo         : std_logic;
  SIGNAL axi_ar_prog_full                  : std_logic;
  SIGNAL axi_ar_prog_empty                 : std_logic;
  SIGNAL axi_r_prog_full_thresh_axi_fifo   : std_logic_vector(10-1 downto 0);
  SIGNAL axi_r_prog_empty_thresh_axi_fifo  : std_logic_vector(10-1 downto 0);
  SIGNAL axi_r_data_count_axi_fifo         : std_logic_vector(10 downto 0);
  SIGNAL axi_r_wr_data_count_axi_fifo      : std_logic_vector(10 downto 0);
  SIGNAL axi_r_rd_data_count_axi_fifo      : std_logic_vector(10 downto 0);
  SIGNAL axi_r_sbiterr_axi_fifo            : std_logic;
  SIGNAL axi_r_dbiterr_axi_fifo            : std_logic;
  SIGNAL axi_r_overflow_axi_fifo           : std_logic;
  SIGNAL axi_r_underflow_axi_fifo          : std_logic;
  SIGNAL axi_r_prog_full                   : std_logic;
  SIGNAL axi_r_prog_empty                  : std_logic;
  SIGNAL axis_wr_data_count_axi_fifo       : std_logic_vector(log2roundup(C_DEPTH) downto 0);
  SIGNAL axis_rd_data_count_axi_fifo       : std_logic_vector(log2roundup(C_DEPTH) downto 0);
  SIGNAL axis_sbiterr_axi_fifo             : std_logic;
  SIGNAL axis_dbiterr_axi_fifo             : std_logic;
  SIGNAL axis_overflow_axi_fifo            : std_logic;
  SIGNAL axis_underflow_axi_fifo           : std_logic;
  SIGNAL axis_prog_full_thresh             : std_logic_vector((log2roundup(C_DEPTH))-1 downto 0);
  SIGNAL axis_prog_empty_thresh            : std_logic_vector((log2roundup(C_DEPTH))-1 downto 0);
 
  begin
   COMP_FIFO : entity fifo_generator_v12_0.fifo_generator_v12_0
     generic map (
        C_ADD_NGC_CONSTRAINT                => 0,
        -- 0: Data FIFO; 1: Packet FIFO
        C_APPLICATION_TYPE_AXIS             => C_FIFO_GEN_TYPE,
        C_APPLICATION_TYPE_RACH             => 0,
        C_APPLICATION_TYPE_RDCH             => 0,
        C_APPLICATION_TYPE_WACH             => 0,
        C_APPLICATION_TYPE_WDCH             => 0,
        C_APPLICATION_TYPE_WRCH             => 0,
        C_AXI_ADDR_WIDTH                    => 32,
        C_AXI_LEN_WIDTH                     => 8,
        C_AXI_LOCK_WIDTH                    => 2,
        C_AXI_ARUSER_WIDTH                  => 1,
        C_AXI_AWUSER_WIDTH                  => 1,
        C_AXI_BUSER_WIDTH                   => 1,
        C_AXI_DATA_WIDTH                    => 64,
        C_AXI_ID_WIDTH                      => 4,
        C_AXI_RUSER_WIDTH                   => 1,
        C_AXI_TYPE                          => 0, -- 0: AXI4-Stream; 1: AXI4; 2: AXI4-Lite
        C_AXI_WUSER_WIDTH                   => 1,
        C_AXIS_TDATA_WIDTH                  => C_AXIS_TDATA_WIDTH,
        C_AXIS_TDEST_WIDTH                  => C_AXIS_TDEST_WIDTH,
        C_AXIS_TID_WIDTH                    => C_AXIS_TID_WIDTH,
        C_AXIS_TKEEP_WIDTH                  => TKEEP_WIDTH,
        C_AXIS_TSTRB_WIDTH                  => TKEEP_WIDTH,
        C_AXIS_TUSER_WIDTH                  => C_AXIS_TUSER_WIDTH,
        -- 0 = FIFO; 1 = Register Slice; 2 = Pass Through Logie
        C_AXIS_TYPE                         => AXIS_TYPE,
        C_COMMON_CLOCK                      => 1,
        C_COUNT_TYPE                        => 0,
        C_DATA_COUNT_WIDTH                  => LOG2DEPTH,
        C_DEFAULT_VALUE                     => "Blankstring",
        C_DIN_WIDTH                         => C_AXIS_TDATA_WIDTH,
        C_DIN_WIDTH_AXIS                    => C_DIN_WIDTH_AXIS,
        C_DIN_WIDTH_RACH                    => 32,
        C_DIN_WIDTH_RDCH                    => 64,
        C_DIN_WIDTH_WACH                    => 32,
        C_DIN_WIDTH_WDCH                    => 64,
        C_DIN_WIDTH_WRCH                    => 2,
--        C_DOUT_RST_VAL                      => "0",
        C_DOUT_WIDTH                        => C_AXIS_TDATA_WIDTH,
        C_ENABLE_RLOCS                      => 0,
        C_ENABLE_RST_SYNC                   => 1,
        C_ERROR_INJECTION_TYPE              => 0,
        C_ERROR_INJECTION_TYPE_AXIS         => 0,
        C_ERROR_INJECTION_TYPE_RACH         => 0,
        C_ERROR_INJECTION_TYPE_RDCH         => 0,
        C_ERROR_INJECTION_TYPE_WACH         => 0,
        C_ERROR_INJECTION_TYPE_WDCH         => 0,
        C_ERROR_INJECTION_TYPE_WRCH         => 0,
        C_FAMILY                            => C_FAMILY,
        C_FULL_FLAGS_RST_VAL                => 1,
        C_HAS_ALMOST_EMPTY                  => 0,
        C_HAS_ALMOST_FULL                   => 0,
        C_HAS_AXI_ID                        => 1,
        C_HAS_AXI_ARUSER                    => 0,
        C_HAS_AXI_AWUSER                    => 0,
        C_HAS_AXI_BUSER                     => 0,
        C_HAS_AXI_RD_CHANNEL                => 0,
        C_HAS_AXI_RUSER                     => 0,
        C_HAS_AXI_WR_CHANNEL                => 0,
        C_HAS_AXI_WUSER                     => 0,
        C_HAS_AXIS_TDATA                    => 1,
        C_HAS_AXIS_TDEST                    => C_HAS_AXIS_TDEST,
        C_HAS_AXIS_TID                      => C_HAS_AXIS_TID,
        C_HAS_AXIS_TKEEP                    => C_HAS_AXIS_TKEEP,
        C_HAS_AXIS_TLAST                    => C_HAS_AXIS_TLAST,
        C_HAS_AXIS_TREADY                   => 1,
        C_HAS_AXIS_TSTRB                    => C_HAS_AXIS_TSTRB,
        C_HAS_AXIS_TUSER                    => C_HAS_AXIS_TUSER,
        C_HAS_BACKUP                        => 0,
        C_HAS_DATA_COUNT                    => 0,
        C_HAS_DATA_COUNTS_AXIS              => 1,
        C_HAS_DATA_COUNTS_RACH              => 0,
        C_HAS_DATA_COUNTS_RDCH              => 0,
        C_HAS_DATA_COUNTS_WACH              => 0,
        C_HAS_DATA_COUNTS_WDCH              => 0,
        C_HAS_DATA_COUNTS_WRCH              => 0,
        C_HAS_INT_CLK                       => 0,
        C_HAS_MASTER_CE                     => 0,
        C_HAS_MEMINIT_FILE                  => 0,
        C_HAS_OVERFLOW                      => 0,
        C_HAS_PROG_FLAGS_AXIS               => 0,
        C_HAS_PROG_FLAGS_RACH               => 0,
        C_HAS_PROG_FLAGS_RDCH               => 0,
        C_HAS_PROG_FLAGS_WACH               => 0,
        C_HAS_PROG_FLAGS_WDCH               => 0,
        C_HAS_PROG_FLAGS_WRCH               => 0,
        C_HAS_RD_DATA_COUNT                 => 0,
        C_HAS_RD_RST                        => 0,
        C_HAS_RST                           => 1,
        C_HAS_SLAVE_CE                      => 0,
        C_HAS_SRST                          => 0,
        C_HAS_UNDERFLOW                     => 0,
        C_HAS_VALID                         => 0,
        C_HAS_WR_ACK                        => 0,
        C_HAS_WR_DATA_COUNT                 => 0,
        C_HAS_WR_RST                        => 0,
        C_IMPLEMENTATION_TYPE               => 0,
        C_IMPLEMENTATION_TYPE_AXIS          => 1,
        C_IMPLEMENTATION_TYPE_RACH          => 2,
        C_IMPLEMENTATION_TYPE_RDCH          => 1,
        C_IMPLEMENTATION_TYPE_WACH          => 2,
        C_IMPLEMENTATION_TYPE_WDCH          => 1,
        C_IMPLEMENTATION_TYPE_WRCH          => 2,
        C_INIT_WR_PNTR_VAL                  => 0,
        C_INTERFACE_TYPE                    => 1,
        C_MEMORY_TYPE                       => 1,
        C_MIF_FILE_NAME                     => "Blankstring",
        C_MSGON_VAL                         => 1,
        C_OPTIMIZATION_MODE                 => 0,
        C_OVERFLOW_LOW                      => 0,
        C_PRELOAD_LATENCY                   => 1,
        C_PRELOAD_REGS                      => 0,
        C_PRIM_FIFO_TYPE                    => "4KX4",
        C_PROG_EMPTY_THRESH_ASSERT_VAL      => C_PE_THRESHOLD,
        C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS => C_PE_THRESHOLD,
        C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH => 14,
        C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH => 1022,
        C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH => 14,
        C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH => 1022,
        C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH => 14,
        C_PROG_EMPTY_THRESH_NEGATE_VAL      => 3,
        C_PROG_EMPTY_TYPE                   => 1,
        C_PROG_EMPTY_TYPE_AXIS              => 1,
        C_PROG_EMPTY_TYPE_RACH              => 0,
        C_PROG_EMPTY_TYPE_RDCH              => 0,
        C_PROG_EMPTY_TYPE_WACH              => 0,
        C_PROG_EMPTY_TYPE_WDCH              => 0,
        C_PROG_EMPTY_TYPE_WRCH              => 0,
        C_PROG_FULL_THRESH_ASSERT_VAL       => 1022,
        C_PROG_FULL_THRESH_ASSERT_VAL_AXIS  => C_PF_THRESHOLD,
        C_PROG_FULL_THRESH_ASSERT_VAL_RACH  => 15,
        C_PROG_FULL_THRESH_ASSERT_VAL_RDCH  => 1023,
        C_PROG_FULL_THRESH_ASSERT_VAL_WACH  => 15,
        C_PROG_FULL_THRESH_ASSERT_VAL_WDCH  => 1023,
        C_PROG_FULL_THRESH_ASSERT_VAL_WRCH  => 15,
        C_PROG_FULL_THRESH_NEGATE_VAL       => 1021,
        C_PROG_FULL_TYPE                    => 0,
        C_PROG_FULL_TYPE_AXIS               => 1,
        C_PROG_FULL_TYPE_RACH               => 0,
        C_PROG_FULL_TYPE_RDCH               => 0,
        C_PROG_FULL_TYPE_WACH               => 0,
        C_PROG_FULL_TYPE_WDCH               => 0,
        C_PROG_FULL_TYPE_WRCH               => 0,
        C_RACH_TYPE                         => 0,
        C_RD_DATA_COUNT_WIDTH               => LOG2DEPTH,
        C_RD_DEPTH                          => 1024,
        C_RD_FREQ                           => 1,
        C_RD_PNTR_WIDTH                     => 10,
        C_RDCH_TYPE                         => 0,
        C_REG_SLICE_MODE_AXIS               => REG_SLICE_MODE_AXIS, -- 0: FWD and REV mode; 1: FWD mode
        C_REG_SLICE_MODE_RACH               => 0,
        C_REG_SLICE_MODE_RDCH               => 0,
        C_REG_SLICE_MODE_WACH               => 0,
        C_REG_SLICE_MODE_WDCH               => 0,
        C_REG_SLICE_MODE_WRCH               => 0,
        C_SYNCHRONIZER_STAGE                => 2,
        C_UNDERFLOW_LOW                     => 0,
        C_USE_COMMON_OVERFLOW               => 0,
        C_USE_COMMON_UNDERFLOW              => 0,
        C_USE_DEFAULT_SETTINGS              => 0,
        C_USE_DOUT_RST                      => 1,
        C_USE_ECC                           => 0,
        C_USE_ECC_AXIS                      => 0,
        C_USE_ECC_RACH                      => 0,
        C_USE_ECC_RDCH                      => 0,
        C_USE_ECC_WACH                      => 0,
        C_USE_ECC_WDCH                      => 0,
        C_USE_ECC_WRCH                      => 0,
        C_USE_EMBEDDED_REG                  => 0,
        C_USE_FIFO16_FLAGS                  => 0,
        C_USE_FWFT_DATA_COUNT               => 0,
        C_VALID_LOW                         => 0,
        C_WACH_TYPE                         => 0,
        C_WDCH_TYPE                         => 0,
        C_WR_ACK_LOW                        => 0,
        C_WR_DATA_COUNT_WIDTH               => LOG2DEPTH,
        C_WR_DEPTH                          => 1024,
        C_WR_DEPTH_AXIS                     => C_DEPTH,
        C_WR_DEPTH_RACH                     => 16,
        C_WR_DEPTH_RDCH                     => 1024,
        C_WR_DEPTH_WACH                     => 16,
        C_WR_DEPTH_WDCH                     => 1024,
        C_WR_DEPTH_WRCH                     => 16,
        C_WR_FREQ                           => 1,
        C_WR_PNTR_WIDTH                     => 10,
        C_WR_PNTR_WIDTH_AXIS                => LOG2DEPTH,
        C_WR_PNTR_WIDTH_RACH                => 4,
        C_WR_PNTR_WIDTH_RDCH                => 10,
        C_WR_PNTR_WIDTH_WACH                => 4,
        C_WR_PNTR_WIDTH_WDCH                => 10,
        C_WR_PNTR_WIDTH_WRCH                => 4,
        C_WR_RESPONSE_LATENCY               => 1,
        C_WRCH_TYPE                         => 0
      )
     port map (
        backup                              => GND,
        backup_marker                       => GND,
        clk                                 => GND,
        rst                                 => GND,
        srst                                => GND,
        wr_clk                              => GND,
        wr_rst                              => GND,
        rd_clk                              => GND,
        rd_rst                              => GND,
        din                                 => s_axis_tdata,
        wr_en                               => GND,
        rd_en                               => GND,
        prog_empty_thresh                   => PROG_FLAG_WIDTH,
        prog_empty_thresh_assert            => PROG_FLAG_WIDTH,
        prog_empty_thresh_negate            => PROG_FLAG_WIDTH,
        prog_full_thresh                    => PROG_FLAG_WIDTH,
        prog_full_thresh_assert             => PROG_FLAG_WIDTH,
        prog_full_thresh_negate             => PROG_FLAG_WIDTH,
        int_clk                             => GND,
        injectdbiterr                       => GND,
        injectsbiterr                       => GND,
        sleep                               => GND,
        dout                                => dout_axi_fifo,
        full                                => full_axi_fifo,
        almost_full                         => almost_full_axi_fifo,
        wr_ack                              => wr_ack_axi_fifo,
        overflow                            => overflow_axi_fifo,
        empty                               => empty_axi_fifo,
        almost_empty                        => almost_empty_axi_fifo,
        valid                               => valid_axi_fifo,
        underflow                           => underflow_axi_fifo,
        data_count                          => data_count_axi_fifo,
        rd_data_count                       => rd_data_count_axi_fifo,
        wr_data_count                       => wr_data_count_axi_fifo,
        prog_full                           => prog_full_axi_fifo,
        prog_empty                          => prog_empty_axi_fifo,
        sbiterr                             => sbiterr_axi_fifo,
        dbiterr                             => dbiterr_axi_fifo,
        wr_rst_busy                         => wr_rst_busy_i,
        rd_rst_busy                         => rd_rst_busy_i,
        
        m_aclk                              => aclk,
        s_aclk                              => aclk,
        s_aresetn                           => aresetn,
        m_aclk_en                           => GND,
        s_aclk_en                           => GND,
        
        m_axi_awid                          => m_axi_awid_axi_fifo,
        m_axi_awaddr                        => m_axi_awaddr_axi_fifo,
        m_axi_awlen                         => m_axi_awlen_axi_fifo,
        m_axi_awsize                        => m_axi_awsize_axi_fifo,
        m_axi_awburst                       => m_axi_awburst_axi_fifo,
        m_axi_awlock                        => m_axi_awlock_axi_fifo,
        m_axi_awcache                       => m_axi_awcache_axi_fifo,
        m_axi_awprot                        => m_axi_awprot_axi_fifo,
        m_axi_awqos                         => m_axi_awqos_axi_fifo,
        m_axi_awregion                      => m_axi_awregion_axi_fifo,
        m_axi_awuser                        => m_axi_awuser_axi_fifo,
        m_axi_awvalid                       => m_axi_awvalid_axi_fifo,
        m_axi_awready                       => GND,
        
        m_axi_wid                           => m_axi_wid_axi_fifo,
        m_axi_wdata                         => m_axi_wdata_axi_fifo,
        m_axi_wstrb                         => m_axi_wstrb_axi_fifo,
        m_axi_wlast                         => m_axi_wlast_axi_fifo,
        m_axi_wuser                         => m_axi_wuser_axi_fifo,
        m_axi_wvalid                        => m_axi_wvalid_axi_fifo,
        m_axi_wready                        => GND,
        
        m_axi_bid                           => ALL_ZERO_4,
        m_axi_bresp                         => ALL_ZERO_2,
        m_axi_buser                         => AXI4_USR_WIDTH_ZERO,
        m_axi_bvalid                        => GND,
        m_axi_bready                        => m_axi_bready_axi_fifo,
        
        s_axi_awid                          => ALL_ZERO_4,
        s_axi_awaddr                        => ALL_ZERO_32,
        s_axi_awlen                         => ALL_ZERO_8,
        s_axi_awsize                        => ALL_ZERO_3,
        s_axi_awburst                       => ALL_ZERO_2,
        s_axi_awlock                        => ALL_ZERO_2,
        s_axi_awcache                       => ALL_ZERO_4,
        s_axi_awprot                        => ALL_ZERO_3,
        s_axi_awqos                         => ALL_ZERO_4,
        s_axi_awregion                      => ALL_ZERO_4,
        s_axi_awuser                        => AXI4_USR_WIDTH_ZERO,
        s_axi_awvalid                       => GND,
        s_axi_awready                       => s_axi_awready_axi_fifo,
        
        s_axi_wid                           => ALL_ZERO_4,
        s_axi_wdata                         => ALL_ZERO_64,
        s_axi_wstrb                         => ALL_ZERO_8,
        s_axi_wlast                         => GND,
        s_axi_wuser                         => AXI4_USR_WIDTH_ZERO,
        s_axi_wvalid                        => GND,
        s_axi_wready                        => s_axi_wready_axi_fifo,
        
        s_axi_bid                           => s_axi_bid_axi_fifo,
        s_axi_bresp                         => s_axi_bresp_axi_fifo,
        s_axi_buser                         => s_axi_buser_axi_fifo,
        s_axi_bvalid                        => s_axi_bvalid_axi_fifo,
        s_axi_bready                        => GND,
        
        m_axi_arid                          => m_axi_arid_axi_fifo,
        m_axi_araddr                        => m_axi_araddr_axi_fifo,
        m_axi_arlen                         => m_axi_arlen_axi_fifo,
        m_axi_arsize                        => m_axi_arsize_axi_fifo,
        m_axi_arburst                       => m_axi_arburst_axi_fifo,
        m_axi_arlock                        => m_axi_arlock_axi_fifo,
        m_axi_arcache                       => m_axi_arcache_axi_fifo,
        m_axi_arprot                        => m_axi_arprot_axi_fifo,
        m_axi_arqos                         => m_axi_arqos_axi_fifo,
        m_axi_arregion                      => m_axi_arregion_axi_fifo,
        m_axi_aruser                        => m_axi_aruser_axi_fifo,
        m_axi_arvalid                       => m_axi_arvalid_axi_fifo,
        m_axi_arready                       => GND,
        
        m_axi_rid                           => ALL_ZERO_4,
        m_axi_rdata                         => ALL_ZERO_64,
        m_axi_rresp                         => ALL_ZERO_2,
        m_axi_rlast                         => GND,
        m_axi_ruser                         => AXI4_USR_WIDTH_ZERO,
        m_axi_rvalid                        => GND,
        m_axi_rready                        => m_axi_rready_axi_fifo,
        
        s_axi_arid                          => ALL_ZERO_4,
        s_axi_araddr                        => ALL_ZERO_32,
        s_axi_arlen                         => ALL_ZERO_8,
        s_axi_arsize                        => ALL_ZERO_3,
        s_axi_arburst                       => ALL_ZERO_2,
        s_axi_arlock                        => ALL_ZERO_2,
        s_axi_arcache                       => ALL_ZERO_4,
        s_axi_arprot                        => ALL_ZERO_3,
        s_axi_arqos                         => ALL_ZERO_4,
        s_axi_arregion                      => ALL_ZERO_4,
        s_axi_aruser                        => AXI4_USR_WIDTH_ZERO,
        s_axi_arvalid                       => GND,
        s_axi_arready                       => s_axi_arready_axi_fifo,
        
        s_axi_rid                           => s_axi_rid_axi_fifo,
        s_axi_rdata                         => s_axi_rdata_axi_fifo,
        s_axi_rresp                         => s_axi_rresp_axi_fifo,
        s_axi_rlast                         => s_axi_rlast_axi_fifo,
        s_axi_ruser                         => s_axi_ruser_axi_fifo,
        s_axi_rvalid                        => s_axi_rvalid_axi_fifo,
        s_axi_rready                        => GND,
  
        m_axis_tvalid                       => m_axis_tvalid,
        m_axis_tready                       => m_axis_tready,
        m_axis_tdata                        => m_axis_tdata ,
        m_axis_tstrb                        => m_axis_tstrb ,
        m_axis_tkeep                        => m_axis_tkeep ,
        m_axis_tlast                        => m_axis_tlast ,
        m_axis_tid                          => m_axis_tid   ,
        m_axis_tdest                        => m_axis_tdest ,
        m_axis_tuser                        => m_axis_tuser ,
  
        s_axis_tvalid                       => s_axis_tvalid,
        s_axis_tready                       => s_axis_tready,
        s_axis_tdata                        => s_axis_tdata ,
        s_axis_tstrb                        => s_axis_tstrb ,
        s_axis_tkeep                        => s_axis_tkeep ,
        s_axis_tlast                        => s_axis_tlast ,
        s_axis_tid                          => s_axis_tid   ,
        s_axis_tdest                        => s_axis_tdest ,
        s_axis_tuser                        => s_axis_tuser ,
        
        axi_aw_injectsbiterr                => GND,
        axi_aw_injectdbiterr                => GND,
        axi_aw_prog_full_thresh             => axi_aw_prog_full_thresh_axi_fifo,
        axi_aw_prog_empty_thresh            => axi_aw_prog_empty_thresh_axi_fifo,
        axi_aw_data_count                   => axi_aw_data_count_axi_fifo,
        axi_aw_wr_data_count                => axi_aw_wr_data_count_axi_fifo,
        axi_aw_rd_data_count                => axi_aw_rd_data_count_axi_fifo,
        axi_aw_sbiterr                      => axi_aw_sbiterr_axi_fifo,
        axi_aw_dbiterr                      => axi_aw_dbiterr_axi_fifo,
        axi_aw_overflow                     => axi_aw_overflow_axi_fifo,
        axi_aw_underflow                    => axi_aw_underflow_axi_fifo,
        axi_aw_prog_full                    => axi_aw_prog_full,
        axi_aw_prog_empty                   => axi_aw_prog_empty,

        axi_w_injectsbiterr                 => GND,
        axi_w_injectdbiterr                 => GND,
        axi_w_prog_full_thresh              => axi_w_prog_full_thresh_axi_fifo,
        axi_w_prog_empty_thresh             => axi_w_prog_empty_thresh_axi_fifo,
        axi_w_data_count                    => axi_w_data_count_axi_fifo,
        axi_w_wr_data_count                 => axi_w_wr_data_count_axi_fifo,
        axi_w_rd_data_count                 => axi_w_rd_data_count_axi_fifo,
        axi_w_sbiterr                       => axi_w_sbiterr_axi_fifo,
        axi_w_dbiterr                       => axi_w_dbiterr_axi_fifo,
        axi_w_overflow                      => axi_w_overflow_axi_fifo,
        axi_w_underflow                     => axi_w_underflow_axi_fifo,
        axi_w_prog_full                     => axi_w_prog_full,
        axi_w_prog_empty                    => axi_w_prog_empty,

        axi_b_injectsbiterr                 => GND,
        axi_b_injectdbiterr                 => GND,
        axi_b_prog_full_thresh              => axi_b_prog_full_thresh_axi_fifo,
        axi_b_prog_empty_thresh             => axi_b_prog_empty_thresh_axi_fifo,
        axi_b_data_count                    => axi_b_data_count_axi_fifo,
        axi_b_wr_data_count                 => axi_b_wr_data_count_axi_fifo,
        axi_b_rd_data_count                 => axi_b_rd_data_count_axi_fifo,
        axi_b_sbiterr                       => axi_b_sbiterr_axi_fifo,
        axi_b_dbiterr                       => axi_b_dbiterr_axi_fifo,
        axi_b_overflow                      => axi_b_overflow_axi_fifo,
        axi_b_underflow                     => axi_b_underflow_axi_fifo,
        axi_b_prog_full                     => axi_b_prog_full,
        axi_b_prog_empty                    => axi_b_prog_empty,

        axi_ar_injectsbiterr                => GND,
        axi_ar_injectdbiterr                => GND,
        axi_ar_prog_full_thresh             => axi_ar_prog_full_thresh_axi_fifo,
        axi_ar_prog_empty_thresh            => axi_ar_prog_empty_thresh_axi_fifo,
        axi_ar_data_count                   => axi_ar_data_count_axi_fifo,
        axi_ar_wr_data_count                => axi_ar_wr_data_count_axi_fifo,
        axi_ar_rd_data_count                => axi_ar_rd_data_count_axi_fifo,
        axi_ar_sbiterr                      => axi_ar_sbiterr_axi_fifo,
        axi_ar_dbiterr                      => axi_ar_dbiterr_axi_fifo,
        axi_ar_overflow                     => axi_ar_overflow_axi_fifo,
        axi_ar_underflow                    => axi_ar_underflow_axi_fifo,
        axi_ar_prog_full                    => axi_ar_prog_full,
        axi_ar_prog_empty                   => axi_ar_prog_empty,

        axi_r_injectsbiterr                 => GND,
        axi_r_injectdbiterr                 => GND,
        axi_r_prog_full_thresh              => axi_r_prog_full_thresh_axi_fifo,
        axi_r_prog_empty_thresh             => axi_r_prog_empty_thresh_axi_fifo,
        axi_r_data_count                    => axi_r_data_count_axi_fifo,
        axi_r_wr_data_count                 => axi_r_wr_data_count_axi_fifo,
        axi_r_rd_data_count                 => axi_r_rd_data_count_axi_fifo,
        axi_r_sbiterr                       => axi_r_sbiterr_axi_fifo,
        axi_r_dbiterr                       => axi_r_dbiterr_axi_fifo,
        axi_r_overflow                      => axi_r_overflow_axi_fifo,
        axi_r_underflow                     => axi_r_underflow_axi_fifo,
        axi_r_prog_full                     => axi_r_prog_full,
        axi_r_prog_empty                    => axi_r_prog_empty,

        axis_injectsbiterr                  => GND,
        axis_injectdbiterr                  => GND,
        axis_prog_full_thresh               => axis_prog_full_thresh,
        axis_prog_empty_thresh              => axis_prog_empty_thresh,
        axis_prog_full                      => axis_prog_full,
        axis_prog_empty                     => axis_prog_empty,
        axis_data_count                     => axis_data_count,
        axis_wr_data_count                  => axis_wr_data_count_axi_fifo,
        axis_rd_data_count                  => axis_rd_data_count_axi_fifo,
        axis_sbiterr                        => axis_sbiterr_axi_fifo,
        axis_dbiterr                        => axis_dbiterr_axi_fifo,
        axis_overflow                       => axis_overflow_axi_fifo,
        axis_underflow                      => axis_underflow_axi_fifo
	);

end architecture;