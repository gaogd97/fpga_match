module Throwing_motor #(
    parameter N_div_2PI_L = 16'b001_0000010011000 //N=6400, L=1000
) 
(
    input           clk            ,
    input           rst_n          ,
    input           key_sw         , 
    input           key_dir        , 
    input           data_in_valid  ,
    input   [15:0]  data_x         ,
    input   [15:0]  data_y         ,
    input   [15:0]  forth_pulse_num,
    input   [15:0]  back_pulse_num ,
    output  [19:0]  motor_frequency,
    output          en_n           , 
    output          en_p           , 
    output          dir_n          , 
    output          dir_p          , 
    output          pul_n          , 
    output          pul_p     
);


wire         data_out_valid;
wire [19:0]  f_pluse_freq  ;
frequency_compute #(
    .N_div_2PI_L(N_div_2PI_L)
)
frequency_compute_inst(
    .clk           (clk           ),
    .rst_n         (rst_n         ),
    .data_in_valid (data_in_valid ),
    .data_x        (data_x        ),
    .data_y        (data_y        ),
    .f_pluse_freq  (f_pluse_freq  ),
    .data_out_valid(data_out_valid)
);



reg [19:0] motor_freq;
always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        motor_freq<=0;
    end
    else if(data_out_valid) begin
        motor_freq<=f_pluse_freq;
    end
    else begin
        motor_freq<=motor_freq;      
    end
end
assign motor_frequency = motor_freq;

wire key_sw_o;
key_de_jitter key_de_jitter_inst0(
	.sys_clk    (clk     ),
	.rst_n		(rst_n   ),
	.key_in		(key_sw  ),
	.key_flag   (key_sw_o)
);

motor_ctrl_forth_back #(
    .pulse_width(16'd1000)
)
motor_ctrl_forth_back_inst(
    .clk            (clk            ),
    .rst_n          (rst_n          ),
    .key_sw         (key_sw_o       ),
    .motor_freq     (motor_freq     ),
    .forth_pulse_num(forth_pulse_num),
    .back_pulse_num (back_pulse_num ),
    .en_n           (en_n           ),
    .en_p           (en_p           ),
    .dir_n          (dir_n          ),
    .dir_p          (dir_p          ),
    .pul_n          (pul_n          ),
    .pul_p          (pul_p          )
);  

    
endmodule
