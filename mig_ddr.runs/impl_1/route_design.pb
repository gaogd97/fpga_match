
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7k325t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7k325t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Clock Placer Checks: Poor placement for routing between an IO pin and BUFG. 
Resolution: Poor placement of an IO pin and a BUFG has resulted in the router using a non-dedicated path between the two.  There are several things that could trigger this DRC, each of which can cause unpredictable clock insertion delays that result in poor timing.  This DRC could be caused by any of the following: (a) a clock port was placed on a pin that is not a CCIO-pin (b)the BUFG has not been placed in the same half of the device or SLR as the CCIO-pin (c) a single ended clock has been placed on the N-Side of a differential pair CCIO-pin.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	%s (IBUF.O) is locked to %s
	%s (BUFG.I) is provisionally placed by clockplacer on %s
%s*DRC2X
 "B
cmos_pclk_i_IBUF_inst	cmos_pclk_i_IBUF_inst2default:default2default:default2B
 ",

IOB_X0Y196

IOB_X0Y1962default:default2default:default2b
 "L
cmos_pclk_i_IBUF_BUFG_inst	cmos_pclk_i_IBUF_BUFG_inst2default:default2default:default2H
 "2
BUFGCTRL_X0Y8
BUFGCTRL_X0Y82default:default2default:default2;
 #DRC|Implementation|Placement|Clocks2default:default8ZPLCK-12h px? 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 133ea464c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:58 ; elapsed = 00:00:31 . Memory (MB): peak = 3429.520 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 2.1 Create Timer | Checksum: 133ea464c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:59 ; elapsed = 00:00:32 . Memory (MB): peak = 3429.520 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 133ea464c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:59 ; elapsed = 00:00:33 . Memory (MB): peak = 3429.520 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 133ea464c
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:59 ; elapsed = 00:00:33 . Memory (MB): peak = 3429.520 ; gain = 0.0002default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 2008346f0
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:46 ; elapsed = 00:01:05 . Memory (MB): peak = 3429.520 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2O
;| WNS=-22.841| TNS=-34887.544| WHS=-3.040 | THS=-4214.488|
2default:defaultZ35-416h px? 
}

Phase %s%s
101*constraints2
2.5 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
2.5.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 2.5.1 Update Timing | Checksum: 200d8d5e1
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:12 ; elapsed = 00:01:21 . Memory (MB): peak = 3429.520 ; gain = 0.0002default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-22.841| TNS=-34676.046| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
P
;Phase 2.5 Update Timing for Bus Skew | Checksum: 2753bc402
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:12 ; elapsed = 00:01:21 . Memory (MB): peak = 3429.520 ; gain = 0.0002default:defaulth px? 
I
4Phase 2 Router Initialization | Checksum: 1fa1e39fc
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:02:12 ; elapsed = 00:01:21 . Memory (MB): peak = 3429.520 ; gain = 0.0002default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 102417e76
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:02:47 ; elapsed = 00:01:41 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
1052default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       clk_out1_clk_wiz_1 |                clk_pll_i |                                                                     edma_ctr_inst/fs_cap_R0/vs_i_r1_reg/D|
|            oserdes_clk_1 |         oserdes_clkdiv_1 |u_mig_7series_0/u_mig_7series_0_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/output_[8].oserdes_dq_.ddr.oserdes_dq_i/RST|
|            oserdes_clk_5 |         oserdes_clkdiv_5 |u_mig_7series_0/u_mig_7series_0_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/output_[8].oserdes_dq_.sdr.oserdes_dq_i/RST|
|            oserdes_clk_8 |         oserdes_clkdiv_8 |u_mig_7series_0/u_mig_7series_0_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/output_[8].oserdes_dq_.ddr.oserdes_dq_i/RST|
|            oserdes_clk_6 |         oserdes_clkdiv_6 |u_mig_7series_0/u_mig_7series_0_mig/u_memc_ui_top_std/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/output_[4].oserdes_dq_.sdr.oserdes_dq_i/RST|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-25.283| TNS=-41816.664| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 131a13a62
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:06 ; elapsed = 00:02:33 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-25.437| TNS=-41818.490| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1e28a385d
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:08 ; elapsed = 00:02:35 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1e28a385d
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:08 ; elapsed = 00:02:35 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 2dba3ba5c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:16 ; elapsed = 00:02:40 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-25.267| TNS=-41662.137| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
B
-Phase 5.1 Delay CleanUp | Checksum: cdff4360
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:18 ; elapsed = 00:02:42 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
L
7Phase 5.2 Clock Skew Optimization | Checksum: cdff4360
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:18 ; elapsed = 00:02:42 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
N
9Phase 5 Delay and Skew Optimization | Checksum: cdff4360
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:18 ; elapsed = 00:02:42 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 6.1.1 Update Timing | Checksum: b83b1a8d
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:27 ; elapsed = 00:02:48 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
?
Intermediate Timing Summary %s164*route2M
9| WNS=-25.087| TNS=-41651.441| WHS=-0.672 | THS=-0.763 |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1c813d584
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:28 ; elapsed = 00:02:48 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
?
?The router encountered %s pins that are both setup-critical and hold-critical and tried to fix hold violations at the expense of setup slack. Such pins are:
%s201*route2
12default:default2;
'	edma_ctr_inst/fs_cap_R0/vs_i_r1_reg/D
2default:defaultZ35-468h px? 
A
,Phase 6 Post Hold Fix | Checksum: 1e06c8efc
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:28 ; elapsed = 00:02:49 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 1cf5eeb9b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:29 ; elapsed = 00:02:49 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 1cf5eeb9b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:29 ; elapsed = 00:02:50 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
D
/Phase 9 Depositing Routes | Checksum: f6da2d9c
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:36 ; elapsed = 00:02:57 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
10.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 10.1 Update Timing | Checksum: 1acea1737
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:46 ; elapsed = 00:03:03 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
?
Estimated Timing Summary %s
57*route2M
9| WNS=-25.087| TNS=-41653.751| WHS=0.051  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 1acea1737
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:46 ; elapsed = 00:03:04 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2p
\Time (s): cpu = 00:04:46 ; elapsed = 00:03:04 . Memory (MB): peak = 3448.305 ; gain = 18.7852default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
11772default:default2
482default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:04:582default:default2
00:03:102default:default2
3448.3052default:default2
18.7852default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0452default:default2
3448.3052default:default2
0.0002default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:232default:default2
00:00:092default:default2
3448.3052default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2a
MD:/img_camera_ov5640_720p_cute/mig_ddr.runs/impl_1/img_3buf_ov5640_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:382default:default2
00:00:242default:default2
3448.3052default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_drc -file img_3buf_ov5640_drc_routed.rpt -pb img_3buf_ov5640_drc_routed.pb -rpx img_3buf_ov5640_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
ureport_drc -file img_3buf_ov5640_drc_routed.rpt -pb img_3buf_ov5640_drc_routed.pb -rpx img_3buf_ov5640_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
QD:/img_camera_ov5640_720p_cute/mig_ddr.runs/impl_1/img_3buf_ov5640_drc_routed.rptQD:/img_camera_ov5640_720p_cute/mig_ddr.runs/impl_1/img_3buf_ov5640_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:242default:default2
00:00:122default:default2
3448.3052default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file img_3buf_ov5640_methodology_drc_routed.rpt -pb img_3buf_ov5640_methodology_drc_routed.pb -rpx img_3buf_ov5640_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file img_3buf_ov5640_methodology_drc_routed.rpt -pb img_3buf_ov5640_methodology_drc_routed.pb -rpx img_3buf_ov5640_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
]D:/img_camera_ov5640_720p_cute/mig_ddr.runs/impl_1/img_3buf_ov5640_methodology_drc_routed.rpt]D:/img_camera_ov5640_720p_cute/mig_ddr.runs/impl_1/img_3buf_ov5640_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:01:102default:default2
00:00:442default:default2
3599.6562default:default2
151.3522default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_power -file img_3buf_ov5640_power_routed.rpt -pb img_3buf_ov5640_power_summary_routed.pb -rpx img_3buf_ov5640_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file img_3buf_ov5640_power_routed.rpt -pb img_3buf_ov5640_power_summary_routed.pb -rpx img_3buf_ov5640_power_routed.rpx2default:defaultZ4-113h px? 
?
$Power model is not available for %s
23*power2H
PULLUP_inst	%uicfg5640_inst/uii2c_inst/PULLUP_inst2default:default8Z33-23h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
?Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
11902default:default2
492default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:502default:default2
00:00:332default:default2
3634.5162default:default2
34.8592default:defaultZ17-268h px? 
?
%s4*runtcl2
kExecuting : report_route_status -file img_3buf_ov5640_route_status.rpt -pb img_3buf_ov5640_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file img_3buf_ov5640_timing_summary_routed.rpt -pb img_3buf_ov5640_timing_summary_routed.pb -rpx img_3buf_ov5640_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -2, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:072default:default2
00:00:082default:default2
3634.5162default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2l
XExecuting : report_incremental_reuse -file img_3buf_ov5640_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2l
XExecuting : report_clock_utilization -file img_3buf_ov5640_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file img_3buf_ov5640_bus_skew_routed.rpt -pb img_3buf_ov5640_bus_skew_routed.pb -rpx img_3buf_ov5640_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -2, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record