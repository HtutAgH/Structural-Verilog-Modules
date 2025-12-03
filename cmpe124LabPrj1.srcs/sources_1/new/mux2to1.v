module mux2to1(output y, input d0, d1, sel);
    assign y = sel ? d1 : d0;  // sel=0 -> d0, sel=1 -> d1
endmodule
