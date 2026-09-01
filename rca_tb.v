`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2026 22:03:28
// Design Name: 
// Module Name: rca_tb
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

module rca_tb;
parameter n = 4;
reg [n-1:0] a, b;
reg cin;
wire [n:0] sum;

RCA #(n) rca_dut(a, b, cin, sum);

initial begin
    a = 4'd12; b = 4'd6; cin = 0;
    #10 $display("inputs => a=%0d b=%0d cin=%0d; sum = %0d",
                 a, b, cin, sum);

    a = 4'd10; b = 4'd6; cin = 0;
    #10 $display("inputs => a=%0d b=%0d cin=%0d; sum = %0d",
                 a, b, cin, sum);

    a = 4'd5; b = 4'd6; cin = 1;
    #10 $display("inputs => a=%0d b=%0d cin=%0d; sum = %0d",
                 a, b, cin, sum);

    #10 $finish;
end

endmodule