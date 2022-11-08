
module motor_ctrl(
    input           clk         ,//100MHz, 10ns
    input           sw          ,//motor switch
    input           rst         ,
    input  [15:0]   pulse_width ,//let pulse_width = 1000*10ns = 10us, minimum pulse width = 2.2us
    input  [15:0]   speed       ,
    output          pulse_o     
);


reg [15:0] cnt_10ns;
reg        pulse   ;

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        cnt_10ns<=0;
        pulse<=0;
    end
    else if(sw) begin
        if(cnt_10ns<pulse_width-1) begin
            cnt_10ns<=cnt_10ns + 1'b1;
            pulse<=1;
        end
        else if(cnt_10ns>=pulse_width-1 && cnt_10ns<speed) begin
            cnt_10ns<=cnt_10ns + 1'b1;
            pulse<=0;
        end
        else if(cnt_10ns==speed) begin
            cnt_10ns<=0;
            pulse<=~pulse;
        end
        else begin
            cnt_10ns<=cnt_10ns;
            pulse<=pulse;
        end
    end
    else begin
        cnt_10ns<=0;
        pulse<=0;        
    end
        
end

reg [15:0] pulse_cnt;
always @(posedge clk or negedge rst) begin
    if(!rst) begin
        pulse_cnt<=0;
    end
    else begin
        if(cnt_10ns==speed) begin
            pulse_cnt<=pulse_cnt + 1'b1;
        end
        else begin
            pulse_cnt<=pulse_cnt;
        end
    end
end
    
//assign pulse_o = (pulse_cnt<pulse_num)?pulse:0;
assign pulse_o = pulse;

    
endmodule
