`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2026 14:06:19
// Design Name: 
// Module Name: bta_8operands
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
module bta_8operands #(parameter n=16)(a1,a2,a3,a4,a5,a6,a7,a8,y);
input [n-1:0] a1,a2,a3,a4,a5,a6,a7,a8;
output [n+2:0] y;

wire [n:0] y0,y1,y2,y3;
wire [n+1:0] y4,y5;

assign y0=a1+a2;
assign y1=a3+a4;
assign y2=a5+a6;
assign y3=a7+a8;

assign y4=y0+y1;
assign y5=y2+y3;

assign y=y4+y5;
endmodule