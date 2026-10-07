`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2026 14:16:37
// Design Name: 
// Module Name: tb_signed_adder
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

module tb_signed_adder;
parameter N= 8;
reg signed [N-1:0]a,b;
wire signed [N:0] sum;
signed_adder2 #(.N(N)) uut(.a(a),.b(b),.sum(sum));

initial begin
$monitor("t=%0t | a=%d b=%d | sum=%d", $time, a, b, sum);
a= 10; b= 20; #10;
a= -50; b= -20; #10;
a= 100; b= 30; #10;
a= -128; b= -1; #10;
a= 127; b= 1; #10;
#20 $finish;
end
endmodule
