`timescale 1ns / 1ps
module signed_multiplier #(parameter N=8)
(input signed [N-1:0]a,
input signed [N-1:0]b,
output signed [(2*N)-1:0]product );
assign product= a*b;
endmodule