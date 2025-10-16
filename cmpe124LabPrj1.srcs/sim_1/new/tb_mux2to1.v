`timescale 1ns / 1ps
module tb_mux2to1();
reg A,B,sel;
wire y;
mux2to1 mux(y,A,B,sel);
initial begin
A=0;B=0;sel=0;
#10 A=0;B=1;sel=1;
#10 sel=0;
#10 A=1;B=0;sel=1;
#10 sel=0;
#10 $finish;
end
endmodule