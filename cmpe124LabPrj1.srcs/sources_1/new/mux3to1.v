module mux3to1(output y, input A,B,C,sel0,sel1);
wire nsel0,nsel1, A_, B_,C_;
not(nsel0, sel0);
not(nsel1, sel1);
and(A_,nsel0,nsel1,A);
and(B_,sel0,nsel1,B);
and(C_,sel1,C);
or(y,A_,B_,C_);
endmodule
