
module speed_compute_top(
    input               clk           ,
    input               rst_n         ,
    input               data_in_valid ,
    input      [15:0]   data_x        ,
    input      [15:0]   data_y        ,
    output     [31:0]   dout,
    output     [ 4:0]   power_data,
    output              sqrt_dout_valid
);

wire [31:0]   data     ;
wire data_div_out_valid;

speed_compute speed_compute_inst(
    .clk           (clk           ),    //input            
    .rst_n         (rst_n         ),    //input            
    .data_in_valid (data_in_valid ),    //input            
    .data_x        (data_x        ),    //input      [15:0]
    .data_y        (data_y        ),    //input      [15:0]
    .data_out_div_valid(data_div_out_valid),//output           
    .data          (data          ),    //output reg [31:0]
    .power_data    (power_data    )     //output reg [ 4:0]
);

wire [31:0] sqrt_din;
wire [15:0] sqrt_dout1;//16bit, 15bit are fractional parts 
assign sqrt_din = {data[16:0],15'd0};
cordic_square_root cordic_square_root_inst (
    .aclk(clk),                                // input wire aclk
    .aresetn(rst_n),                           // input wire aresetn
    .s_axis_cartesian_tvalid(data_div_out_valid),  // input wire s_axis_cartesian_tvalid
    .s_axis_cartesian_tdata(sqrt_din),         // input wire [31 : 0] s_axis_cartesian_tdata
    .m_axis_dout_tvalid(sqrt_dout_valid),      // output wire m_axis_dout_tvalid
    .m_axis_dout_tdata(sqrt_dout1)             // output wire [15 : 0] m_axis_dout_tdata
);   

//assign sqrt_dout_expand={16'd0, sqrt_dout1};
//assign sqrt_dout=sqrt_dout_valid?sqrt_dout_expand<<power_data:32'hffff_ffff;

mult_gen_0 mult_gen_0_inst (
  .CLK(clk),  
  .A(sqrt_dout1),      //16bit, 15bit_F
  .B(data_x),          //16bit_int
  .CE(sqrt_dout_valid),
  .P(dout)             //32bit, 15bit_F   
);

reg [15:0] d2;
reg [31:0] d1;
always @(*) begin
    d1 <= dout;
    d2 <= sqrt_dout1;
end

endmodule
