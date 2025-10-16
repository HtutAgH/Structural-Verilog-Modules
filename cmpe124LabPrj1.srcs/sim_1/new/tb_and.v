`timescale 1ns / 1ps
module tb_and();
reg a,b;
wire y;
and_gate uut(y,a,b);
initial begin
$monitor("t-%0t a=%b b=%b y=%b",$time, a, b, y);
a=0;b=0;
#10 b=1;
#10 a=1;b=0;
#10 b=1;
#10 $finish;
end
endmodule
