module FourBitsSubtractor(output [3:0] diff, output cout, input [3:0] a, b);

wire [3:0] b_;
wire cin=1;      

not (b_[0], b[0]);
not (b_[1], b[1]);
not (b_[2], b[2]);
not (b_[3], b[3]);

FourBitsRCA adder(diff, cout, a, b_, cin);

endmodule
