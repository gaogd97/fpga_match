vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../mig_ddr.srcs/sources_1/ip/ila_6/hdl/verilog" \
"D:/software/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/software/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/software/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mig_ddr.srcs/sources_1/ip/ila_6/hdl/verilog" \
"../../../../mig_ddr.srcs/sources_1/ip/ila_6/sim/ila_6.v" \

vlog -work xil_defaultlib \
"glbl.v"

