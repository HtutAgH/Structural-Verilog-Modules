module Reg_S(input D, input clk, input EN, input reset, output Q);
wire w;
assign w = EN ? D : Q;
DFlipFlop_ALR d1(.D(w), .Clk(clk), .reset(reset), .Q(Q));
endmodule
