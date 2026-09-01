`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2026 22:02:35
// Design Name: 
// Module Name: RCA
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

module RCA #(parameter N = 4) (A, B, Cin, Sum);

input [N-1:0] A, B;
input Cin;
output [N:0] Sum;
wire [N:0] carry;

assign carry[0] = Cin;

genvar i;
generate
    for (i = 0; i < N; i = i + 1) begin : FA_GEN
        Full_Adder fa(A[i], B[i], carry[i], carry[i+1], Sum[i]);
    end
endgenerate

assign Sum[N] = carry[N];
endmodule
