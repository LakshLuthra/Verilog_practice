module rc_add_sub_tb;
parameter n=4;
reg [n-1:0] a,b;
reg add_sub;
wire [n:0] y;

rc_add_sub #(n) dut(a,b,add_sub,y);

initial begin
    a=4'd12; b=4'd6; add_sub=0;
    #10 $display("inputs => a=%0d b=%0d add_sub=%0d; y = %0d",
                 a,b,add_sub,y);

    a=4'd12; b=4'd6; add_sub=1;
    #10 $display("inputs => a=%0d b=%0d add_sub=%0d; y = %0d",
                 a,b,add_sub,y);

    a=4'd6; b=4'd12; add_sub=1;
    #10 $display("inputs => a=%0d b=%0d add_sub=%0d; y = %0d",
                 a,b,add_sub,y);

    a=-4'd6; b=4'd12; add_sub=0;
    #10 $display("inputs => a=%0d b=%0d add_sub=%0d; y = %0d",
                 a,b,add_sub,y);

    a=4'd9; b=-4'd11; add_sub=1;
    #10 $display("inputs => a=%0d b=%0d add_sub=%0d; y = %0d",
                 a,b,add_sub,y);

    #10 $finish;
end

endmodule