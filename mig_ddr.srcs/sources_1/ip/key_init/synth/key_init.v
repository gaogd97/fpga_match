// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:key_ip:1.0
// IP Revision: 2

(* X_CORE_INFO = "key_ip,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "key_init,key_ip,{}" *)
(* CORE_GENERATION_INFO = "key_init,key_ip,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=key_ip,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CLK_FREQ=100000000,CNT_10MS=999999,KEY1_S0=00,KEY1_S1=01,KEY1_S2=10,KEY1_S3=11,KEY2_S0=00,KEY2_S1=01,KEY2_S2=10,KEY2_S3=11}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module key_init (
  clk_i,
  key1_i,
  key2_i,
  key1_cap,
  key2_cap
);

input wire clk_i;
input wire key1_i;
input wire key2_i;
output wire key1_cap;
output wire key2_cap;

  key_ip #(
    .CLK_FREQ(100000000),
    .CNT_10MS(999999),
    .KEY1_S0('B00),
    .KEY1_S1('B01),
    .KEY1_S2('B10),
    .KEY1_S3('B11),
    .KEY2_S0('B00),
    .KEY2_S1('B01),
    .KEY2_S2('B10),
    .KEY2_S3('B11)
  ) inst (
    .clk_i(clk_i),
    .key1_i(key1_i),
    .key2_i(key2_i),
    .key1_cap(key1_cap),
    .key2_cap(key2_cap)
  );
endmodule
