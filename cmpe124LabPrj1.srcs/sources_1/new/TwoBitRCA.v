`timescale 1ps / 1ps
module TwoBitRCA(output [1:0] sum, output cout, input [1:0] a, b, input cin);
    wire c1;

    OneBitFullAdder fa0(sum[0], c1,   a[0], b[0], cin);
    OneBitFullAdder fa1(sum[1], cout, a[1], b[1], c1);
endmodule

