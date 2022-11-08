`timescale 1ns / 1ps


module frequency_compute #(
    parameter N_div_2PI_L = 16'b001_0100010111110 //16bit, 13bit are fractional parts
)
(
    input                  clk           ,
    input                  rst_n         ,
    input                  data_in_valid ,
    input         [15:0]   data_x        ,
    input         [15:0]   data_y        ,
    output  reg   [19:0]   f_pluse_freq  ,
    output  reg            data_out_valid
);


wire [31:0]   dout;
wire [3 :0]   power_data;
wire          data_dout_valid;

speed_compute_top speed_compute_top_inst(
    .clk                (clk            ),
    .rst_n              (rst_n          ),
    .data_in_valid      (data_in_valid  ),
    .data_x             (data_x         ),
    .data_y             (data_y         ),
    .dout               (dout           ),
    .power_data         (power_data     ),
    .sqrt_dout_valid    (data_dout_valid)
);


wire [47:0] f_p; //48bit, 28bit are fractional parts, 20 bits are integer part  
mult_gen_1 mult_gen_1_inst (
  .CLK(clk),            // input wire CLK
  .A(N_div_2PI_L),      // input wire [15 : 0] A  16bit, 13bit are fractional parts
  .B(dout),             // input wire [31 : 0] B  32bit, 15bit are fractional parts
  .CE(data_dout_valid), // input wire CE
  .P(f_p)               // output wire [47 : 0] P
);



reg [3:0] delay_reg;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        delay_reg<=0;
    end
    else if(data_dout_valid) begin
        delay_reg[0]<=data_dout_valid;
        delay_reg[1]<=delay_reg[0];
        delay_reg[2]<=delay_reg[1];
        delay_reg[3]<=delay_reg[2];
    end
    else begin
        delay_reg<=0;      
    end
end

reg [47:0] f_p1;
reg delay_reg1;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        f_p1<=0;
        delay_reg1<=0;
    end
    else if(delay_reg[3]) begin
        f_p1<=f_p<<power_data;
        delay_reg1<=1;
    end
    else begin
        f_p1<=0;
        delay_reg1<=0;
    end
end


reg [15:0] data_x_reg;
reg [15:0] data_y_reg;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        data_x_reg<=0;
        data_y_reg<=0;
    end
    else begin
        data_x_reg<=data_x;
        data_y_reg<=data_y;
    end
end

wire [15:0] data_x_wire;
wire [15:0] data_y_wire;
assign data_x_wire = data_x_reg^data_x;
assign data_y_wire = data_y_reg^data_y;

reg  count_flag;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        count_flag<=0;
    end
    else if(data_x_wire!=0 || data_y_wire!=0) begin
        count_flag<=1;
    end
    else begin
        count_flag<=0;
    end
end

reg [8:0] count_delay;
reg en_flag;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        count_delay<=0;
        en_flag<=1;
    end
    else if(count_flag || (count_delay>0 && count_delay<'d60)) begin
        count_delay<=count_delay + 1'b1;
        en_flag<=0;
    end
    else begin
        count_delay<=0;
        en_flag<=1;
    end
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        f_pluse_freq<=0;
        data_out_valid<=0;
    end
    else if(en_flag) begin
        f_pluse_freq <= f_p1[47: 28];
        data_out_valid <= delay_reg1;
    end
    else begin
        f_pluse_freq<=0;
        data_out_valid<=0;
    end
end

reg [47:0] d3;
always @(*) begin
    d3<=f_p;
end

    
endmodule
