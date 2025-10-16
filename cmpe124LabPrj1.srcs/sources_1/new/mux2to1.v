module mux2to1(output y, input d0,d1,sel);
wire nsel, A_sel, B_sel;
not(nsel, sel);
and(A_sel,sel,d0);
and(B_sel,nsel,d1);
or(y,A_sel,B_sel);
endmodule
