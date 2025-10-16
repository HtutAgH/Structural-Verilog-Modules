`timescale 1ns / 1ps
module tb_adder();
reg a,b,cin;
wire sum,cout;
OneBitFullAdder add(sum,cout,a,b,cin);
initial begin
a=0;b=0;cin=0;
#10 cin=1;
#10 b=1;cin=0;
#10 b=1;cin=1;
#10 a=1;b=0;cin=0;
#10 cin=1;
#10 b=1;cin=0;
#10 cin=1;
#10 $finish;
end
endmodule
