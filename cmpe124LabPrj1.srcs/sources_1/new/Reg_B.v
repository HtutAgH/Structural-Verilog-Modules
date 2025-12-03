module Reg_B(input D, input clk, input EN, input reset, output reg Q);
always @(posedge clk or negedge reset)
if(!reset) Q <= 0;
else if(EN) Q <= D;
endmodule

