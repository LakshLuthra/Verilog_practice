module fa_tb;

reg a, b, cin;
wire cout, sum;

Full_Adder dut(a, b, cin, cout, sum);

initial begin
    {a,b,cin} = 3'd0;
    #10 $display("a=%b, b=%b, Cin=%b", a,b,cin);

    {a,b,cin} = 3'd1;
    #10 $display("a=%b, b=%b, Cin=%b", a,b,cin);

    {a,b,cin} = 3'd7;
    #10 $display("a=%b, b=%b, Cin=%b", a,b,cin);
    #10 $finish;
end

endmodule