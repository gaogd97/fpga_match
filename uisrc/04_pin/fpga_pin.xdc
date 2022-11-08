#---------------------------sensor---------------------------
set_property PACKAGE_PIN J15  [get_ports power_en]
set_property IOSTANDARD LVCMOS33 [get_ports power_en]

set_property PACKAGE_PIN J13 [get_ports {key1}]
set_property IOSTANDARD LVCMOS33 [get_ports {key1}]
set_property PACKAGE_PIN H13 [get_ports {key2}]
set_property IOSTANDARD LVCMOS33 [get_ports {key2}]
set_property PACKAGE_PIN H9 [get_ports {key3}]
set_property IOSTANDARD LVCMOS33 [get_ports {key3}]
set_property PACKAGE_PIN H8 [get_ports {key4}]
set_property IOSTANDARD LVCMOS33 [get_ports {key4}]

set_property PACKAGE_PIN C16 [get_ports t_dir_n]
set_property IOSTANDARD LVCMOS33 [get_ports t_dir_n]
                                            
set_property PACKAGE_PIN E15 [get_ports t_dir_p]
set_property IOSTANDARD LVCMOS33 [get_ports t_dir_p]
                                           
set_property PACKAGE_PIN G17 [get_ports t_pul_n]
set_property IOSTANDARD LVCMOS33 [get_ports t_pul_n]
                                            
set_property PACKAGE_PIN L19 [get_ports t_pul_p]
set_property IOSTANDARD LVCMOS33 [get_ports t_pul_p]

set_property PACKAGE_PIN G19 [get_ports r_dir_n]
set_property IOSTANDARD LVCMOS33 [get_ports r_dir_n]
                                            
set_property PACKAGE_PIN H19 [get_ports r_dir_p]
set_property IOSTANDARD LVCMOS33 [get_ports r_dir_p]
                                            
set_property PACKAGE_PIN D19 [get_ports r_pul_n]
set_property IOSTANDARD LVCMOS33 [get_ports r_pul_n]
                                            
set_property PACKAGE_PIN F19 [get_ports r_pul_p]
set_property IOSTANDARD LVCMOS33 [get_ports r_pul_p]
#---------------------------sensor---------------------------
set_property PACKAGE_PIN A18  [get_ports cmos_pclk_i]
set_property PACKAGE_PIN M17  [get_ports cmos_vsync_i]
set_property PACKAGE_PIN L18  [get_ports cmos_href_i]
set_property PACKAGE_PIN A19  [get_ports cmos_xclk_o]
set_property PACKAGE_PIN G16  [get_ports cmos_data_i[0]]
set_property PACKAGE_PIN H16  [get_ports cmos_data_i[1]]
set_property PACKAGE_PIN A17  [get_ports cmos_data_i[2]]
set_property PACKAGE_PIN B17  [get_ports cmos_data_i[3]]
set_property PACKAGE_PIN C18  [get_ports cmos_data_i[4]]
set_property PACKAGE_PIN C17  [get_ports cmos_data_i[5]]
set_property PACKAGE_PIN H18  [get_ports cmos_data_i[6]]
set_property PACKAGE_PIN H17  [get_ports cmos_data_i[7]]
set_property PACKAGE_PIN C19  [get_ports cmos_scl]
set_property PACKAGE_PIN B19  [get_ports cmos_sda]

set_property IOSTANDARD LVCMOS33 [get_ports cmos_vsync_i]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_href_i]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_pclk_i]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_xclk_o]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_data_i[*]]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_scl]
set_property IOSTANDARD LVCMOS33 [get_ports cmos_sda]
set_property PULLUP true [get_ports cmos_scl]
set_property PULLUP true [get_ports cmos_sda]

create_clock -period 10.000 -name sysclk -add [get_ports sysclk_i]
set_property PACKAGE_PIN AA3 [get_ports sysclk_i]
set_property IOSTANDARD SSTL135  [get_ports sysclk_i]

set_property PACKAGE_PIN G14 [get_ports init_calib_complete]
set_property IOSTANDARD LVCMOS33  [get_ports init_calib_complete]

set_property PACKAGE_PIN Y23 [get_ports HDMI_CLK_P]
set_property PACKAGE_PIN W25 [get_ports {HDMI_TX_P[0]}]
set_property PACKAGE_PIN Y22 [get_ports {HDMI_TX_P[1]}]
set_property PACKAGE_PIN Y25 [get_ports {HDMI_TX_P[2]}]

set_property IOSTANDARD TMDS_33 [get_ports HDMI_CLK_P]
set_property IOSTANDARD TMDS_33 [get_ports {HDMI_TX_P[*]}]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cmos_pclk_i_IBUF]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE Yes [current_design]
