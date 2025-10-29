`timescale 1ps / 1ps
module tb_adder();
reg a,b,cin;
wire sum,cout;
OneBitFullAdder add(sum,cout,a,b,cin);
initial begin
a=0;b=0;cin=0;
#100 a=0;b=0;cin=1;
#100 a=0;b=1;cin=0;
#100 a=0;b=1;cin=1;
#100 a=1;b=0;cin=0;
#100 a=1;b=0;cin=1;
#100 a=1;b=1;cin=0;
#100 a=1;b=1;cin=1;
#100 $finish;
end
endmodule

