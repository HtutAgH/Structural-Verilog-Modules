`timescale 1ns/1ps
module tb_Reg;
reg D, clk, EN, reset;
wire Q;

Reg_B uut(.D(D), .clk(clk), .EN(EN), .reset(reset), .Q(Q));

initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
reset = 0; EN = 0; D = 0;
#12 reset = 1;
#10 D = 1; EN = 1;
#10 EN = 0; D = 0;
#20 D = 1; EN = 1;
#10 $finish;
end
endmodule
