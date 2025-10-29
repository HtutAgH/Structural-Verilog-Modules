`timescale 1ps / 1ps
module tb_TwoBitRCA();

reg [1:0] a, b;
reg cin;
wire [1:0] sum;
wire cout;

TwoBitRCA dut(sum, cout, a, b, cin);

integer A, B;

initial begin
    cin = 0;
    for (B = 0; B < 4; B = B + 1) begin
        for (A = 0; A < 4; A = A + 1) begin
            a = A;
            b = B;
            #200;
            $display("A=%b B=%b Cin=%b => Sum=%b Cout=%b", a, b, cin, sum, cout);
        end
    end
    $finish;
end

endmodule
