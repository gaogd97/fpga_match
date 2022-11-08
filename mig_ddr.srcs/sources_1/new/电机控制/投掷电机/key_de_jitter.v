`timescale 1ns / 1ps

module key_de_jitter
(
	input		sys_clk		,
	input		rst_n		,
	input		key_in		,
	
	output	reg	key_flag
);


parameter	CNT_MAX = 20'd999_999; //1000_000*10ns = 10ms
reg		[19:0]	cnt_20ms;

always@(posedge sys_clk or negedge rst_n)begin
	if(rst_n == 1'b0)
		cnt_20ms <= 20'd0;
	else if(key_in == 1'd1)			
		cnt_20ms <= 20'd0;
	else if(cnt_20ms == CNT_MAX )	
		cnt_20ms <= CNT_MAX;
	else
		cnt_20ms <= cnt_20ms + 20'd1;
end

always@(posedge sys_clk or negedge rst_n)begin
	if(rst_n == 1'b0)
		key_flag <= 1'd0;
	else if(cnt_20ms == CNT_MAX - 20'd1)		
		key_flag <= 1'd1;						
	else
		key_flag <= 1'd0;						
end

endmodule
