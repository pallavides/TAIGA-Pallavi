#set_property BOARD_PIN {SS2} [get_ports {SS2}]
set_property PACKAGE_PIN W12 [get_ports {spi_plant_ss_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {spi_plant_ss_o[2]}]

#set_property BOARD_PIN {MOSI} [get_ports {MOSI}]
set_property PACKAGE_PIN W11 [get_ports spi_plant_mosi_o]
set_property IOSTANDARD LVCMOS33 [get_ports spi_plant_mosi_o]

#set_property BOARD_PIN {SS1} [get_ports {SS1}]
set_property PACKAGE_PIN W10 [get_ports {spi_plant_ss_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {spi_plant_ss_o[1]}]

#set_property BOARD_PIN {SCLK} [get_ports {SCLK}]
set_property PACKAGE_PIN W8 [get_ports spi_plant_sck_o]
set_property IOSTANDARD LVCMOS33 [get_ports spi_plant_sck_o]



#set_property BOARD_PIN {SS0} [get_ports {SS0}]
set_property PACKAGE_PIN V12 [get_ports {spi_plant_ss_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {spi_plant_ss_o[0]}]

#set_property BOARD_PIN {MISO} [get_ports {MISO}]
set_property PACKAGE_PIN V10 [get_ports spi_plant_miso_i]
set_property IOSTANDARD LVCMOS33 [get_ports spi_plant_miso_i]

set_property PACKAGE_PIN V9 [get_ports {spi_plant_ss_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {spi_plant_ss_o[3]}]

#switches
set_property PACKAGE_PIN F22 [get_ports {gpio_sw_tri_i[3]}]
set_property PACKAGE_PIN G22 [get_ports {gpio_sw_tri_i[2]}]
set_property PACKAGE_PIN H22 [get_ports {gpio_sw_tri_i[1]}]
set_property PACKAGE_PIN F21 [get_ports {gpio_sw_tri_i[0]}]

#buttons
set_property PACKAGE_PIN R16 [get_ports {gpio_btn_tri_i[3]}]
set_property PACKAGE_PIN N15 [get_ports {gpio_btn_tri_i[2]}]
set_property PACKAGE_PIN R18 [get_ports {gpio_btn_tri_i[0]}]
set_property PACKAGE_PIN T18 [get_ports {gpio_btn_tri_i[1]}]


set_property PACKAGE_PIN T22 [get_ports {gpio_led_backup_tri_o[0]}]
set_property PACKAGE_PIN T21 [get_ports {gpio_led_ioi_tri_o[0]}]
set_property PACKAGE_PIN U22 [get_ports {gpio_led_production_tri_o[0]}]
set_property PACKAGE_PIN AB6 [get_ports {gpio_debug_ioi_tri_o[0]}]
set_property PACKAGE_PIN AB7 [get_ports {gpio_debug_ioi_tri_o[1]}]
set_property PACKAGE_PIN AA4 [get_ports {gpio_debug_ioi_tri_o[2]}]
set_property PACKAGE_PIN Y4 [get_ports {gpio_debug_ioi_tri_o[3]}]
set_property PACKAGE_PIN T6 [get_ports {gpio_debug_backup_tri_o[0]}]
set_property PACKAGE_PIN R6 [get_ports {gpio_debug_backup_tri_o[1]}]
set_property PACKAGE_PIN U4 [get_ports {gpio_debug_production_tri_o[0]}]
set_property PACKAGE_PIN T4 [get_ports {gpio_debug_production_tri_o[1]}]
set_property PACKAGE_PIN V22 [get_ports {gpio_trigger[0]}]
set_property PACKAGE_PIN AB9 [get_ports ioi_uart_rxd]
set_property PACKAGE_PIN AB10 [get_ports ioi_uart_txd]
set_property IOSTANDARD LVCMOS33 [get_ports ioi_uart_txd]
set_property IOSTANDARD LVCMOS33 [get_ports ioi_uart_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_trigger[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_sw_tri_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_sw_tri_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_sw_tri_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_sw_tri_i[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_led_production_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_led_ioi_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_led_backup_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_debug_production_tri_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_debug_production_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_debug_ioi_tri_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_debug_ioi_tri_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_debug_ioi_tri_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_debug_ioi_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_debug_backup_tri_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_debug_backup_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_btn_tri_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_btn_tri_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_btn_tri_i[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio_btn_tri_i[1]}]
