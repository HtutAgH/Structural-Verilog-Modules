module Counter4bit(output [3:0] Q, input Reset, Count, Clk);

wire [3:0] nextCount;
wire [3:0] muxOut;
wire cout;

FourBitsRCA RCA0(nextCount, cout, Q, 4'b0001, 1'b0);

mux2to1 M0(muxOut[0], Q[0], nextCount[0], Count);
mux2to1 M1(muxOut[1], Q[1], nextCount[1], Count);
mux2to1 M2(muxOut[2], Q[2], nextCount[2], Count);
mux2to1 M3(muxOut[3], Q[3], nextCount[3], Count);

wire qb0, qb1, qb2, qb3;

DFlipFlop FF0(Q[0], qb0, muxOut[0], Clk, Reset);
DFlipFlop FF1(Q[1], qb1, muxOut[1], Clk, Reset);
DFlipFlop FF2(Q[2], qb2, muxOut[2], Clk, Reset);
DFlipFlop FF3(Q[3], qb3, muxOut[3], Clk, Reset);

endmodule
