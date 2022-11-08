-makelib xcelium_lib/xpm -sv \
  "F:/vivado2019_2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "F:/vivado2019_2/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "F:/vivado2019_2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../mig_ddr.srcs/sources_1/ip/key_init/key_ip.v" \
  "../../../../mig_ddr.srcs/sources_1/ip/key_init/sim/key_init.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

