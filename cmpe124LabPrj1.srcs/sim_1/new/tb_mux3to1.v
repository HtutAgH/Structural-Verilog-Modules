`timescale 1ns / 1ps
module tb_mux3to1();
reg A,B,C,sel0,sel1;
wire y;
mux3to1 mux0(y,A,B,C,sel0,sel1);
initial begin
A=0;B=0;C=0;sel0=0;sel1=0;
#10 A=1;B=0;C=0;
#10 sel0=1;
#10 B=1;
#10 A=0;C=1;sel0=1;sel1=1;
#10 sel0=0;
#10 $finish;
end
endmodule