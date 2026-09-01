`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2026 22:02:51
// Design Name: 
// Module Name: rc_add_sub
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

module rc_add_sub #(parameter n=4) (a,b,add_sub,y);

input [n-1:0] a,b;
input add_sub;
output [n:0] y;

wire [n:0] a1, b1;
wire [n:0] b1_x;
wire [n+1:0] sum;

assign a1 = {a[n-1],a};
assign b1 = {b[n-1],b};

genvar j;
generate
    for (j = 0; j < n+1; j=j+1) begin
        xor xor_1(b1_x[j], add_sub, b1[j]);
    end
endgenerate

RCA #(n+1) rca_1(a1,b1_x,add_sub,sum);

assign y = sum[n:0];

endmodule