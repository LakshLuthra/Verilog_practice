`timescale 1ns / 1ps
module signed_adder2 #(parameter N=8) 
(input signed [N-1:0]a,
input signed [N-1:0]b,
output signed [N:0]sum );

wire signed [N:0] a_ext, b_ext, result_ext;

assign a_ext= {a[N-1], a};
assign b_ext= {b[N-1], b};
assign result_ext= a_ext + b_ext;
assign sum= result_ext[N-1:0];
endmodule