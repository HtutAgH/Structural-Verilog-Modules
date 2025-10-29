`timescale 1ns / 1ps
module tb_RCA();
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    FourBitsRCA tb(sum, cout, a, b, cin);

    initial begin
        cin = 0;
        for (integer B = 0; B < 16; B = B + 1) begin
            for (integer A = 0; A < 16; A = A + 1) begin
                a = A; b = B;
                #10;
                $display("A=%b B=%b Cin=%b => Sum=%b Cout=%b",
                          a, b, cin, sum, cout);
            end
        end
        $finish;
    end
endmodule
