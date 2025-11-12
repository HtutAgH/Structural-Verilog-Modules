`timescale 1ns / 1ps
module tb_DFF_alr();
reg Clk,reset,D;
wire Q;
DFlipFlop_ALR tb(Q,D,Clk,reset);
initial begin
    Clk = 0; forever #5 Clk = ~Clk;
end
initial begin
    reset = 0; D = 0; #10 reset = 1;
    D = 0; forever #5 D=~D;
    #100 $finish;
end
endmodule
