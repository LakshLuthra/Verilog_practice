`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2026 14:07:50
// Design Name: 
// Module Name: signed_adder
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

module signed_adder #(parameter N=8) 
(input signed [N-1:0]a,
input signed [N-1:0]b,
output signed [N:0]sum );

assign sum = a+b;
endmodule
