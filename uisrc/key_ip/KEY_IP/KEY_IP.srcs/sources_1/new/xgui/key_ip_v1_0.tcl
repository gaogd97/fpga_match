# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLK_FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CNT_10MS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "KEY1_S0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "KEY1_S1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "KEY1_S2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "KEY1_S3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "KEY2_S0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "KEY2_S1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "KEY2_S2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "KEY2_S3" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLK_FREQ { PARAM_VALUE.CLK_FREQ } {
	# Procedure called to update CLK_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_FREQ { PARAM_VALUE.CLK_FREQ } {
	# Procedure called to validate CLK_FREQ
	return true
}

proc update_PARAM_VALUE.CNT_10MS { PARAM_VALUE.CNT_10MS } {
	# Procedure called to update CNT_10MS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CNT_10MS { PARAM_VALUE.CNT_10MS } {
	# Procedure called to validate CNT_10MS
	return true
}

proc update_PARAM_VALUE.KEY1_S0 { PARAM_VALUE.KEY1_S0 } {
	# Procedure called to update KEY1_S0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.KEY1_S0 { PARAM_VALUE.KEY1_S0 } {
	# Procedure called to validate KEY1_S0
	return true
}

proc update_PARAM_VALUE.KEY1_S1 { PARAM_VALUE.KEY1_S1 } {
	# Procedure called to update KEY1_S1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.KEY1_S1 { PARAM_VALUE.KEY1_S1 } {
	# Procedure called to validate KEY1_S1
	return true
}

proc update_PARAM_VALUE.KEY1_S2 { PARAM_VALUE.KEY1_S2 } {
	# Procedure called to update KEY1_S2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.KEY1_S2 { PARAM_VALUE.KEY1_S2 } {
	# Procedure called to validate KEY1_S2
	return true
}

proc update_PARAM_VALUE.KEY1_S3 { PARAM_VALUE.KEY1_S3 } {
	# Procedure called to update KEY1_S3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.KEY1_S3 { PARAM_VALUE.KEY1_S3 } {
	# Procedure called to validate KEY1_S3
	return true
}

proc update_PARAM_VALUE.KEY2_S0 { PARAM_VALUE.KEY2_S0 } {
	# Procedure called to update KEY2_S0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.KEY2_S0 { PARAM_VALUE.KEY2_S0 } {
	# Procedure called to validate KEY2_S0
	return true
}

proc update_PARAM_VALUE.KEY2_S1 { PARAM_VALUE.KEY2_S1 } {
	# Procedure called to update KEY2_S1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.KEY2_S1 { PARAM_VALUE.KEY2_S1 } {
	# Procedure called to validate KEY2_S1
	return true
}

proc update_PARAM_VALUE.KEY2_S2 { PARAM_VALUE.KEY2_S2 } {
	# Procedure called to update KEY2_S2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.KEY2_S2 { PARAM_VALUE.KEY2_S2 } {
	# Procedure called to validate KEY2_S2
	return true
}

proc update_PARAM_VALUE.KEY2_S3 { PARAM_VALUE.KEY2_S3 } {
	# Procedure called to update KEY2_S3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.KEY2_S3 { PARAM_VALUE.KEY2_S3 } {
	# Procedure called to validate KEY2_S3
	return true
}


proc update_MODELPARAM_VALUE.CLK_FREQ { MODELPARAM_VALUE.CLK_FREQ PARAM_VALUE.CLK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_FREQ}] ${MODELPARAM_VALUE.CLK_FREQ}
}

proc update_MODELPARAM_VALUE.CNT_10MS { MODELPARAM_VALUE.CNT_10MS PARAM_VALUE.CNT_10MS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CNT_10MS}] ${MODELPARAM_VALUE.CNT_10MS}
}

proc update_MODELPARAM_VALUE.KEY1_S0 { MODELPARAM_VALUE.KEY1_S0 PARAM_VALUE.KEY1_S0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.KEY1_S0}] ${MODELPARAM_VALUE.KEY1_S0}
}

proc update_MODELPARAM_VALUE.KEY1_S1 { MODELPARAM_VALUE.KEY1_S1 PARAM_VALUE.KEY1_S1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.KEY1_S1}] ${MODELPARAM_VALUE.KEY1_S1}
}

proc update_MODELPARAM_VALUE.KEY1_S2 { MODELPARAM_VALUE.KEY1_S2 PARAM_VALUE.KEY1_S2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.KEY1_S2}] ${MODELPARAM_VALUE.KEY1_S2}
}

proc update_MODELPARAM_VALUE.KEY1_S3 { MODELPARAM_VALUE.KEY1_S3 PARAM_VALUE.KEY1_S3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.KEY1_S3}] ${MODELPARAM_VALUE.KEY1_S3}
}

proc update_MODELPARAM_VALUE.KEY2_S0 { MODELPARAM_VALUE.KEY2_S0 PARAM_VALUE.KEY2_S0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.KEY2_S0}] ${MODELPARAM_VALUE.KEY2_S0}
}

proc update_MODELPARAM_VALUE.KEY2_S1 { MODELPARAM_VALUE.KEY2_S1 PARAM_VALUE.KEY2_S1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.KEY2_S1}] ${MODELPARAM_VALUE.KEY2_S1}
}

proc update_MODELPARAM_VALUE.KEY2_S2 { MODELPARAM_VALUE.KEY2_S2 PARAM_VALUE.KEY2_S2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.KEY2_S2}] ${MODELPARAM_VALUE.KEY2_S2}
}

proc update_MODELPARAM_VALUE.KEY2_S3 { MODELPARAM_VALUE.KEY2_S3 PARAM_VALUE.KEY2_S3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.KEY2_S3}] ${MODELPARAM_VALUE.KEY2_S3}
}

