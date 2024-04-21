module FULL_ADDER_tb;

    reg in0 = 1'b0;
    reg in1 = 1'b0;
    reg in2 = 1'b0;
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end
    
    FULL_ADDER DUT(
        .in0    (in0    ),
        .in1    (in1    ),
        .in2    (in2    ),
        .out    (out    ),
        .cout   (cout   )
    );

    initial begin
        in0 = 1'b0;
        in1 = 1'b0;
        in2 = 1'b0;
        #2
        in0 = 1'b1;
        in1 = 1'b0;
        in2 = 1'b0;
        #2
        in0 = 1'b0;
        in1 = 1'b1;
        in2 = 1'b0;
        #2
        in0 = 1'b1;
        in1 = 1'b1;
        in2 = 1'b0;
        #2
        in0 = 1'b0;
        in1 = 1'b0;
        in2 = 1'b1;
        #2
        in0 = 1'b1;
        in1 = 1'b0;
        in2 = 1'b1;
        #2
        in0 = 1'b0;
        in1 = 1'b1;
        in2 = 1'b1;
        #2
        in0 = 1'b1;
        in1 = 1'b1;
        in2 = 1'b1;
        #2
        $finish;
    end

endmodule