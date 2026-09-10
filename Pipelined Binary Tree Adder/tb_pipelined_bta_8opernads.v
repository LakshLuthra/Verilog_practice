`timescale 1ns / 1ps

module tb_pipelined_bta_8operands;
parameter N = 16;
reg clk = 1'b0;
reg rst;
reg [N-1:0] a1, a2, a3, a4, a5, a6, a7, a8;
wire [N+2:0] y;

pipelined_bta_8operands #(N) dut (
.clk(clk),.rst(rst),.a1(a1),.a2(a2),.a3(a3),
.a4(a4),.a5(a5),.a6(a6),.a7(a7),.a8(a8),.y(y));

always #5 clk = ~clk;
initial begin
rst = 1'b0;
#5 rst = 1'b1;
$monitor("Time=%0t | a1=%d a2=%d a3=%d a4=%d a5=%d a6=%d a7=%d a8=%d | y=%d",
$time, a1, a2, a3, a4, a5, a6, a7, a8, y);
#10; a1 = 0; a2 = 0; a3 = 0; a4 = 0; a5 = 0; a6 = 0; a7 = 0; a8 = 0;
#10; a1 = 1; a2 = 2; a3 = 3; a4 = 4; a5 = 5; a6 = 6; a7 = 7; a8 = 8;
#10; a1 = {N{1'b1}}; a2 = {N{1'b1}}; a3 = {N{1'b1}}; a4 = {N{1'b1}};
    a5 = {N{1'b1}}; a6 = {N{1'b1}}; a7 = {N{1'b1}}; a8 = {N{1'b1}};
#10; a1 = 10; a2 = 20; a3 = 30; a4 = 40; a5 = 50; a6 = 60; a7 = 70; a8 = 80;
#200 $stop;
end
endmodule