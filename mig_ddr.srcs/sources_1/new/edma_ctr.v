`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*
Company : Liyang Milian Electronic Technology Co., Ltd.
Brand: 米联客(msxbo)
Technical forum:uisrc.com
taobao: osrc.taobao.com
Create Date: 2019/02/27 22:09:55
Module Name: edma_ctr
Description: ddr image buf test
Copyright: Copyright (c) msxbo
Revision: 1.0
Signal description:?
1) _i input
2) _o output
3) _n activ low
4) _dg debug signal 
5) _r delay or register
6) _s state mechine
*/
// W0_in_FIFO------------->DDR---------------->R0_out_FIFO
////////////////////////////////////////////////////////////////////////////////
module edma_ctr#
(
    parameter  integer  ADDR_WIDTH = 29,
    parameter  integer  APP_DATA_WIDTH = 512,
    parameter  integer  ADDR_OFFSET = 0,
    parameter  integer  BUF_SIZE = 3,
    parameter  integer  WR_BURST_LEN = 80,//一次burst 40x512/32=640 个像素画 也就是一行数据   
    parameter  integer  RD_BURST_LEN = 80,//一次burst 40x512/32=640 个像素画 也就是一行数据   
    parameter  integer  IMG_H = 1280,         
    parameter  integer  IMG_V = 720        
)
(
	output      [ADDR_WIDTH - 1'b1:0]         app_addr,
	output      [2:0]       app_cmd,
	output                	app_en,
	output      [APP_DATA_WIDTH - 1'b1:0]     app_wdf_data,
	output             	    app_wdf_end,
	output                 	app_wdf_wren,
	input       [APP_DATA_WIDTH - 1'b1:0]     app_rd_data,
	input            	    app_rd_data_valid,
	input            	    app_rdy,
	input            	    app_wdf_rdy,
	input            	    ui_clk,
	input            	    ui_rstn_i,
	//Sensor video 640x480p -W0_FIFO
	input                   W0_fs_i,
	input                   W0_wclk_i,
	input                   W0_wren_i,
	input       [31:0]      W0_data_i,//rgb565
	//vga/hdmi output -R0_FIFO 
	input                   R0_fs_i,
	input                   R0_rclk_i,
	input                   R0_rden_i,
	output      [31:0]      R0_data_o
    );
localparam IMAGE_SIZE       = IMG_H*IMG_V*4;    
localparam W_BURST_TIMES    = IMAGE_SIZE/(WR_BURST_LEN*APP_DATA_WIDTH/8);   //180
localparam R_BURST_TIMES    = IMAGE_SIZE/(RD_BURST_LEN*APP_DATA_WIDTH/8);

localparam [2:0]S_MFIFO0    =3'd0;
localparam [2:0]S_MFIFO1    =3'd1;
localparam [2:0]S_DATA0     =3'd3;
localparam [2:0]S_DATA1     =3'd4;
localparam [2:0]S_DATA2     =3'd5;
localparam [2:0]S_WDATA     =3'd6;
localparam [2:0]S_RDATA     =3'd7;                    
 //-------------------------- 控制信息FIFO信号 ------------------------------//
reg       msg_wren=1'b0;
reg       msg_rden=1'b0;
reg  [7:0]msg_wdata=10'b0;
wire      msg_clk;
wire [7:0]msg_rdata;
wire      msg_full;  
wire [4:0]msg_dcnt;    
 //------------------------- W0写通道FIFO信号 ------------------------//

wire[511:0]W0_data_o;
wire[7:0]  W0_rcnt;
wire       W0_rclk_i;  
//------------------------- R0读通道 FIFO信号  --------------------------//    
wire[511:0]R0_data_i;
wire[7:0]  R0_rcnt;
wire       R0_wclk_i;    

//-------------------------- FIFO读写时钟处理 ----------------------------//
assign R0_wclk_i    =     ui_clk;
assign W0_rclk_i    =     ui_clk;
assign msg_clk      =     ui_clk;
        
wire  W0_fs_cap;
wire  R0_fs_cap;
        
fs_cap fs_cap_W0(.clk_i(ui_clk),.rstn_i(ui_rstn_i),.vs_i(W0_fs_i),.fs_cap_o(W0_fs_cap));
fs_cap fs_cap_R0(.clk_i(ui_clk),.rstn_i(ui_rstn_i),.vs_i(R0_fs_i),.fs_cap_o(R0_fs_cap));
                   
//-------------------------写控制信号进入MSG_FIFO--------------------------//
always@(posedge ui_clk)begin
    if(!ui_rstn_i)begin//--ddr校准完成--//    
         msg_wren    <=1'd0;
         msg_wdata    <=8'd0;
    end
    else begin
        msg_wren    <= W0_fs_cap || R0_fs_cap;
        msg_wdata   <={W0_fs_cap,1'b0,1'b0,1'b0,R0_fs_cap,1'b0,1'b0,1'b0};
    end
end
        
reg W0_REQ = 1'b0;
reg R0_REQ = 1'b0;
always@(posedge ui_clk)begin   
     W0_REQ    <= (W0_rcnt    >= WR_BURST_LEN-2 ); 
     R0_REQ    <= (R0_rcnt    <= RD_BURST_LEN-2 );
end        
 
reg  W0_FIFO_Rst=1'b1;    
reg  R0_FIFO_Rst=1'b1;         
reg  [2:0]M_S = 3'd0;      
reg  [7:0]rst_FIFO_cnt= 6'b0;  
reg  [7:0]count_rden  = 8'd0;
reg  [7:0]count_wren  = 8'd0;
        
//------------------------地址空间--------------------------//   
reg [11:0]wburst_cnt = 12'd0;
reg [11:0]rburst_cnt = 12'd0; 
reg [7 :0]R0_Fbuf   = 8'd0;//缓存切换高地址  
reg [7 :0]W0_Fbuf   = 8'd0;//缓存切换高地址  
reg [21:0]W0_addr   = 0;
reg [21:0]R0_addr   = 0;

//-------------------------------DDR接口-----------------------------------//
parameter [2:0]CMD_WRITE   =3'd0;//write cmd
parameter [2:0]CMD_READ    =3'd1;//read cmd
        
wire W0_rden_i;
wire R0_wren_i;  

assign    app_wdf_end   = app_wdf_wren;//两个相等即可
assign    app_en        = (M_S==S_WDATA) ? (app_rdy&app_wdf_rdy) : ((M_S==S_RDATA)&app_rdy);//控制命令使能
assign    app_cmd       = (M_S==S_WDATA) ? CMD_WRITE : CMD_READ;//控制命令
assign    app_addr      = (M_S==S_WDATA) ? ({1'b0,W0_Fbuf,W0_addr}+ ADDR_OFFSET) : ({1'b0,R0_Fbuf,R0_addr}+ ADDR_OFFSET);//读写地址切换
assign    app_wdf_data  = W0_data_o;//写入的数据是计数器
assign    app_wdf_wren  = (M_S==S_WDATA)&app_rdy&app_wdf_rdy;//写使能
assign    W0_rden_i     = app_wdf_wren; //W0-FIFO 读使能
assign    R0_data_i     = app_rd_data; // R0-FIFO 写入的数据
assign    R0_wren_i     = app_rd_data_valid;//R0-FIFO 写使能

always@(posedge ui_clk)begin
     if(!ui_rstn_i)begin
         M_S           <= S_MFIFO0;
         msg_rden      <= 1'd0;
         W0_FIFO_Rst   <= 1'd0;
         R0_FIFO_Rst   <= 1'd0;
         rst_FIFO_cnt  <= 8'd0;
         count_rden    <= 8'd0;
         count_wren    <= 8'd0;    
         W0_addr       <= 22'd0;
         R0_addr       <= 22'd0;   
         W0_Fbuf       <= 8'd0;
         R0_Fbuf       <= 8'd0; 
         wburst_cnt    <= 12'd0; 
         rburst_cnt    <= 12'd0;           
      end
      else case(M_S)
        //------------------------读取FIFO的控制信号-------------------------//
         S_MFIFO0:begin//--FIFO有数据就读取--//
            M_S             <=({msg_full,msg_dcnt}!=5'd0) ? S_MFIFO1 : S_DATA2; //都为0到S_DATA2即不需要读写命令
            msg_rden        <=({msg_full,msg_dcnt}!=5'd0);
            W0_FIFO_Rst     <=1'd0;
            R0_FIFO_Rst     <=1'd0;
            rst_FIFO_cnt    <=8'd0;
            count_rden      <=8'd0;
            count_wren      <=8'd0;
        end   
        S_MFIFO1:begin
            msg_rden        <= 1'b0;
            M_S             <= S_DATA0;       
        end
        //------------------------读取FIFO的控制信号-------------------------//      
         S_DATA0:begin//--相对地址处理 多缓存切换--//
            M_S             <= S_DATA1;
              if(msg_rdata[7])begin//wirte
                 wburst_cnt    <= 12'd0;
                 W0_addr <= 22'd0;
                 if(W0_Fbuf == (BUF_SIZE-1)) 
                     W0_Fbuf <= 0;
                 else 
                     W0_Fbuf <= W0_Fbuf + 1'b1;
              end
              if(msg_rdata[3])begin//read
                 rburst_cnt    <= 12'd0;
                 R0_addr <= 22'd0;
                 if(W0_Fbuf == 0)
                     R0_Fbuf <= (BUF_SIZE-1);
                 else
                     R0_Fbuf <= W0_Fbuf - 1'b1;
              end  
        end 
         S_DATA1:begin
            M_S             <= (rst_FIFO_cnt>=8'd100) ? S_DATA2 : M_S;
            R0_FIFO_Rst     <= (rst_FIFO_cnt<=8'd50)&&msg_rdata[3];
            W0_FIFO_Rst     <= (rst_FIFO_cnt<=8'd50)&&msg_rdata[7];
            rst_FIFO_cnt    <= rst_FIFO_cnt + 8'd1;
         end           
        //-------------------------状态机空闲状态--------------------------//
         S_DATA2:begin    
            count_rden        <=8'd0;
            count_wren        <=8'd0;
            casex({W0_REQ&1'b1,1'b0,1'b0,1'b0,R0_REQ&1'b1,1'b0,1'b0,1'b0})
                8'b1???_????:begin
                    if( wburst_cnt < W_BURST_TIMES) M_S  <= S_WDATA; //-ddr写数据-//  
                    else  M_S  <= S_MFIFO0;
                end   
                8'b0000_1000:begin
                    if( rburst_cnt < R_BURST_TIMES)M_S  <= S_RDATA; //-ddr读数据-//    
                    else  M_S  <= S_MFIFO0;
                end 
                default:       M_S  <= S_MFIFO0; 
            endcase
         end                    
        //-------------------------sdram读状态--------------------------//
         S_RDATA:begin //--读取数据--//        
            R0_addr         <= app_rdy ? (R0_addr+4'd8) : R0_addr ;//每次写入的数据地址
            count_rden      <= app_rdy ? count_rden+1'd1:count_rden;//count_rden用来标记一次burst的数据量
            if(app_rdy&&(count_rden==RD_BURST_LEN-1'b1))begin
               M_S <= S_MFIFO0;
               rburst_cnt <=  rburst_cnt + 1'b1;
            end
            else 
                M_S <= S_RDATA; 
         end
        //-------------------------sdram写状态--------------------------//
         S_WDATA:begin//--写入数据--//            
            W0_addr         <= app_rdy&&app_wdf_rdy ? (W0_addr+4'd8) : W0_addr ;//每次写入的数据地址
            count_wren      <= app_rdy&&app_wdf_rdy ? count_wren+1'd1:count_wren;//count_wren用来标记一次burst的数据量
            if(app_rdy&&(count_wren==WR_BURST_LEN-1'b1))begin
               M_S <= S_MFIFO0;
               wburst_cnt <=  wburst_cnt + 1'b1;
            end
            else 
                M_S <= S_WDATA; 
         end        
        default:begin
            M_S             <=S_MFIFO0;
            count_rden      <=8'd0;
            count_wren      <=8'd0;
        end    
        endcase                        
end
//----------------控制消息fifo接口--------------------//
ms_fifo ms_fifo_inst (
    .clk(msg_clk),    // input wire clk
    .din(msg_wdata), // input wire [9 : 0] din
    .wr_en(msg_wren), // input wire wr_en
    .rd_en(msg_rden), // input wire rd_en
    .dout(msg_rdata),// output wire [9 : 0] dout
    .full(msg_full),  // output wire full
    .empty(empty),         // output wire empty
    .data_count(msg_dcnt) // output wire [4 : 0] data_count
);
//----------------Sensor fifo接口--------------------//
wire W0_64_wren;
reg W0_64_wren_r1 = 1'b0;
reg W0_64_wren_r2 = 1'b0;
reg [63:0] W0_64_data_r;
wr_fifo wr_fifo_inst (
    .rst(W0_FIFO_Rst),  // input wire rst
    .wr_clk(W0_wclk_i), // input wire wr_clk
    .rd_clk(W0_rclk_i),// input wire rd_clk
    .din(W0_64_data_r), // input wire [31 : 0] din
    .wr_en(W0_64_wren), // input wire wr_en
    .rd_en(W0_rden_i), // input wire rd_en
    .dout(W0_data_o),  // output wire [255 : 0] dout
    .rd_data_count(W0_rcnt)  // output wire [7 : 0] rd_data_count
    );

assign W0_64_wren =  !W0_64_wren_r1 &&  W0_64_wren_r2;

always@(posedge W0_wclk_i)
    if(W0_FIFO_Rst)begin
        W0_64_wren_r1 <= 1'b0;
        W0_64_wren_r2 <= 1'b0;
        W0_64_data_r  <= 64'b0;
    end
    else begin
        W0_64_wren_r2 <= W0_64_wren_r1;
        W0_64_wren_r1 <= W0_wren_i ?  W0_64_wren_r1 + 1'b1 : W0_64_wren_r1;
        W0_64_data_r  <= W0_wren_i ? {W0_64_data_r[31:0],W0_data_i[31:0]} : W0_64_data_r;
    end
//----------------R0 fifo接口--------------------//
reg  R0_64_rden_i  = 1'b0;
wire [63:0]R0_64_data_o;
rd_fifo rd_fifo_inst (
    .rst(R0_FIFO_Rst),   // input wire rst
    .wr_clk(R0_wclk_i),   // input wire wr_clk
    .rd_clk(R0_rclk_i),   // input wire rd_clk
    .din(R0_data_i),      // input wire [255 : 0] din
    .wr_en(R0_wren_i),    // input wire wr_en
    .rd_en(R0_64_rden_i),    // input wire rd_en
    .dout(R0_64_data_o),     // output wire [31 : 0] dout
    .wr_data_count(R0_rcnt)  // output wire [7 : 0] wr_data_count
    );

always@(posedge R0_rclk_i)
    if(R0_FIFO_Rst)
        R0_64_rden_i <= 1'b0;
    else 
        R0_64_rden_i <= R0_rden_i ? R0_64_rden_i + 1'b1 : 1'b0;
assign  R0_data_o =  R0_64_rden_i ? R0_64_data_o[31:0] : R0_64_data_o[63:32];
//以下是debug信号 
/*
ila_0 debug_inst0 (
	.clk(W0_wclk_i), // input wire clk
	.probe0({W0_fs_i,W0_FIFO_Rst,W0_64_wren,W0_64_wren_r1,W0_64_wren_r2,W0_wren_i}), // input wire [255:0]  probe0  
	.probe1({W0_64_data_r,W0_data_i,wburst_cnt[9:0]}) // input wire [31:0]  probe1
);	

ila_1 debug_inst1 (
	.clk(R0_rclk_i), // input wire clk
	.probe0({R0_fs_i,R0_FIFO_Rst,R0_64_rden_i,R0_rden_i}), // input wire [255:0]  probe0  
	.probe1({R0_64_data_o,R0_data_o,rburst_cnt[9:0]}) // input wire [31:0]  probe1
);	
*/
endmodule
