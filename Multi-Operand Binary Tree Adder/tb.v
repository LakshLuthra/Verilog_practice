`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2026 14:11:22
// Design Name: 
// Module Name: tb
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
module tb_bta_8operands;
parameter n = 16;
reg  [n-1:0] a1, a2, a3, a4, a5, a6, a7, a8;
wire [n+2:0] y;

bta_8operands #(n) dut (
    .a1(a1),.a2(a2),.a3(a3),.a4(a4),
    .a5(a5),.a6(a6),.a7(a7),.a8(a8),
    .y(y)
);

initial begin
    $monitor("Time=%0t | a1=%d a2=%d a3=%d a4=%d a5=%d a6=%d a7=%d a8=%d | Y=%d",
             $time, a1,a2,a3,a4,a5,a6,a7,a8,y);
    #10;
    a1=0; a2=0; a3=0; a4=0;
    a5=0; a6=0; a7=0; a8=0;

    #10;
    a1=1; a2=2; a3=3; a4=4;
    a5=5; a6=6; a7=7; a8=8;

    #10;
    a1={n{1'b1}};
    a2={n{1'b1}};
    a3={n{1'b1}};
    a4={n{1'b1}};
    a5={n{1'b1}};
    a6={n{1'b1}};
    a7={n{1'b1}};
    a8={n{1'b1}};

    #10;
    a1=10; a2=20; a3=30; a4=40;
    a5=50; a6=60; a7=70; a8=80;

    #10 $finish;
end
endmodule
