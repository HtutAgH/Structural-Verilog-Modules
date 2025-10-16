module OneBitFullAdder(output sum,cout, input a,b,cin);
wire a_,b_,cin_;
not(a_,a);
not(b_,b);
not(cin_,cin);

//SOP for sum
wire m1,m2,m3,m4;
and(m1,a_,b_,cin);
and(m2,a_,b,cin_);
and(m3,a,b_,cin_);
and(m4,a,b,cin);
or(sum,m1,m2,m3,m4);

//SOP for cout
wire M1,M2,M3;
and(M1,a,b);
and(M2,a,cin);
and(M3,b,cin);
or(cout,M1,M2,M3);

endmodule
