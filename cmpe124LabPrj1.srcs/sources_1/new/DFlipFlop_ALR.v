module DFlipFlop_ALR(output reg Q, input D,Clk,reset);
always @(posedge Clk or negedge reset) begin
    if (!reset)
        Q <= 0;
    else
        Q <= D;
end 
endmodule
