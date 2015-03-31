// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

// axi_fifo
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of ap_return
//        bit 31~0 - ap_return[31:0] (Read)
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFIFO_DEQUEUE_AXI_FIFO_ADDR_AP_CTRL   0x00
#define XFIFO_DEQUEUE_AXI_FIFO_ADDR_GIE       0x04
#define XFIFO_DEQUEUE_AXI_FIFO_ADDR_IER       0x08
#define XFIFO_DEQUEUE_AXI_FIFO_ADDR_ISR       0x0c
#define XFIFO_DEQUEUE_AXI_FIFO_ADDR_AP_RETURN 0x10
#define XFIFO_DEQUEUE_AXI_FIFO_BITS_AP_RETURN 32

