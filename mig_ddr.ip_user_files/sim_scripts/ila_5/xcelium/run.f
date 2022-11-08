-makelib xcelium_lib/xpm -sv \
  "F:/vivado2019_2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "F:/vivado2019_2/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "F:/vivado2019_2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mig_ddr.srcs/sources_1/ip/ila_5/sim/ila_5.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

