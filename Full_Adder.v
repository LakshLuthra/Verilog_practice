`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2026 22:02:20
// Design Name: 
// Module Name: Full_Adder
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

module Full_Adder(A, B, Cin, Cout, Sum);

input A, B, Cin;
output Cout, Sum;

assign Sum = A ^ B ^ Cin;
assign Cout = (A&B) | (B&Cin) | (Cin&A);

endmodule
