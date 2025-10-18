`timescale 1ns / 1ps
module tb_FourBitsSubtractor();

reg [3:0] a, b;
wire [3:0] diff;
wire cout;

FourBitsSubtractor dut(diff, cout, a, b);

integer A, B;

initial begin
    for (B = 0; B < 16; B = B + 1) begin
        for (A = 0; A < 16; A = A + 1) begin
            a = A;
            b = B;
            #10;
            $display("A=%b B=%b => Diff=%b Cout=%b", a, b, diff, cout);
        end
    end
    $finish;
end

endmodule
