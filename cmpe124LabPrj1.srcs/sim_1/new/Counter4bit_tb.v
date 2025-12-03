module Counter4bit_tb;

    reg Reset, Count, Clk;
    wire [3:0] Q;

    Counter4bit dut(
        .Q(Q),
        .Reset(Reset),
        .Count(Count),
        .Clk(Clk)
    );

    initial begin
        Clk = 0;
        forever #5 Clk = ~Clk;
    end

    initial begin
        Reset = 0; Count = 0; #20;   // hold in reset
        Reset = 1; Count = 1; #100;  // count up
        Count = 0;             #40;  // hold
        Count = 1;             #60;  // count more
        Reset = 0;             #20;  // clear again
        Reset = 1; Count = 1;  #80;  // count again
        $stop;
    end

endmodule
