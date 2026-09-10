`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 14:15:50
// Design Name: 
// Module Name: pipelined_bta_8operands
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module pipelined_bta_8operands #(parameter n=16)
(clk,rst,a1,a2,a3,a4,a5,a6,a7,a8,y);
input clk,rst;
input [n-1:0] a1,a2,a3,a4,a5,a6,a7,a8;
output [n+2:0] y;
wire [n:0] y0,y1,y2,y3;
wire [n:0] yd0,yd1,yd2,yd3;
wire [n+1:0] y4,y5;
wire [n+1:0] yd4,yd5;

assign y0= a1+a2;
assign y1= a3+a4;
assign y2= a5+a6;
assign y3= a7+a8;
pipo_reg #(.N(n+1)) pipo_1(.clk(clk),.rst(rst),.d(y0),.q(yd0));
pipo_reg #(.N(n+1)) pipo_2(.clk(clk),.rst(rst),.d(y1),.q(yd1));
pipo_reg #(.N(n+1)) pipo_3(.clk(clk),.rst(rst),.d(y2),.q(yd2));
pipo_reg #(.N(n+1)) pipo_4(.clk(clk),.rst(rst),.d(y3),.q(yd3));

assign y4= yd0+yd1;
assign y5= yd2+yd3;
pipo_reg #(.N(n+2)) pipo_5(.clk(clk),.rst(rst),.d(y4),.q(yd4));
pipo_reg #(.N(n+2)) pipo_6(.clk(clk),.rst(rst),.d(y5),.q(yd5));

assign y= yd4+yd5;
endmodule
