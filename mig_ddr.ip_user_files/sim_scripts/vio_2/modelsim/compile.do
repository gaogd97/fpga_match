vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -sv "+incdir+../../../../mig_ddr.srcs/sources_1/ip/vio_2/hdl/verilog" "+incdir+../../../../mig_ddr.srcs/sources_1/ip/vio_2/hdl" \
"D:/software/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/software/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/software/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../mig_ddr.srcs/sources_1/ip/vio_2/hdl/verilog" "+incdir+../../../../mig_ddr.srcs/sources_1/ip/vio_2/hdl" \
"../../../../mig_ddr.srcs/sources_1/ip/vio_2/sim/vio_2.v" \

vlog -work xil_defaultlib \
"glbl.v"
