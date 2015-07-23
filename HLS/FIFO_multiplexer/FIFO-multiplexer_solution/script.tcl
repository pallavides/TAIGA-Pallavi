############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project FIFO_multiplexer
set_top FIFO_multiplexer
add_files FIFO_multiplexer/FIFO_multiplexer.cpp
open_solution "FIFO-multiplexer_solution"
set_part {xc7z010clg400-1}
create_clock -period 10 -name default
source "./FIFO_multiplexer/FIFO-multiplexer_solution/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
