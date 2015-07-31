proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

<<<<<<< HEAD
start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  debug::add_scope template.lib 1
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.cache/wt [current_project]
  set_property parent.project_path /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.xpr [current_project]
  set_property ip_repo_paths {
  /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.cache/ip
  /home/controls/Pallavi/TAIGA-Pallavi/HLS/FIFO_multiplexer/FIFO-multiplexer_solution/impl/ip
} [current_project]
  set_property ip_output_repo /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.cache/ip [current_project]
  add_files -quiet /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.runs/synth_1/TAIGA_wrapper.dcp
  add_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/TAIGA.bmm
  set_property SCOPED_TO_REF TAIGA [get_files -all /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/TAIGA.bmm]
  set_property SCOPED_TO_CELLS {} [get_files -all /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/TAIGA.bmm]
  add_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_5/89e574e2/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF TAIGA [get_files -all /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_5/89e574e2/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS {backup_controller IO_intermediary} [get_files -all /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_5/89e574e2/data/mb_bootloop_le.elf]
  read_xdc -ref TAIGA_processing_system7_0_0 -cells inst /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_processing_system7_0_0/TAIGA_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_processing_system7_0_0/TAIGA_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_axi_gpio_0_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_0/TAIGA_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_0/TAIGA_axi_gpio_0_0_board.xdc]
  read_xdc -ref TAIGA_axi_gpio_0_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_0/TAIGA_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_0/TAIGA_axi_gpio_0_0.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_rst_production_controller_200M_0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_rst_production_controller_200M_0/TAIGA_rst_production_controller_200M_0_board.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_rst_production_controller_200M_0/TAIGA_rst_production_controller_200M_0_board.xdc]
  read_xdc -ref TAIGA_rst_production_controller_200M_0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_rst_production_controller_200M_0/TAIGA_rst_production_controller_200M_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_rst_production_controller_200M_0/TAIGA_rst_production_controller_200M_0.xdc]
  read_xdc -ref TAIGA_fifo_generator_0_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_fifo_generator_0_0/TAIGA_fifo_generator_0_0/TAIGA_fifo_generator_0_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_fifo_generator_0_0/TAIGA_fifo_generator_0_0/TAIGA_fifo_generator_0_0.xdc]
  read_xdc -ref TAIGA_fifo_production_to_IOI_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_fifo_production_to_IOI_0/TAIGA_fifo_production_to_IOI_0/TAIGA_fifo_production_to_IOI_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_fifo_production_to_IOI_0/TAIGA_fifo_production_to_IOI_0/TAIGA_fifo_production_to_IOI_0.xdc]
  read_xdc -ref TAIGA_microblaze_0_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_microblaze_0_0/TAIGA_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_microblaze_0_0/TAIGA_microblaze_0_0.xdc]
  read_xdc -ref TAIGA_dlmb_v10_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_dlmb_v10_0/TAIGA_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_dlmb_v10_0/TAIGA_dlmb_v10_0.xdc]
  read_xdc -ref TAIGA_ilmb_v10_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_ilmb_v10_0/TAIGA_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_ilmb_v10_0/TAIGA_ilmb_v10_0.xdc]
  read_xdc -ref TAIGA_backup_controller_axi_intc_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_backup_controller_axi_intc_0/TAIGA_backup_controller_axi_intc_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_backup_controller_axi_intc_0/TAIGA_backup_controller_axi_intc_0.xdc]
  read_xdc -ref TAIGA_mdm_1_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_mdm_1_0/TAIGA_mdm_1_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_mdm_1_0/TAIGA_mdm_1_0.xdc]
  read_xdc -ref TAIGA_axi_timer_0_0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_timer_0_0/TAIGA_axi_timer_0_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_timer_0_0/TAIGA_axi_timer_0_0.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_axi_gpio_0_1 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_1/TAIGA_axi_gpio_0_1_board.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_1/TAIGA_axi_gpio_0_1_board.xdc]
  read_xdc -ref TAIGA_axi_gpio_0_1 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_1/TAIGA_axi_gpio_0_1.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_1/TAIGA_axi_gpio_0_1.xdc]
  read_xdc -ref TAIGA_fifo_IOI_to_production_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_fifo_IOI_to_production_0/TAIGA_fifo_IOI_to_production_0/TAIGA_fifo_IOI_to_production_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_fifo_IOI_to_production_0/TAIGA_fifo_IOI_to_production_0/TAIGA_fifo_IOI_to_production_0.xdc]
  read_xdc -ref TAIGA_fifo_production_to_IOI_1 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_fifo_production_to_IOI_1/TAIGA_fifo_production_to_IOI_1/TAIGA_fifo_production_to_IOI_1.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_fifo_production_to_IOI_1/TAIGA_fifo_production_to_IOI_1/TAIGA_fifo_production_to_IOI_1.xdc]
  read_xdc -ref TAIGA_microblaze_0_1 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_microblaze_0_1/TAIGA_microblaze_0_1.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_microblaze_0_1/TAIGA_microblaze_0_1.xdc]
  read_xdc -ref TAIGA_dlmb_v10_1 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_dlmb_v10_1/TAIGA_dlmb_v10_1.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_dlmb_v10_1/TAIGA_dlmb_v10_1.xdc]
  read_xdc -ref TAIGA_ilmb_v10_1 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_ilmb_v10_1/TAIGA_ilmb_v10_1.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_ilmb_v10_1/TAIGA_ilmb_v10_1.xdc]
  read_xdc -ref TAIGA_IO_intermediary_axi_intc_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_IO_intermediary_axi_intc_0/TAIGA_IO_intermediary_axi_intc_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_IO_intermediary_axi_intc_0/TAIGA_IO_intermediary_axi_intc_0.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_axi_quad_spi_0_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_quad_spi_0_0/TAIGA_axi_quad_spi_0_0_board.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_quad_spi_0_0/TAIGA_axi_quad_spi_0_0_board.xdc]
  read_xdc -ref TAIGA_axi_quad_spi_0_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_quad_spi_0_0/TAIGA_axi_quad_spi_0_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_quad_spi_0_0/TAIGA_axi_quad_spi_0_0.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_axi_gpio_0_2 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_2/TAIGA_axi_gpio_0_2_board.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_2/TAIGA_axi_gpio_0_2_board.xdc]
  read_xdc -ref TAIGA_axi_gpio_0_2 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_2/TAIGA_axi_gpio_0_2.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_2/TAIGA_axi_gpio_0_2.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_axi_gpio_0_3 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_3/TAIGA_axi_gpio_0_3_board.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_3/TAIGA_axi_gpio_0_3_board.xdc]
  read_xdc -ref TAIGA_axi_gpio_0_3 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_3/TAIGA_axi_gpio_0_3.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_3/TAIGA_axi_gpio_0_3.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_axi_gpio_0_4 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_4/TAIGA_axi_gpio_0_4_board.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_4/TAIGA_axi_gpio_0_4_board.xdc]
  read_xdc -ref TAIGA_axi_gpio_0_4 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_4/TAIGA_axi_gpio_0_4.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_gpio_0_4/TAIGA_axi_gpio_0_4.xdc]
  read_xdc -ref TAIGA_axi_timebase_wdt_0_0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_timebase_wdt_0_0/TAIGA_axi_timebase_wdt_0_0.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_timebase_wdt_0_0/TAIGA_axi_timebase_wdt_0_0.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_axi_uartlite_0_1 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_uartlite_0_1/TAIGA_axi_uartlite_0_1_board.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_uartlite_0_1/TAIGA_axi_uartlite_0_1_board.xdc]
  read_xdc -ref TAIGA_axi_uartlite_0_1 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_uartlite_0_1/TAIGA_axi_uartlite_0_1.xdc
  set_property processing_order EARLY [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_uartlite_0_1/TAIGA_axi_uartlite_0_1.xdc]
  read_xdc /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.srcs/constrs_1/new/TAIGA-RIP_Zed.xdc
  read_xdc -ref TAIGA_backup_controller_axi_intc_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_backup_controller_axi_intc_0/TAIGA_backup_controller_axi_intc_0_clocks.xdc
  set_property processing_order LATE [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_backup_controller_axi_intc_0/TAIGA_backup_controller_axi_intc_0_clocks.xdc]
  read_xdc -ref TAIGA_IO_intermediary_axi_intc_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_IO_intermediary_axi_intc_0/TAIGA_IO_intermediary_axi_intc_0_clocks.xdc
  set_property processing_order LATE [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_IO_intermediary_axi_intc_0/TAIGA_IO_intermediary_axi_intc_0_clocks.xdc]
  read_xdc -ref TAIGA_axi_quad_spi_0_0 -cells U0 /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_quad_spi_0_0/TAIGA_axi_quad_spi_0_0_clocks.xdc
  set_property processing_order LATE [get_files /home/controls/Pallavi/TAIGA-Pallavi/Rotary-Inverted-Pendulum/Rotary-Inverted-Pendulum.srcs/sources_1/bd/TAIGA/ip/TAIGA_axi_quad_spi_0_0/TAIGA_axi_quad_spi_0_0_clocks.xdc]
  link_design -top TAIGA_wrapper -part xc7z020clg484-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force TAIGA_wrapper_opt.dcp
  catch {report_drc -file TAIGA_wrapper_drc_opted.rpt}
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file TAIGA_wrapper.hwdef}
  place_design 
  write_checkpoint -force TAIGA_wrapper_placed.dcp
  catch { report_io -file TAIGA_wrapper_io_placed.rpt }
  catch { report_utilization -file TAIGA_wrapper_utilization_placed.rpt -pb TAIGA_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file TAIGA_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force TAIGA_wrapper_routed.dcp
  catch { report_drc -file TAIGA_wrapper_drc_routed.rpt -pb TAIGA_wrapper_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file TAIGA_wrapper_timing_summary_routed.rpt -rpx TAIGA_wrapper_timing_summary_routed.rpx }
  catch { report_power -file TAIGA_wrapper_power_routed.rpt -pb TAIGA_wrapper_power_summary_routed.pb }
  catch { report_route_status -file TAIGA_wrapper_route_status.rpt -pb TAIGA_wrapper_route_status.pb }
  catch { report_clock_utilization -file TAIGA_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
=======
start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  debug::add_scope template.lib 1
  open_checkpoint TAIGA_wrapper_routed.dcp
  set_property webtalk.parent_dir /home/controls/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.cache/wt [current_project]
  add_files /home/controls/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.srcs/sources_1/imports/Rotary-Inverted-Pendulum-Zed.sdk/app_backup_new/Debug/app_backup_new.elf
  set_property SCOPED_TO_REF TAIGA [get_files -all /home/controls/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.srcs/sources_1/imports/Rotary-Inverted-Pendulum-Zed.sdk/app_backup_new/Debug/app_backup_new.elf]
  set_property SCOPED_TO_CELLS backup_controller [get_files -all /home/controls/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.srcs/sources_1/imports/Rotary-Inverted-Pendulum-Zed.sdk/app_backup_new/Debug/app_backup_new.elf]
  add_files /home/controls/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.srcs/sources_1/imports/Rotary-Inverted-Pendulum-Zed.sdk/app_ioi_new/Debug/app_ioi_new.elf
  set_property SCOPED_TO_REF TAIGA [get_files -all /home/controls/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.srcs/sources_1/imports/Rotary-Inverted-Pendulum-Zed.sdk/app_ioi_new/Debug/app_ioi_new.elf]
  set_property SCOPED_TO_CELLS IO_intermediary [get_files -all /home/controls/TAIGA-Pallavi/Rotary-Inverted-Pendulum-Zed/Rotary-Inverted-Pendulum-Zed.srcs/sources_1/imports/Rotary-Inverted-Pendulum-Zed.sdk/app_ioi_new/Debug/app_ioi_new.elf]
>>>>>>> ef4790edb2c8867b0c01eb2a9ca857e6c4aa2b45
  catch { write_mem_info -force TAIGA_wrapper.mmi }
  catch { write_bmm -force TAIGA_wrapper_bd.bmm }
  write_bitstream -force TAIGA_wrapper.bit 
  catch { write_sysdef -hwdef TAIGA_wrapper.hwdef -bitfile TAIGA_wrapper.bit -meminfo TAIGA_wrapper.mmi -ltxfile debug_nets.ltx -file TAIGA_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

