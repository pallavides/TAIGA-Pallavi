# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name switch_select \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_switch_select \
    op interface \
    ports { switch_select { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name rx_data_a \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_data_a \
    op interface \
    ports { rx_data_a { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name rx_ready_a \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_ready_a \
    op interface \
    ports { rx_ready_a { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name rx_valid_a \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_valid_a \
    op interface \
    ports { rx_valid_a { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name rx_tlast_a \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_tlast_a \
    op interface \
    ports { rx_tlast_a { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name rx_data_b \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_data_b \
    op interface \
    ports { rx_data_b { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name rx_ready_b \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_ready_b \
    op interface \
    ports { rx_ready_b { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name rx_valid_b \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_valid_b \
    op interface \
    ports { rx_valid_b { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name rx_tlast_b \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_tlast_b \
    op interface \
    ports { rx_tlast_b { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name rx_data \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_data \
    op interface \
    ports { rx_data { O 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name rx_ready \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_ready \
    op interface \
    ports { rx_ready { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name rx_valid \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_valid \
    op interface \
    ports { rx_valid { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name rx_tlast \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rx_tlast \
    op interface \
    ports { rx_tlast { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name tx_data_a \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tx_data_a \
    op interface \
    ports { tx_data_a { O 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name tx_ready_a \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tx_ready_a \
    op interface \
    ports { tx_ready_a { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name tx_valid_a \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tx_valid_a \
    op interface \
    ports { tx_valid_a { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name tx_tlast_a \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tx_tlast_a \
    op interface \
    ports { tx_tlast_a { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name tx_data_b \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tx_data_b \
    op interface \
    ports { tx_data_b { O 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name tx_ready_b \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tx_ready_b \
    op interface \
    ports { tx_ready_b { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name tx_valid_b \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tx_valid_b \
    op interface \
    ports { tx_valid_b { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name tx_tlast_b \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tx_tlast_b \
    op interface \
    ports { tx_tlast_b { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name tx_data \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tx_data \
    op interface \
    ports { tx_data { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name tx_ready \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tx_ready \
    op interface \
    ports { tx_ready { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name tx_valid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tx_valid \
    op interface \
    ports { tx_valid { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name tx_tlast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tx_tlast \
    op interface \
    ports { tx_tlast { I 1 bit } } \
} "
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


