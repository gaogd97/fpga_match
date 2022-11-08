
set_property PACKAGE_PIN V4 [get_ports clk50m_i]
set_property IOSTANDARD LVCMOS15 [get_ports clk50m_i]

set_property PACKAGE_PIN P22 [get_ports breath_light]
set_property IOSTANDARD LVCMOS33 [get_ports breath_light]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE Yes [current_design]




create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list u_mig_7series_0/u_mig_7series_0_mig/u_ddr3_infrastructure/CLK]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 64 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {app_rd_data_r[0]} {app_rd_data_r[1]} {app_rd_data_r[2]} {app_rd_data_r[3]} {app_rd_data_r[4]} {app_rd_data_r[5]} {app_rd_data_r[6]} {app_rd_data_r[7]} {app_rd_data_r[8]} {app_rd_data_r[9]} {app_rd_data_r[10]} {app_rd_data_r[11]} {app_rd_data_r[12]} {app_rd_data_r[13]} {app_rd_data_r[14]} {app_rd_data_r[15]} {app_rd_data_r[16]} {app_rd_data_r[17]} {app_rd_data_r[18]} {app_rd_data_r[19]} {app_rd_data_r[20]} {app_rd_data_r[21]} {app_rd_data_r[22]} {app_rd_data_r[23]} {app_rd_data_r[24]} {app_rd_data_r[25]} {app_rd_data_r[26]} {app_rd_data_r[27]} {app_rd_data_r[28]} {app_rd_data_r[29]} {app_rd_data_r[30]} {app_rd_data_r[31]} {app_rd_data_r[32]} {app_rd_data_r[33]} {app_rd_data_r[34]} {app_rd_data_r[35]} {app_rd_data_r[36]} {app_rd_data_r[37]} {app_rd_data_r[38]} {app_rd_data_r[39]} {app_rd_data_r[40]} {app_rd_data_r[41]} {app_rd_data_r[42]} {app_rd_data_r[43]} {app_rd_data_r[44]} {app_rd_data_r[45]} {app_rd_data_r[46]} {app_rd_data_r[47]} {app_rd_data_r[48]} {app_rd_data_r[49]} {app_rd_data_r[50]} {app_rd_data_r[51]} {app_rd_data_r[52]} {app_rd_data_r[53]} {app_rd_data_r[54]} {app_rd_data_r[55]} {app_rd_data_r[56]} {app_rd_data_r[57]} {app_rd_data_r[58]} {app_rd_data_r[59]} {app_rd_data_r[60]} {app_rd_data_r[61]} {app_rd_data_r[62]} {app_rd_data_r[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 30 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {count[0]} {count[1]} {count[2]} {count[3]} {count[4]} {count[5]} {count[6]} {count[7]} {count[8]} {count[9]} {count[10]} {count[11]} {count[12]} {count[13]} {count[14]} {count[15]} {count[16]} {count[17]} {count[18]} {count[19]} {count[20]} {count[21]} {count[22]} {count[23]} {count[24]} {count[25]} {count[26]} {count[27]} {count[28]} {count[29]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 64 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {cm_data[0]} {cm_data[1]} {cm_data[2]} {cm_data[3]} {cm_data[4]} {cm_data[5]} {cm_data[6]} {cm_data[7]} {cm_data[8]} {cm_data[9]} {cm_data[10]} {cm_data[11]} {cm_data[12]} {cm_data[13]} {cm_data[14]} {cm_data[15]} {cm_data[16]} {cm_data[17]} {cm_data[18]} {cm_data[19]} {cm_data[20]} {cm_data[21]} {cm_data[22]} {cm_data[23]} {cm_data[24]} {cm_data[25]} {cm_data[26]} {cm_data[27]} {cm_data[28]} {cm_data[29]} {cm_data[30]} {cm_data[31]} {cm_data[32]} {cm_data[33]} {cm_data[34]} {cm_data[35]} {cm_data[36]} {cm_data[37]} {cm_data[38]} {cm_data[39]} {cm_data[40]} {cm_data[41]} {cm_data[42]} {cm_data[43]} {cm_data[44]} {cm_data[45]} {cm_data[46]} {cm_data[47]} {cm_data[48]} {cm_data[49]} {cm_data[50]} {cm_data[51]} {cm_data[52]} {cm_data[53]} {cm_data[54]} {cm_data[55]} {cm_data[56]} {cm_data[57]} {cm_data[58]} {cm_data[59]} {cm_data[60]} {cm_data[61]} {cm_data[62]} {cm_data[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 2 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {state[0]} {state[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list app_rd_data_valid_r]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list light_led]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list tg_compare_error]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
