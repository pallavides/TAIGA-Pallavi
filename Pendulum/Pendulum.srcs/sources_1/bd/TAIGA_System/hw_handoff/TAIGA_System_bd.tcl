
################################################################
# This is a generated script based on design: TAIGA_System
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2014.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source TAIGA_System_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z010clg400-1


# CHANGE DESIGN NAME HERE
set design_name TAIGA_System

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}


# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: local_memory_IOI
proc create_hier_cell_local_memory_IOI { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_local_memory_IOI() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -from 0 -to 0 -type rst LMB_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list CONFIG.C_ECC {0}  ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list CONFIG.C_ECC {0}  ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.2 lmb_bram ]
  set_property -dict [ list CONFIG.Memory_Type {True_Dual_Port_RAM} CONFIG.use_bram_block {BRAM_Controller}  ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net IO_Intermediary_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net IO_Intermediary_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net IO_Intermediary_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net IO_Intermediary_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net IO_Intermediary_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net IO_Intermediary_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net IO_Intermediary_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]
  connect_bd_net -net IO_Intermediary_LMB_Rst [get_bd_pins LMB_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: backup_controller_local_memory
proc create_hier_cell_backup_controller_local_memory { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_backup_controller_local_memory() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -from 0 -to 0 -type rst LMB_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list CONFIG.C_ECC {0}  ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list CONFIG.C_ECC {0}  ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.2 lmb_bram ]
  set_property -dict [ list CONFIG.Memory_Type {True_Dual_Port_RAM} CONFIG.use_bram_block {BRAM_Controller}  ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net backup_controller_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net backup_controller_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net backup_controller_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net backup_controller_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net backup_controller_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net backup_controller_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net backup_controller_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]
  connect_bd_net -net backup_controller_LMB_Rst [get_bd_pins LMB_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  
  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set gpio_btn [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 gpio_btn ]
  set gpio_led_backup [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 gpio_led_backup ]
  set gpio_led_ioi [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 gpio_led_ioi ]
  set gpio_led_production [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 gpio_led_production ]
  set gpio_sw [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 gpio_sw ]

  # Create ports
  set gpio_trigger [ create_bd_port -dir O -from 0 -to 0 gpio_trigger ]
  set spi_plant_miso_i [ create_bd_port -dir I spi_plant_miso_i ]
  set spi_plant_mosi_o [ create_bd_port -dir O spi_plant_mosi_o ]
  set spi_plant_sck_o [ create_bd_port -dir O spi_plant_sck_o ]
  set spi_plant_ss_o [ create_bd_port -dir O -from 3 -to 0 spi_plant_ss_o ]

  # Create instance: IO_Intermediary, and set properties
  set IO_Intermediary [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:9.4 IO_Intermediary ]
  set_property -dict [ list CONFIG.C_CACHE_BYTE_SIZE {32768} CONFIG.C_DCACHE_BYTE_SIZE {32768} CONFIG.C_DEBUG_ENABLED {1} CONFIG.C_D_AXI {1} CONFIG.C_D_LMB {1} CONFIG.C_I_LMB {1} CONFIG.C_USE_BARREL {1} CONFIG.C_USE_DCACHE {0} CONFIG.C_USE_DIV {1} CONFIG.C_USE_FPU {2} CONFIG.C_USE_HW_MUL {1} CONFIG.C_USE_ICACHE {0} CONFIG.C_USE_MSR_INSTR {1} CONFIG.C_USE_PCMP_INSTR {1}  ] $IO_Intermediary

  # Create instance: IO_Intermediary_xlconcat, and set properties
  set IO_Intermediary_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 IO_Intermediary_xlconcat ]

  # Create instance: axi_fifo_IOI_dequeue, and set properties
  set axi_fifo_IOI_dequeue [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.1 axi_fifo_IOI_dequeue ]
  set_property -dict [ list CONFIG.C_DATA_INTERFACE_TYPE {0} CONFIG.C_USE_TX_DATA {0}  ] $axi_fifo_IOI_dequeue

  # Create instance: axi_fifo_IOI_enqueue, and set properties
  set axi_fifo_IOI_enqueue [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.1 axi_fifo_IOI_enqueue ]
  set_property -dict [ list CONFIG.C_DATA_INTERFACE_TYPE {0} CONFIG.C_USE_RX_DATA {0} CONFIG.C_USE_TX_DATA {1}  ] $axi_fifo_IOI_enqueue

  # Create instance: axi_fifo_backup_dequeue, and set properties
  set axi_fifo_backup_dequeue [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.1 axi_fifo_backup_dequeue ]
  set_property -dict [ list CONFIG.C_DATA_INTERFACE_TYPE {0} CONFIG.C_USE_TX_DATA {0}  ] $axi_fifo_backup_dequeue

  # Create instance: axi_fifo_backup_enqueue, and set properties
  set axi_fifo_backup_enqueue [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.1 axi_fifo_backup_enqueue ]
  set_property -dict [ list CONFIG.C_DATA_INTERFACE_TYPE {0} CONFIG.C_USE_RX_DATA {0} CONFIG.C_USE_TX_DATA {1}  ] $axi_fifo_backup_enqueue

  # Create instance: axi_fifo_production_dequeue, and set properties
  set axi_fifo_production_dequeue [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.1 axi_fifo_production_dequeue ]
  set_property -dict [ list CONFIG.C_DATA_INTERFACE_TYPE {0} CONFIG.C_USE_TX_DATA {0}  ] $axi_fifo_production_dequeue

  # Create instance: axi_fifo_production_enqueue, and set properties
  set axi_fifo_production_enqueue [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.1 axi_fifo_production_enqueue ]
  set_property -dict [ list CONFIG.C_DATA_INTERFACE_TYPE {0} CONFIG.C_USE_RX_DATA {0} CONFIG.C_USE_TX_DATA {1}  ] $axi_fifo_production_enqueue

  # Create instance: axi_gpio_IOI_in, and set properties
  set axi_gpio_IOI_in [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_IOI_in ]
  set_property -dict [ list CONFIG.C_ALL_INPUTS {1} CONFIG.C_ALL_INPUTS_2 {1} CONFIG.C_GPIO2_WIDTH {4} CONFIG.C_GPIO_WIDTH {4} CONFIG.C_IS_DUAL {1}  ] $axi_gpio_IOI_in

  # Create instance: axi_gpio_IOI_out, and set properties
  set axi_gpio_IOI_out [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_IOI_out ]
  set_property -dict [ list CONFIG.C_ALL_OUTPUTS {1} CONFIG.C_GPIO_WIDTH {1}  ] $axi_gpio_IOI_out

  # Create instance: axi_gpio_backup_controller_out, and set properties
  set axi_gpio_backup_controller_out [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_backup_controller_out ]
  set_property -dict [ list CONFIG.C_ALL_INPUTS {0} CONFIG.C_ALL_OUTPUTS {1} CONFIG.C_GPIO_WIDTH {1}  ] $axi_gpio_backup_controller_out

  # Create instance: axi_gpio_production_controller_out, and set properties
  set axi_gpio_production_controller_out [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_production_controller_out ]
  set_property -dict [ list CONFIG.C_ALL_OUTPUTS {1} CONFIG.C_GPIO_WIDTH {1}  ] $axi_gpio_production_controller_out

  # Create instance: axi_gpio_trigger, and set properties
  set axi_gpio_trigger [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_trigger ]
  set_property -dict [ list CONFIG.C_ALL_OUTPUTS {1} CONFIG.C_GPIO_WIDTH {1}  ] $axi_gpio_trigger

  # Create instance: axi_intc_IOI, and set properties
  set axi_intc_IOI [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 axi_intc_IOI ]
  set_property -dict [ list CONFIG.C_HAS_FAST {1}  ] $axi_intc_IOI

  # Create instance: axi_periph_IOI, and set properties
  set axi_periph_IOI [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_periph_IOI ]
  set_property -dict [ list CONFIG.NUM_MI {8}  ] $axi_periph_IOI

  # Create instance: axi_periph_backup_controller, and set properties
  set axi_periph_backup_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_periph_backup_controller ]
  set_property -dict [ list CONFIG.NUM_MI {5}  ] $axi_periph_backup_controller

  # Create instance: axi_periph_production_controller, and set properties
  set axi_periph_production_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_periph_production_controller ]
  set_property -dict [ list CONFIG.NUM_MI {3}  ] $axi_periph_production_controller

  # Create instance: axi_quad_spi_plant, and set properties
  set axi_quad_spi_plant [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_plant ]
  set_property -dict [ list CONFIG.C_FIFO_DEPTH {0} CONFIG.C_NUM_SS_BITS {4} CONFIG.C_USE_STARTUP {0} CONFIG.FIFO_INCLUDED {0} CONFIG.Multiples16 {5}  ] $axi_quad_spi_plant

  # Create instance: axi_timer_backup_controller, and set properties
  set axi_timer_backup_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_backup_controller ]
  set_property -dict [ list CONFIG.enable_timer2 {0}  ] $axi_timer_backup_controller

  # Create instance: axi_wdt_IOI, and set properties
  set axi_wdt_IOI [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timebase_wdt:2.0 axi_wdt_IOI ]
  set_property -dict [ list CONFIG.C_WDT_INTERVAL {18}  ] $axi_wdt_IOI

  # Create instance: backup_controller, and set properties
  set backup_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:9.4 backup_controller ]
  set_property -dict [ list CONFIG.C_CACHE_BYTE_SIZE {32768} CONFIG.C_DCACHE_BYTE_SIZE {32768} CONFIG.C_DEBUG_ENABLED {1} CONFIG.C_D_AXI {1} CONFIG.C_D_LMB {1} CONFIG.C_I_LMB {1} CONFIG.C_USE_BARREL {1} CONFIG.C_USE_DCACHE {0} CONFIG.C_USE_DIV {1} CONFIG.C_USE_FPU {2} CONFIG.C_USE_HW_MUL {1} CONFIG.C_USE_ICACHE {0} CONFIG.C_USE_MSR_INSTR {1} CONFIG.C_USE_PCMP_INSTR {1}  ] $backup_controller

  # Create instance: backup_controller_axi_intc, and set properties
  set backup_controller_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 backup_controller_axi_intc ]
  set_property -dict [ list CONFIG.C_HAS_FAST {1}  ] $backup_controller_axi_intc

  # Create instance: backup_controller_local_memory
  create_hier_cell_backup_controller_local_memory [current_bd_instance .] backup_controller_local_memory

  # Create instance: fifo_IOI_to_backup, and set properties
  set fifo_IOI_to_backup [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:12.0 fifo_IOI_to_backup ]
  set_property -dict [ list CONFIG.Empty_Threshold_Assert_Value_axis {510} CONFIG.Enable_TLAST {false} CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} CONFIG.Full_Threshold_Assert_Value_axis {511} CONFIG.HAS_TKEEP {false} CONFIG.INTERFACE_TYPE {AXI_STREAM} CONFIG.Input_Depth_axis {512} CONFIG.TDATA_NUM_BYTES {4}  ] $fifo_IOI_to_backup

  # Create instance: fifo_IOI_to_production, and set properties
  set fifo_IOI_to_production [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:12.0 fifo_IOI_to_production ]
  set_property -dict [ list CONFIG.Empty_Threshold_Assert_Value_axis {510} CONFIG.Enable_TLAST {false} CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} CONFIG.Full_Threshold_Assert_Value_axis {511} CONFIG.HAS_TKEEP {false} CONFIG.INTERFACE_TYPE {AXI_STREAM} CONFIG.Input_Depth_axis {512} CONFIG.TDATA_NUM_BYTES {4}  ] $fifo_IOI_to_production

  # Create instance: fifo_backup_to_IOI, and set properties
  set fifo_backup_to_IOI [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:12.0 fifo_backup_to_IOI ]
  set_property -dict [ list CONFIG.Empty_Threshold_Assert_Value_axis {510} CONFIG.Enable_TLAST {false} CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} CONFIG.Full_Threshold_Assert_Value_axis {511} CONFIG.HAS_TKEEP {false} CONFIG.INTERFACE_TYPE {AXI_STREAM} CONFIG.Input_Depth_axis {512} CONFIG.TDATA_NUM_BYTES {4}  ] $fifo_backup_to_IOI

  # Create instance: fifo_production_to_IOI, and set properties
  set fifo_production_to_IOI [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:12.0 fifo_production_to_IOI ]
  set_property -dict [ list CONFIG.Empty_Threshold_Assert_Value_axis {510} CONFIG.Enable_TLAST {false} CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} CONFIG.Full_Threshold_Assert_Value_axis {511} CONFIG.HAS_TKEEP {false} CONFIG.INTERFACE_TYPE {AXI_STREAM} CONFIG.Input_Depth_axis {512} CONFIG.TDATA_NUM_BYTES {4}  ] $fifo_production_to_IOI

  # Create instance: local_memory_IOI
  create_hier_cell_local_memory_IOI [current_bd_instance .] local_memory_IOI

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]
  set_property -dict [ list CONFIG.C_MB_DBG_PORTS {2}  ] $mdm_1

  # Create instance: production_controller, and set properties
  set production_controller [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 production_controller ]
  set_property -dict [ list CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {200.000000} CONFIG.PCW_IMPORT_BOARD_PRESET {/home/teja/Documents/TAIGA/ZYBO_zynq_def.xml}  ] $production_controller

  # Create instance: queue_multiplexer_0, and set properties
  set queue_multiplexer_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:queue_multiplexer:1.0 queue_multiplexer_0 ]

  # Create instance: rst_production_controller_100M, and set properties
  set rst_production_controller_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_production_controller_100M ]

  # Create interface connections
  connect_bd_intf_net -intf_net IO_Intermediary_axi_dp [get_bd_intf_pins IO_Intermediary/M_AXI_DP] [get_bd_intf_pins axi_periph_IOI/S00_AXI]
  connect_bd_intf_net -intf_net IO_Intermediary_axi_periph_M01_AXI [get_bd_intf_pins axi_periph_IOI/M01_AXI] [get_bd_intf_pins axi_quad_spi_plant/AXI_LITE]
  connect_bd_intf_net -intf_net IO_Intermediary_debug [get_bd_intf_pins IO_Intermediary/DEBUG] [get_bd_intf_pins mdm_1/MBDEBUG_0]
  connect_bd_intf_net -intf_net IO_Intermediary_dlmb_1 [get_bd_intf_pins IO_Intermediary/DLMB] [get_bd_intf_pins local_memory_IOI/DLMB]
  connect_bd_intf_net -intf_net IO_Intermediary_ilmb_1 [get_bd_intf_pins IO_Intermediary/ILMB] [get_bd_intf_pins local_memory_IOI/ILMB]
  connect_bd_intf_net -intf_net IO_Intermediary_intc_axi [get_bd_intf_pins axi_intc_IOI/s_axi] [get_bd_intf_pins axi_periph_IOI/M00_AXI]
  connect_bd_intf_net -intf_net IO_Intermediary_interrupt [get_bd_intf_pins IO_Intermediary/INTERRUPT] [get_bd_intf_pins axi_intc_IOI/interrupt]
  connect_bd_intf_net -intf_net axi_fifo_backup_enqueue_AXI_STR_TXD [get_bd_intf_pins axi_fifo_backup_enqueue/AXI_STR_TXD] [get_bd_intf_pins fifo_backup_to_IOI/S_AXIS]
  connect_bd_intf_net -intf_net axi_fifo_production_enqueue_AXI_STR_TXD [get_bd_intf_pins axi_fifo_production_enqueue/AXI_STR_TXD] [get_bd_intf_pins fifo_production_to_IOI/S_AXIS]
  connect_bd_intf_net -intf_net axi_gpio_IOI_in_GPIO [get_bd_intf_ports gpio_btn] [get_bd_intf_pins axi_gpio_IOI_in/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_IOI_in_GPIO2 [get_bd_intf_ports gpio_sw] [get_bd_intf_pins axi_gpio_IOI_in/GPIO2]
  connect_bd_intf_net -intf_net axi_gpio_IOI_out_GPIO [get_bd_intf_ports gpio_led_ioi] [get_bd_intf_pins axi_gpio_IOI_out/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_backup_controller_out_GPIO [get_bd_intf_ports gpio_led_backup] [get_bd_intf_pins axi_gpio_backup_controller_out/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_production_controller_out_GPIO [get_bd_intf_ports gpio_led_production] [get_bd_intf_pins axi_gpio_production_controller_out/GPIO]
  connect_bd_intf_net -intf_net axi_periph_IOI_M02_AXI [get_bd_intf_pins axi_gpio_IOI_out/S_AXI] [get_bd_intf_pins axi_periph_IOI/M02_AXI]
  connect_bd_intf_net -intf_net axi_periph_IOI_M03_AXI [get_bd_intf_pins axi_gpio_IOI_in/S_AXI] [get_bd_intf_pins axi_periph_IOI/M03_AXI]
  connect_bd_intf_net -intf_net axi_periph_IOI_M04_AXI [get_bd_intf_pins axi_periph_IOI/M04_AXI] [get_bd_intf_pins axi_wdt_IOI/S_AXI]
  connect_bd_intf_net -intf_net axi_periph_IOI_M05_AXI [get_bd_intf_pins axi_fifo_IOI_dequeue/S_AXI] [get_bd_intf_pins axi_periph_IOI/M05_AXI]
  connect_bd_intf_net -intf_net axi_periph_IOI_M06_AXI [get_bd_intf_pins axi_fifo_IOI_enqueue/S_AXI] [get_bd_intf_pins axi_periph_IOI/M06_AXI]
  connect_bd_intf_net -intf_net axi_periph_IOI_M07_AXI [get_bd_intf_pins axi_gpio_trigger/S_AXI] [get_bd_intf_pins axi_periph_IOI/M07_AXI]
  connect_bd_intf_net -intf_net axi_periph_backup_controller_M01_AXI [get_bd_intf_pins axi_periph_backup_controller/M01_AXI] [get_bd_intf_pins axi_timer_backup_controller/S_AXI]
  connect_bd_intf_net -intf_net axi_periph_backup_controller_M02_AXI [get_bd_intf_pins axi_gpio_backup_controller_out/S_AXI] [get_bd_intf_pins axi_periph_backup_controller/M02_AXI]
  connect_bd_intf_net -intf_net axi_periph_backup_controller_M03_AXI [get_bd_intf_pins axi_fifo_backup_dequeue/S_AXI] [get_bd_intf_pins axi_periph_backup_controller/M03_AXI]
  connect_bd_intf_net -intf_net axi_periph_backup_controller_M04_AXI [get_bd_intf_pins axi_fifo_backup_enqueue/S_AXI] [get_bd_intf_pins axi_periph_backup_controller/M04_AXI]
  connect_bd_intf_net -intf_net axi_periph_production_controller_M00_AXI [get_bd_intf_pins axi_gpio_production_controller_out/S_AXI] [get_bd_intf_pins axi_periph_production_controller/M00_AXI]
  connect_bd_intf_net -intf_net axi_periph_production_controller_M01_AXI [get_bd_intf_pins axi_fifo_production_dequeue/S_AXI] [get_bd_intf_pins axi_periph_production_controller/M01_AXI]
  connect_bd_intf_net -intf_net axi_periph_production_controller_M02_AXI [get_bd_intf_pins axi_fifo_production_enqueue/S_AXI] [get_bd_intf_pins axi_periph_production_controller/M02_AXI]
  connect_bd_intf_net -intf_net backup_controller_axi_dp [get_bd_intf_pins axi_periph_backup_controller/S00_AXI] [get_bd_intf_pins backup_controller/M_AXI_DP]
  connect_bd_intf_net -intf_net backup_controller_debug [get_bd_intf_pins backup_controller/DEBUG] [get_bd_intf_pins mdm_1/MBDEBUG_1]
  connect_bd_intf_net -intf_net backup_controller_dlmb_1 [get_bd_intf_pins backup_controller/DLMB] [get_bd_intf_pins backup_controller_local_memory/DLMB]
  connect_bd_intf_net -intf_net backup_controller_ilmb_1 [get_bd_intf_pins backup_controller/ILMB] [get_bd_intf_pins backup_controller_local_memory/ILMB]
  connect_bd_intf_net -intf_net backup_controller_intc_axi [get_bd_intf_pins axi_periph_backup_controller/M00_AXI] [get_bd_intf_pins backup_controller_axi_intc/s_axi]
  connect_bd_intf_net -intf_net backup_controller_interrupt [get_bd_intf_pins backup_controller/INTERRUPT] [get_bd_intf_pins backup_controller_axi_intc/interrupt]
  connect_bd_intf_net -intf_net fifo_IOI_to_backup_M_AXIS [get_bd_intf_pins axi_fifo_backup_dequeue/AXI_STR_RXD] [get_bd_intf_pins fifo_IOI_to_backup/M_AXIS]
  connect_bd_intf_net -intf_net fifo_IOI_to_production_M_AXIS [get_bd_intf_pins axi_fifo_production_dequeue/AXI_STR_RXD] [get_bd_intf_pins fifo_IOI_to_production/M_AXIS]
  connect_bd_intf_net -intf_net production_controller_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins production_controller/DDR]
  connect_bd_intf_net -intf_net production_controller_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins production_controller/FIXED_IO]
  connect_bd_intf_net -intf_net production_controller_M_AXI_GP0 [get_bd_intf_pins axi_periph_production_controller/S00_AXI] [get_bd_intf_pins production_controller/M_AXI_GP0]

  # Create port connections
  connect_bd_net -net IO_Intermediary_intr [get_bd_pins IO_Intermediary_xlconcat/dout] [get_bd_pins axi_intc_IOI/intr]
  connect_bd_net -net axi_fifo_IOI_dequeue_axi_str_rxd_tready [get_bd_pins axi_fifo_IOI_dequeue/axi_str_rxd_tready] [get_bd_pins queue_multiplexer_0/rx_ready]
  connect_bd_net -net axi_fifo_IOI_dequeue_interrupt [get_bd_pins IO_Intermediary_xlconcat/In1] [get_bd_pins axi_fifo_IOI_dequeue/interrupt]
  connect_bd_net -net axi_fifo_IOI_enqueue_axi_str_txd_tdata [get_bd_pins axi_fifo_IOI_enqueue/axi_str_txd_tdata] [get_bd_pins queue_multiplexer_0/tx_data]
  connect_bd_net -net axi_fifo_IOI_enqueue_axi_str_txd_tvalid [get_bd_pins axi_fifo_IOI_enqueue/axi_str_txd_tvalid] [get_bd_pins queue_multiplexer_0/tx_valid]
  connect_bd_net -net axi_gpio_trigger_gpio_io_o [get_bd_ports gpio_trigger] [get_bd_pins axi_gpio_trigger/gpio_io_o] [get_bd_pins queue_multiplexer_0/switch_select]
  connect_bd_net -net axi_quad_spi_plant_io0_o [get_bd_ports spi_plant_mosi_o] [get_bd_pins axi_quad_spi_plant/io0_o]
  connect_bd_net -net axi_quad_spi_plant_sck_o [get_bd_ports spi_plant_sck_o] [get_bd_pins axi_quad_spi_plant/sck_o]
  connect_bd_net -net axi_quad_spi_plant_ss_o [get_bd_ports spi_plant_ss_o] [get_bd_pins axi_quad_spi_plant/ss_o]
  connect_bd_net -net axi_timer_backup_controller_interrupt [get_bd_pins axi_timer_backup_controller/interrupt] [get_bd_pins backup_controller_axi_intc/intr]
  connect_bd_net -net axi_wdt_IOI_wdt_interrupt [get_bd_pins IO_Intermediary_xlconcat/In0] [get_bd_pins axi_wdt_IOI/wdt_interrupt]
  connect_bd_net -net backup_controller_Clk [get_bd_pins IO_Intermediary/Clk] [get_bd_pins axi_fifo_IOI_dequeue/s_axi_aclk] [get_bd_pins axi_fifo_IOI_enqueue/s_axi_aclk] [get_bd_pins axi_fifo_backup_dequeue/s_axi_aclk] [get_bd_pins axi_fifo_backup_enqueue/s_axi_aclk] [get_bd_pins axi_fifo_production_dequeue/s_axi_aclk] [get_bd_pins axi_fifo_production_enqueue/s_axi_aclk] [get_bd_pins axi_gpio_IOI_in/s_axi_aclk] [get_bd_pins axi_gpio_IOI_out/s_axi_aclk] [get_bd_pins axi_gpio_backup_controller_out/s_axi_aclk] [get_bd_pins axi_gpio_production_controller_out/s_axi_aclk] [get_bd_pins axi_gpio_trigger/s_axi_aclk] [get_bd_pins axi_intc_IOI/processor_clk] [get_bd_pins axi_intc_IOI/s_axi_aclk] [get_bd_pins axi_periph_IOI/ACLK] [get_bd_pins axi_periph_IOI/M00_ACLK] [get_bd_pins axi_periph_IOI/M01_ACLK] [get_bd_pins axi_periph_IOI/M02_ACLK] [get_bd_pins axi_periph_IOI/M03_ACLK] [get_bd_pins axi_periph_IOI/M04_ACLK] [get_bd_pins axi_periph_IOI/M05_ACLK] [get_bd_pins axi_periph_IOI/M06_ACLK] [get_bd_pins axi_periph_IOI/M07_ACLK] [get_bd_pins axi_periph_IOI/S00_ACLK] [get_bd_pins axi_periph_backup_controller/ACLK] [get_bd_pins axi_periph_backup_controller/M00_ACLK] [get_bd_pins axi_periph_backup_controller/M01_ACLK] [get_bd_pins axi_periph_backup_controller/M02_ACLK] [get_bd_pins axi_periph_backup_controller/M03_ACLK] [get_bd_pins axi_periph_backup_controller/M04_ACLK] [get_bd_pins axi_periph_backup_controller/S00_ACLK] [get_bd_pins axi_periph_production_controller/ACLK] [get_bd_pins axi_periph_production_controller/M00_ACLK] [get_bd_pins axi_periph_production_controller/M01_ACLK] [get_bd_pins axi_periph_production_controller/M02_ACLK] [get_bd_pins axi_periph_production_controller/S00_ACLK] [get_bd_pins axi_quad_spi_plant/ext_spi_clk] [get_bd_pins axi_quad_spi_plant/s_axi_aclk] [get_bd_pins axi_timer_backup_controller/s_axi_aclk] [get_bd_pins axi_wdt_IOI/s_axi_aclk] [get_bd_pins backup_controller/Clk] [get_bd_pins backup_controller_axi_intc/processor_clk] [get_bd_pins backup_controller_axi_intc/s_axi_aclk] [get_bd_pins backup_controller_local_memory/LMB_Clk] [get_bd_pins fifo_IOI_to_backup/s_aclk] [get_bd_pins fifo_IOI_to_production/s_aclk] [get_bd_pins fifo_backup_to_IOI/s_aclk] [get_bd_pins fifo_production_to_IOI/s_aclk] [get_bd_pins local_memory_IOI/LMB_Clk] [get_bd_pins production_controller/FCLK_CLK0] [get_bd_pins production_controller/M_AXI_GP0_ACLK] [get_bd_pins rst_production_controller_100M/slowest_sync_clk]
  connect_bd_net -net fifo_IOI_to_backup_s_axis_tready [get_bd_pins fifo_IOI_to_backup/s_axis_tready] [get_bd_pins queue_multiplexer_0/tx_ready_b]
  connect_bd_net -net fifo_IOI_to_production_s_axis_tready [get_bd_pins fifo_IOI_to_production/s_axis_tready] [get_bd_pins queue_multiplexer_0/tx_ready_a]
  connect_bd_net -net fifo_backup_to_IOI_m_axis_tdata [get_bd_pins fifo_backup_to_IOI/m_axis_tdata] [get_bd_pins queue_multiplexer_0/rx_data_b]
  connect_bd_net -net fifo_backup_to_IOI_m_axis_tvalid [get_bd_pins fifo_backup_to_IOI/m_axis_tvalid] [get_bd_pins queue_multiplexer_0/rx_valid_b]
  connect_bd_net -net fifo_production_to_IOI_m_axis_tdata [get_bd_pins fifo_production_to_IOI/m_axis_tdata] [get_bd_pins queue_multiplexer_0/rx_data_a]
  connect_bd_net -net fifo_production_to_IOI_m_axis_tvalid [get_bd_pins fifo_production_to_IOI/m_axis_tvalid] [get_bd_pins queue_multiplexer_0/rx_valid_a]
  connect_bd_net -net io1_i_1 [get_bd_ports spi_plant_miso_i] [get_bd_pins axi_quad_spi_plant/io1_i]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_production_controller_100M/mb_debug_sys_rst]
  connect_bd_net -net production_controller_FCLK_RESET0_N [get_bd_pins production_controller/FCLK_RESET0_N] [get_bd_pins rst_production_controller_100M/ext_reset_in]
  connect_bd_net -net queue_multiplexer_0_rx_data [get_bd_pins axi_fifo_IOI_dequeue/axi_str_rxd_tdata] [get_bd_pins queue_multiplexer_0/rx_data]
  connect_bd_net -net queue_multiplexer_0_rx_ready_a [get_bd_pins fifo_production_to_IOI/m_axis_tready] [get_bd_pins queue_multiplexer_0/rx_ready_a]
  connect_bd_net -net queue_multiplexer_0_rx_ready_b [get_bd_pins fifo_backup_to_IOI/m_axis_tready] [get_bd_pins queue_multiplexer_0/rx_ready_b]
  connect_bd_net -net queue_multiplexer_0_rx_valid [get_bd_pins axi_fifo_IOI_dequeue/axi_str_rxd_tvalid] [get_bd_pins queue_multiplexer_0/rx_valid]
  connect_bd_net -net queue_multiplexer_0_tx_data_a [get_bd_pins fifo_IOI_to_production/s_axis_tdata] [get_bd_pins queue_multiplexer_0/tx_data_a]
  connect_bd_net -net queue_multiplexer_0_tx_data_b [get_bd_pins fifo_IOI_to_backup/s_axis_tdata] [get_bd_pins queue_multiplexer_0/tx_data_b]
  connect_bd_net -net queue_multiplexer_0_tx_ready [get_bd_pins axi_fifo_IOI_enqueue/axi_str_txd_tready] [get_bd_pins queue_multiplexer_0/tx_ready]
  connect_bd_net -net queue_multiplexer_0_tx_valid_a [get_bd_pins fifo_IOI_to_production/s_axis_tvalid] [get_bd_pins queue_multiplexer_0/tx_valid_a]
  connect_bd_net -net queue_multiplexer_0_tx_valid_b [get_bd_pins fifo_IOI_to_backup/s_axis_tvalid] [get_bd_pins queue_multiplexer_0/tx_valid_b]
  connect_bd_net -net rst_production_controller_100M_bus_struct_reset [get_bd_pins backup_controller_local_memory/LMB_Rst] [get_bd_pins local_memory_IOI/LMB_Rst] [get_bd_pins rst_production_controller_100M/bus_struct_reset]
  connect_bd_net -net rst_production_controller_100M_interconnect_aresetn [get_bd_pins axi_periph_IOI/ARESETN] [get_bd_pins axi_periph_backup_controller/ARESETN] [get_bd_pins axi_periph_production_controller/ARESETN] [get_bd_pins rst_production_controller_100M/interconnect_aresetn]
  connect_bd_net -net rst_production_controller_100M_mb_reset [get_bd_pins IO_Intermediary/Reset] [get_bd_pins axi_intc_IOI/processor_rst] [get_bd_pins backup_controller/Reset] [get_bd_pins backup_controller_axi_intc/processor_rst] [get_bd_pins rst_production_controller_100M/mb_reset]
  connect_bd_net -net rst_production_controller_100M_peripheral_aresetn [get_bd_pins axi_fifo_IOI_dequeue/s_axi_aresetn] [get_bd_pins axi_fifo_IOI_enqueue/s_axi_aresetn] [get_bd_pins axi_fifo_backup_dequeue/s_axi_aresetn] [get_bd_pins axi_fifo_backup_enqueue/s_axi_aresetn] [get_bd_pins axi_fifo_production_dequeue/s_axi_aresetn] [get_bd_pins axi_fifo_production_enqueue/s_axi_aresetn] [get_bd_pins axi_gpio_IOI_in/s_axi_aresetn] [get_bd_pins axi_gpio_IOI_out/s_axi_aresetn] [get_bd_pins axi_gpio_backup_controller_out/s_axi_aresetn] [get_bd_pins axi_gpio_production_controller_out/s_axi_aresetn] [get_bd_pins axi_gpio_trigger/s_axi_aresetn] [get_bd_pins axi_intc_IOI/s_axi_aresetn] [get_bd_pins axi_periph_IOI/M00_ARESETN] [get_bd_pins axi_periph_IOI/M01_ARESETN] [get_bd_pins axi_periph_IOI/M02_ARESETN] [get_bd_pins axi_periph_IOI/M03_ARESETN] [get_bd_pins axi_periph_IOI/M04_ARESETN] [get_bd_pins axi_periph_IOI/M05_ARESETN] [get_bd_pins axi_periph_IOI/M06_ARESETN] [get_bd_pins axi_periph_IOI/M07_ARESETN] [get_bd_pins axi_periph_IOI/S00_ARESETN] [get_bd_pins axi_periph_backup_controller/M00_ARESETN] [get_bd_pins axi_periph_backup_controller/M01_ARESETN] [get_bd_pins axi_periph_backup_controller/M02_ARESETN] [get_bd_pins axi_periph_backup_controller/M03_ARESETN] [get_bd_pins axi_periph_backup_controller/M04_ARESETN] [get_bd_pins axi_periph_backup_controller/S00_ARESETN] [get_bd_pins axi_periph_production_controller/M00_ARESETN] [get_bd_pins axi_periph_production_controller/M01_ARESETN] [get_bd_pins axi_periph_production_controller/M02_ARESETN] [get_bd_pins axi_periph_production_controller/S00_ARESETN] [get_bd_pins axi_quad_spi_plant/s_axi_aresetn] [get_bd_pins axi_timer_backup_controller/s_axi_aresetn] [get_bd_pins axi_wdt_IOI/s_axi_aresetn] [get_bd_pins backup_controller_axi_intc/s_axi_aresetn] [get_bd_pins fifo_IOI_to_backup/s_aresetn] [get_bd_pins fifo_IOI_to_production/s_aresetn] [get_bd_pins fifo_backup_to_IOI/s_aresetn] [get_bd_pins fifo_production_to_IOI/s_aresetn] [get_bd_pins rst_production_controller_100M/peripheral_aresetn]

  # Create address segments
  create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces IO_Intermediary/Data] [get_bd_addr_segs axi_intc_IOI/s_axi/Reg] SEG_IO_Intermediary_axi_intc_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x44A10000 [get_bd_addr_spaces IO_Intermediary/Data] [get_bd_addr_segs axi_fifo_IOI_dequeue/S_AXI/Mem0] SEG_axi_fifo_IOI_dequeue_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x44A20000 [get_bd_addr_spaces IO_Intermediary/Data] [get_bd_addr_segs axi_fifo_IOI_enqueue/S_AXI/Mem0] SEG_axi_fifo_IOI_enqueue_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x40010000 [get_bd_addr_spaces IO_Intermediary/Data] [get_bd_addr_segs axi_gpio_IOI_in/S_AXI/Reg] SEG_axi_gpio_IOI_in_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x40000000 [get_bd_addr_spaces IO_Intermediary/Data] [get_bd_addr_segs axi_gpio_IOI_out/S_AXI/Reg] SEG_axi_gpio_IOI_out_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x40020000 [get_bd_addr_spaces IO_Intermediary/Data] [get_bd_addr_segs axi_gpio_trigger/S_AXI/Reg] SEG_axi_gpio_trigger_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x44A00000 [get_bd_addr_spaces IO_Intermediary/Data] [get_bd_addr_segs axi_quad_spi_plant/AXI_LITE/Reg] SEG_axi_quad_spi_plant_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x41A00000 [get_bd_addr_spaces IO_Intermediary/Data] [get_bd_addr_segs axi_wdt_IOI/S_AXI/Reg] SEG_axi_wdt_IOI_Reg
  create_bd_addr_seg -range 0x20000 -offset 0x0 [get_bd_addr_spaces IO_Intermediary/Data] [get_bd_addr_segs local_memory_IOI/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x20000 -offset 0x0 [get_bd_addr_spaces IO_Intermediary/Instruction] [get_bd_addr_segs local_memory_IOI/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x10000 -offset 0x44A00000 [get_bd_addr_spaces backup_controller/Data] [get_bd_addr_segs axi_fifo_backup_dequeue/S_AXI/Mem0] SEG_axi_fifo_backup_dequeue_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x44A10000 [get_bd_addr_spaces backup_controller/Data] [get_bd_addr_segs axi_fifo_backup_enqueue/S_AXI/Mem0] SEG_axi_fifo_backup_enqueue_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x40000000 [get_bd_addr_spaces backup_controller/Data] [get_bd_addr_segs axi_gpio_backup_controller_out/S_AXI/Reg] SEG_axi_gpio_backup_controller_out_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x41C00000 [get_bd_addr_spaces backup_controller/Data] [get_bd_addr_segs axi_timer_backup_controller/S_AXI/Reg] SEG_axi_timer_backup_controller_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces backup_controller/Data] [get_bd_addr_segs backup_controller_axi_intc/s_axi/Reg] SEG_backup_controller_axi_intc_Reg
  create_bd_addr_seg -range 0x8000 -offset 0x0 [get_bd_addr_spaces backup_controller/Data] [get_bd_addr_segs backup_controller_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x8000 -offset 0x0 [get_bd_addr_spaces backup_controller/Instruction] [get_bd_addr_segs backup_controller_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x10000 -offset 0x43C00000 [get_bd_addr_spaces production_controller/Data] [get_bd_addr_segs axi_fifo_production_dequeue/S_AXI/Mem0] SEG_axi_fifo_production_dequeue_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x43C10000 [get_bd_addr_spaces production_controller/Data] [get_bd_addr_segs axi_fifo_production_enqueue/S_AXI/Mem0] SEG_axi_fifo_production_enqueue_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces production_controller/Data] [get_bd_addr_segs axi_gpio_production_controller_out/S_AXI/Reg] SEG_axi_gpio_production_controller_out_Reg
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""

