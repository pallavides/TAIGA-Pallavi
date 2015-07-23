set use_softeth_on_zynq 0
set use_ethernetlite_on_zynq 0

proc swapp_get_name {} {
    return "Standalone_lwIP Raw I/O Apps";
}

proc swapp_get_description {} {
    return "The reference design includes these software applications:
� Echo server
� Web server
� TFTP server
� TCP RX throughput test
� TCP TX throughput test
All of these applications are available in both RAW and socket modes."
}

proc check_stdout_hw {} {
	set slaves [get_property SLAVES [get_cells [get_sw_processor]]]
	foreach slave $slaves {
		set slave_type [get_property IP_NAME [get_cells $slave]];
		# Check for MDM-Uart peripheral. The MDM would be listed as a peripheral
		# only if it has a UART interface. So no further check is required
		if { $slave_type == "ps7_uart" || $slave_type == "axi_uartlite" ||
			$slave_type == "axi_uart16550" || $slave_type == "iomodule" ||
			$slave_type == "mdm" } {
			return;
		}
	}

	error "This application requires a Uart IP in the hardware."

}

proc get_stdout {} {
    set os [get_os];
    set stdout [get_property CONFIG.STDOUT $os];
    return $stdout;
}

proc check_emac_hw {} {
    set emaclites [get_cells -filter { ip_name == "xps_ethernetlite" }];
    if { [llength $emaclites] != 0 } {
        return;
    }
    set emaclites [get_cells -filter { ip_name == "axi_ethernetlite"}];
    if { [llength $emaclites] != 0 } {
        return;
    }
    set temacs [get_cells -filter { ip_name == "xps_ll_temac" }];
    if { [llength $temacs] != 0 } {      
        return;
    }
    set temacs [get_cells -filter { ip_name == "axi_ethernet" }];
    if { [llength $temacs] != 0 } {      
        return;
    }
    
     set temacs [get_cells -filter { ip_name == "axi_ethernet_buffer" }];
    if { [llength $temacs] != 0 } {      
        return;
    }
    
    set temacs [get_cells -filter { ip_name == "ps7_ethernet" }];
    if { [llength $temacs] != 0 } {      
            return;
    }

    error "This application requires an Ethernet MAC IP instance in the hardware."
}

proc get_mem_size { memlist } {
    return [lindex $memlist 4];
}

proc require_memory {memsize} {
    set proc_instance [get_sw_processor]
    set imemlist [get_mem_ranges -of_objects [get_cells $proc_instance] -filter "IS_INSTRUCTION==1"];
    set idmemlist [get_mem_ranges -of_objects [get_cells $proc_instance] -filter "IS_INSTRUCTION==1 && IS_DATA==1"];
    set dmemlist [get_mem_ranges -of_objects [get_cells $proc_instance] -filter "IS_DATA==1"];

    set memlist [concat $imemlist $idmemlist $dmemlist];

    while { [llength $memlist] > 3 } {
        set mem [lrange $memlist 0 4];
        set memlist [lreplace $memlist 0 4];

        if { [get_mem_size $mem] >= $memsize } {
            return 1;
        }
    }

    error "This application requires atleast $memsize bytes of memory.";
}

proc check_stdout_sw {} {
    set stdout [get_stdout];
    if { $stdout == "none" } {
        error "The STDOUT parameter is not set on the OS. lwIP requires stdout to be set."
    }
}

proc check_standalone_os {} {
    set oslist [get_os];

    if { [llength $oslist] != 1 } {
        return 0;
    }
    set os [lindex $oslist 0];

    if { $os != "standalone" } {
        error "This application is supported only on the Standalone Board Support Package.";
    }
}

proc swapp_is_supported_hw {} {
    # Check if Ethernet IP in the system
    check_emac_hw;

    # check for stdout being set
    check_stdout_hw;

    # do processor specific checks
    set proc  [get_sw_processor];
     set proc_type [get_property IP_NAME [get_cells $proc]]
    if { $proc_type == "microblaze"} {
        # make sure there is a timer (if this is a MB)
        set timerlist [get_cells -filter { ip_name == "xps_timer" }];
        if { [llength $timerlist] <= 0 } {
            set timerlist [get_cells -filter { ip_name == "axi_timer" }];
            if { [llength $timerlist] <= 0 } {
                error "There seems to be no timer peripheral in the hardware. lwIP requires an xps_timer for TCP operations.";
            }
        }
    }

    # require about 1M of memory
    require_memory "1000000";

    return 1;
}

proc swapp_is_supported_sw {} {
    # make sure we are using standalone OS
    check_standalone_os;

    # check for stdout being set
    check_stdout_sw;

    # make sure lwip140 is available
    set librarylist [get_libs -filter "NAME==lwip141"];

    if { [llength $librarylist] == 0 } {
        error "This application requires lwIP library in the Board Support Package.";
    } elseif { [llength $librarylist] > 1} {
        error "Multiple lwIP libraries present in the Board Support Package."
    }

    return 1;
}

proc generate_stdout_config { fid } {
    set stdout [get_stdout];
    set stdout [get_cells $stdout]

    # if stdout is uartlite, we don't have to generate anything
    set stdout_type [get_property IP_TYPE $stdout];

    if { [regexp -nocase "uartlite" $stdout_type] || 
	 [regexp -nocase "ps7_uart" $stdout_type] ||
	 [string match -nocase "mdm" $stdout_type] } {
        puts $fid "#define STDOUT_IS_UARTLITE";
    } elseif { [regexp -nocase "uart16550" $stdout_type] } {
	# mention that we have a 16550
        puts $fid "#define STDOUT_IS_16550";

        # and note down its base address
	set prefix "XPAR_";
	set postfix "_BASEADDR";
	set stdout_baseaddr_macro $prefix$stdout$postfix;
	set stdout_baseaddr_macro [string toupper $stdout_baseaddr_macro];
	puts $fid "#define STDOUT_BASEADDR $stdout_baseaddr_macro";
    }
}

proc generate_emac_config {fp} {
    global use_softeth_on_zynq
    global use_ethernetlite_on_zynq
    
    # FIXME we'll just use the first emac we find. This is not consistent with
    # how lwIP determines the EMAC's that can be used.
    
     set proc  [get_sw_processor];
    set proc_type [get_property IP_NAME [get_cells $proc]]

    set emaclites [get_cells -filter { ip_name == "xps_ethernetlite" }];
    if { [llength $emaclites] == 0 } {   
        set emaclites [get_cells -filter { ip_name == "axi_ethernetlite" }];
    }
    if { [llength $emaclites] > 0 } {   
        # we have an emaclite
        if {$proc_type == "ps7_cortexa9" && $use_ethernetlite_on_zynq == 0} {	
    	} else {
    		if {$proc_type == "ps7_cortexa9" && $use_ethernetlite_on_zynq == 1} {
        		puts $fp "#define USE_SOFTETH_ON_ZYNQ 1";
        	} 
        set emaclite [lindex $emaclites 0]
	set prefix "XPAR_";
	set postfix "_BASEADDR";
	set emac_baseaddr $prefix$emaclite$postfix;
        set emac_baseaddr [string toupper $emac_baseaddr];
        puts $fp "#define PLATFORM_EMAC_BASEADDR $emac_baseaddr";
        return;
    }
    }

    set temacs [get_cells -filter { ip_name == "xps_ll_temac" }];
    if { [llength $temacs] > 0 } {   
        # we have an emaclite
        set temac [lindex $temacs 0]
	set prefix "XPAR_";
	set postfix "_CHAN_0_BASEADDR";
	set emac_baseaddr $prefix$temac$postfix;
        set emac_baseaddr [string toupper $emac_baseaddr];
        puts $fp "#define PLATFORM_EMAC_BASEADDR $emac_baseaddr";
        return;
    }
    set temacs [get_cells -filter { ip_name == "axi_ethernet" }];
    if { [llength $temacs] > 0 } {
    	if {$proc_type == "ps7_cortexa9" && $use_softeth_on_zynq == 0} {	
    	} else {
        	if {$proc_type == "ps7_cortexa9" && $use_softeth_on_zynq == 1} {
        		puts $fp "#define USE_SOFTETH_ON_ZYNQ 1";
        	}
        	set temac [lindex $temacs 0]
		set prefix "XPAR_";
		set postfix "_BASEADDR";
		set emac_baseaddr $prefix$temac$postfix;
        	set emac_baseaddr [string toupper $emac_baseaddr];
        	puts $fp "#define PLATFORM_EMAC_BASEADDR $emac_baseaddr";
        	return;
        }
    }
    
    set temacs [get_cells -filter { ip_name == "axi_ethernet_buffer" }];
    if { [llength $temacs] > 0 } {
    	if {$proc_type == "ps7_cortexa9" && $use_softeth_on_zynq == 0} {	
    	} else {
        	if {$proc_type == "ps7_cortexa9" && $use_softeth_on_zynq == 1} {
        		puts $fp "#define USE_AXIETH_ON_ZYNQ 1";
        	}
        	set temac [lindex $temacs 0]
		set prefix "XPAR_";
		set postfix "_BASEADDR";
		set emac_baseaddr $prefix$temac$postfix;
        	set emac_baseaddr [string toupper $emac_baseaddr];
        	puts $fp "#define PLATFORM_EMAC_BASEADDR $emac_baseaddr";
        	return;
        }
    }
    
    set temacs [get_cells -filter { ip_name == "ps7_ethernet" }];
    if { [llength $temacs] > 0 } {   
            puts $fp "#define PLATFORM_EMAC_BASEADDR XPAR_XEMACPS_0_BASEADDR";
            return;
    }
}

proc generate_timer_config { fp } {
    # generate something like: XPAR_XPS_INTC_0_XPS_TIMER_1_INTERRUPT_INTR 
    set prefix "XPAR_";
    set postfix_intr "_INTERRUPT_INTR";
    set postfix_base "_BASEADDR";

    set intcs [get_cells -filter {ip_name == "xps_intc"}];
    if { [llength $intcs] == 0 } {
        set intcs [get_cells -filter { ip_name == "axi_intc" }];
    }
    set intc [lindex $intcs 0];

    set timers [get_cells -filter { ip_name == "xps_timer" }];
    if { [llength $timers] == 0 } {
        set timers [get_cells -filter { ip_name == "axi_timer" }];
    }
    set timer [lindex $timers 0];

    # baseaddr
    set timer_baseaddr $prefix$timer$postfix_base;
    set timer_baseaddr [string toupper $timer_baseaddr];

    # intr
    set uscore "_"
    set timer_intr $prefix$intc$uscore$timer$postfix_intr;
    set timer_intr [string toupper $timer_intr];

    puts $fp "#define PLATFORM_TIMER_BASEADDR $timer_baseaddr";
    puts $fp "#define PLATFORM_TIMER_INTERRUPT_INTR $timer_intr";
    puts $fp "#define PLATFORM_TIMER_INTERRUPT_MASK (1 << $timer_intr)";
}


# depending on the type of os (standalone|xilkernel), choose
# the correct source files
proc swapp_generate {} {
    global use_softeth_on_zynq
    global use_ethernetlite_on_zynq
    # cleanup this file for writing
    set fid [open "platform_config.h" "w+"];
    puts $fid "#ifndef __PLATFORM_CONFIG_H_";
    puts $fid "#define __PLATFORM_CONFIG_H_\n";

    # if we have a uart16550 as stdout, then generate some config for that
    generate_stdout_config $fid;
    puts $fid "";

    set use_softeth_on_zynq [get_property CONFIG.use_axieth_on_zynq [get_libs lwip141]];
    set use_ethernetlite_on_zynq [get_property CONFIG.use_emaclite_on_zynq [get_libs lwip141]];
    # figure out the emac baseaddr
    generate_emac_config $fid;
    puts $fid "";

    # if MB, figure out the timer to be used 
     set proc  [get_sw_processor];
     set proc_type [get_property IP_NAME [get_cells $proc]]

    if { $proc_type == "microblaze"} {
        generate_timer_config $fid;
        puts $fid "";
    }

    
    puts $fid "#endif";
    close $fid;
}

proc swapp_get_linker_constraints {} {
    return "stack 40k heap 40k"
}


