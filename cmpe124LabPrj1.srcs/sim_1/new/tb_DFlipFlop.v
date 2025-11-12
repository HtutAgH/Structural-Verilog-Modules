`timescale 1ns / 1ps
module tb_DFlipFlop();
reg D,Clk;
wire Q,Q_;
DFlipFlop tb(Q,Q_,D,Clk);
initial begin
D=0;Clk=0;
#10 D=1;Clk=0;
#10 D=1;Clk=1;
#10 D=0;Clk=1;
#10 D=0;Clk=0;
#10 D=1;Clk=1;
#10 D=0;Clk=0;
#10 D=0;Clk=1;
#10 $finish;
end
endmodule
