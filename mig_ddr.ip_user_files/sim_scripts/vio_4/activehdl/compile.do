vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../mig_ddr.srcs/sources_1/ip/vio_4/hdl/verilog" "+incdir+../../../../mig_ddr.srcs/sources_1/ip/vio_4/hdl" \
"D:/software/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/software/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/software/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mig_ddr.srcs/sources_1/ip/vio_4/hdl/verilog" "+incdir+../../../../mig_ddr.srcs/sources_1/ip/vio_4/hdl" \
"../../../../mig_ddr.srcs/sources_1/ip/vio_4/sim/vio_4.v" \

vlog -work xil_defaultlib \
"glbl.v"

