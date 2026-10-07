`timescale 1ns / 1ps

module tb_signed_multiplier;
parameter N=8;
reg signed [N-1:0]a;
reg signed [N-1:0]b;
wire signed [(2*N)-1:0]product;

signed_multiplier #(N) uut(a,b,product);

initial begin
$monitor("$time= %0t | a= %d b= %d | product= %d", $time, a, b, product);
a= 10; b= 20; #10;
a= -15; b= 5; #10;
a= -12; b= -12; #10;
a= 127; b= 2; #10;
a= -128; b= 2; #10;
#20 $finish;
end
endmodule