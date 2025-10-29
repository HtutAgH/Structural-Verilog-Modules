`timescale 1ps / 1ps
module OneBitFullAdder(output sum, cout, input a, b, cin);
    wire a_, b_, cin_;
    
    not #(10) n1(a_, a);
    not #(10) n2(b_, b);
    not #(10) n3(cin_, cin);

    wire m1, m2, m3, m4;
    and #(50) a1(m1, a_, b_, cin);
    and #(50) a2(m2, a_, b, cin_);
    and #(50) a3(m3, a, b_, cin_);
    and #(50) a4(m4, a, b, cin);
    or  #(50) o1(sum, m1, m2, m3, m4);

    wire M1, M2, M3;
    and #(50) a5(M1, a, b);
    and #(50) a6(M2, a, cin);
    and #(50) a7(M3, b, cin);
    or  #(50) o2(cout, M1, M2, M3);
endmodule
