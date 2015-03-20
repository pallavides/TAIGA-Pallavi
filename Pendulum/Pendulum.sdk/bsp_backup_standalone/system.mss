
 PARAMETER NAME = /home/teja/Documents/TAIGA/Pendulum/Pendulum.sdk/bsp_backup_standalone/system.mss

 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = standalone
 PARAMETER OS_VER = 4.2
 PARAMETER PROC_INSTANCE = backup_controller
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu
 PARAMETER DRIVER_VER = 2.2
 PARAMETER HW_INSTANCE = backup_controller
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = llfifo
 PARAMETER DRIVER_VER = 4.0
 PARAMETER HW_INSTANCE = axi_fifo_backup_dequeue
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = llfifo
 PARAMETER DRIVER_VER = 4.0
 PARAMETER HW_INSTANCE = axi_fifo_backup_enqueue
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.0
 PARAMETER HW_INSTANCE = axi_gpio_backup_controller_out
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = tmrctr
 PARAMETER DRIVER_VER = 3.0
 PARAMETER HW_INSTANCE = axi_timer_backup_controller
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = intc
 PARAMETER DRIVER_VER = 3.2
 PARAMETER HW_INSTANCE = backup_controller_axi_intc
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.0
 PARAMETER HW_INSTANCE = backup_controller_local_memory_dlmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.0
 PARAMETER HW_INSTANCE = backup_controller_local_memory_ilmb_bram_if_cntlr
END


