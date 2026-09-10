`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2026 14:25:33
// Design Name: 
// Module Name: tb_pipo_reg
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

module tb_pipo_reg();
parameter N=8;
reg clk;
reg rst;
reg [N-1:0] d;
wire [N-1:0] q;
pipo_reg #(.N(N)) uut(clk,rst,d,q);

always #5 clk= ~clk;
initial begin
clk = 0;
rst = 0;
d = 0;
#12; rst = 1;
#10 d= 8'hA5;
#10 d= 8'h3C;
#10 d= 8'hFF;
#10 d= 8'h00;
#20 $finish;
end
endmodule
