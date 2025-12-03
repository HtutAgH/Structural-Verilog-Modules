module OneBitFullAdder(output sum, output cout, input a, b, cin);
    wire w1, w2, w3;

    xor(w1, a, b);
    xor(sum, w1, cin);
    and(w2, a, b);
    and(w3, w1, cin);
    or(cout, w2, w3);
endmodule
