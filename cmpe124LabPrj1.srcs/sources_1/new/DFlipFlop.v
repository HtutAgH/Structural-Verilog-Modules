module DFlipFlop(output reg Q, output Qbar,
                 input D, Clk, Reset);

    assign Qbar = ~Q;

    always @(posedge Clk or negedge Reset) begin
        if (!Reset)
            Q <= 1'b0;      // clear when Reset = 0
        else
            Q <= D;         // otherwise follow D
    end
endmodule
