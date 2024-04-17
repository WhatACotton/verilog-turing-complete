
module SECOND_TICK_tb;

    reg in0 = 1'b0;
    reg in1 = 1'b0;

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, SECOND_TICK);
    end
    
    SECOND_TICK SECOND_TICK(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (out    )
    );

    initial begin
        in0 = 1'b0;
        in1 = 1'b0;
        #2
        in0 = 1'b1;
        in1 = 1'b0;
        #2
        in0 = 1'b0;
        in1 = 1'b1;
        #2
        in0 = 1'b1;
        in1 = 1'b1;
        #2
        $finish;
    end

endmodule