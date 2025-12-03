module FourBitsRCA(output [3:0] sum, output cout,
                   input  [3:0] a, b,
                   input cin);

    wire c1, c2, c3;

    OneBitFullAdder FA0(sum[0], c1, a[0], b[0], cin);
    OneBitFullAdder FA1(sum[1], c2, a[1], b[1], c1);
    OneBitFullAdder FA2(sum[2], c3, a[2], b[2], c2);
    OneBitFullAdder FA3(sum[3], cout, a[3], b[3], c3);
endmodule
