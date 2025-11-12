module DFlipFlop(output Q, Q_, input D,Clk);
wire S,R,D_;

not n0(D_,D);
nand n1(S,D,Clk);
nand n2(R,D_,Clk);
nand n3(Q,S,Q_);
nand n4(Q_,R,Q);

endmodule
