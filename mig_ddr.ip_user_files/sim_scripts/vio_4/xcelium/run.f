-makelib xcelium_lib/xpm -sv \
  "D:/software/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/software/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/software/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mig_ddr.srcs/sources_1/ip/vio_4/sim/vio_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

