# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param tcl.collectionResultDisplayLimit 0
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7k325tffg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/img_camera_ov5640_720p_cute/mig_ddr.cache/wt [current_project]
set_property parent.project_path D:/img_camera_ov5640_720p_cute/mig_ddr.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths d:/img_camera_ov5640_720p_cute/uisrc/key_ip [current_project]
update_ip_catalog
set_property ip_output_repo d:/img_camera_ov5640_720p_cute/mig_ddr.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/new/Corrosion.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/new/Expansion.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/new/char_num_out.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/imports/uisrc/03_ip/uiedmactr/edma_ctr.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/new/frequency_calculation.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/imports/uisrc/03_ip/uiedmactr/fs_cap.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/new/image_calculation.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/new/matrix_3x3_1bit.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/new/monitor.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/new/motor_ctrl.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/imports/uisrc/03_ip/uihdmitx/oserdese2_10to1.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/imports/uisrc/03_ip/uihdmitx/oserdese3_10to1.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/new/protpg.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/new/rgb2hsv.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/new/speed_compute.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/new/speed_compute_top.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/imports/uisrc/03_ip/uiov5640cfg/ui5640reg.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/imports/uisrc/03_ip/uiSensorRGB565/uiSensorRGB565.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/imports/uisrc/03_ip/uiov5640cfg/uicfg5640.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/imports/uisrc/03_ip/uidelay/uidelay.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/imports/uisrc/03_ip/uihdmitx/uihdmitx.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/imports/uisrc/03_ip/uiov5640cfg/uii2c.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/new/uitpg.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/imports/uisrc/03_ip/uivtc/uivtc.v
  D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/imports/uisrc/01_rtl/img_3buf_ov5640.v
}
read_vhdl -library xil_defaultlib D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/imports/uisrc/03_ip/uihdmitx/TMDSEncoder.vhd
read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/mig_7series_0/mig_7series_0.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/constraints/mig_7series_0.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/mig_7series_0/mig_7series_0/user_design/constraints/mig_7series_0_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/rd_fifo/rd_fifo.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/rd_fifo/rd_fifo.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/rd_fifo/rd_fifo_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/rd_fifo/rd_fifo_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/wr_fifo/wr_fifo.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/wr_fifo/wr_fifo.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/wr_fifo/wr_fifo_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/wr_fifo/wr_fifo_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1_board.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ms_fifo/ms_fifo.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ms_fifo/ms_fifo.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ms_fifo/ms_fifo_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/RGB_MEM/RGB_MEM.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/RGB_MEM/RGB_MEM_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_1/ila_1.xci
set_property used_in_synthesis false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_1/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_1/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_1/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_1/ila_1_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/key_init/key_init.xci

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_2/ila_2.xci
set_property used_in_synthesis false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_2/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_2/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_2/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_2/ila_2_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/vio_0/vio_0.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/vio_0/vio_0.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/vio_0/vio_0_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/FIFO_1bit/FIFO_1bit.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/FIFO_1bit/FIFO_1bit.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/FIFO_1bit/FIFO_1bit_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/vio_2/vio_2.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/vio_2/vio_2.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/vio_2/vio_2_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/div_gen_0/div_gen_0.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/div_gen_0/div_gen_0_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/c_addsub_0/c_addsub_0.xci

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/div_gen_1/div_gen_1.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/div_gen_1/div_gen_1_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/cordic_square_root/cordic_square_root.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/cordic_square_root/cordic_square_root_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/mult_gen_0/mult_gen_0.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/mult_gen_0/mult_gen_0_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/mult_gen_1/mult_gen_1.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/mult_gen_1/mult_gen_1_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/vio_3/vio_3.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/vio_3/vio_3.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/vio_3/vio_3_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/vio_4/vio_4.xci
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/vio_4/vio_4.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/vio_4/vio_4_ooc.xdc]

read_ip -quiet D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_6/ila_6.xci
set_property used_in_synthesis false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_6/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_6/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_6/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all d:/img_camera_ov5640_720p_cute/mig_ddr.srcs/sources_1/ip/ila_6/ila_6_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/constrs_1/imports/04_pin/fpga_pin.xdc
set_property used_in_implementation false [get_files D:/img_camera_ov5640_720p_cute/mig_ddr.srcs/constrs_1/imports/04_pin/fpga_pin.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top img_3buf_ov5640 -part xc7k325tffg676-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef img_3buf_ov5640.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file img_3buf_ov5640_utilization_synth.rpt -pb img_3buf_ov5640_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
