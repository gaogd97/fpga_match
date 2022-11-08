
module motor_ctrl_up(
    input           clk         ,
    input           rst         ,
    input           sw          ,
    input           dir         ,
    output          pulse_n     ,
    output          pulse_p     ,
    output          dir_n       ,    
    output          dir_p       
    );

assign pulse_n =1'b0;
assign dir_n   =1'b0;
assign dir_p   = dir;

parameter PULSE_WIDTH = 16'd1000;
parameter SPEED       = 16'd62500; //freq = 10^8/62500 = 1600Hz, n=1600/6400=0.25rps=15rpm


motor_ctrl motor_ctrl_inst(
    .clk         (clk        ),
    .sw          (sw         ),
    .rst         (rst        ),
    .pulse_width (PULSE_WIDTH),
    .speed       (SPEED      ),
    .pulse_o     (pulse_p    )
);






endmodule
