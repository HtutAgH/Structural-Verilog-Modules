`timescale 1ns / 1ps
module tb_or();
reg a,b;
wire y,x;
or_gate aab(y,a,b);
and_gate bbb(x,a,b);
initial begin
$monitor("t-%0t a=%b b=%b y=%b x=%b",$time, a, b, y, x);
a=0;b=0;
#10 b=1;
#10 a=1;b=0;
#10 b=1;
#10 $finish;
end
endmodule
