vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"F:/vivado2019_2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/vivado2019_2/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"F:/vivado2019_2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../mig_ddr.srcs/sources_1/ip/key_init/key_ip.v" \
"../../../../mig_ddr.srcs/sources_1/ip/key_init/sim/key_init.v" \

vlog -work xil_defaultlib \
"glbl.v"

