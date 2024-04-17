module ODD_NUMBER_OF_SIGNALS_tb;

    reg in0 = 1'b0;
    reg in1 = 1'b0;
    reg in2 = 1'b0;
    reg in3 = 1'b0;

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end
    
    ODD_NUMBER_OF_SIGNALS DUT(
        .in0    (in0    ),
        .in1    (in1    ),
        .in2    (in2    ),
        .in3    (in3    ),
        .out    (out    )
    );

    initial begin
        in0 = 1'b0;
        in1 = 1'b0;
        in2 = 1'b0;
        in3 = 1'b0;
        #2
        in0 = 1'b1;
        in1 = 1'b0;
        in2 = 1'b0;
        in3 = 1'b0;
        #2
        in0 = 1'b0;
        in1 = 1'b1;
        in2 = 1'b0;
        in3 = 1'b0;
        #2
        in0 = 1'b1;
        in1 = 1'b1;
        in2 = 1'b0;
        in3 = 1'b0;
        #2
        in0 = 1'b0;
        in1 = 1'b0;
        in2 = 1'b1;
        in3 = 1'b0;
        #2
        in0 = 1'b1;
        in1 = 1'b0;
        in2 = 1'b1;
        in3 = 1'b0;
        #2
        in0 = 1'b0;
        in1 = 1'b1;
        in2 = 1'b1;
        in3 = 1'b0;
        #2
        in0 = 1'b1;
        in1 = 1'b1;
        in2 = 1'b1;
        in3 = 1'b0;
        #2
        in0 = 1'b0;
        in1 = 1'b0;
        in2 = 1'b0;
        in3 = 1'b1;
        #2
        in0 = 1'b1;
        in1 = 1'b0;
        in2 = 1'b0;
        in3 = 1'b1;
        #2
        in0 = 1'b0;
        in1 = 1'b1;
        in2 = 1'b0;
        in3 = 1'b1;
        #2
        in0 = 1'b1;
        in1 = 1'b1;
        in2 = 1'b0;
        in3 = 1'b1;
        #2
        in0 = 1'b0;
        in1 = 1'b0;
        in2 = 1'b1;
        in3 = 1'b1;
        #2
        in0 = 1'b1;
        in1 = 1'b0;
        in2 = 1'b1;
        in3 = 1'b1;
        #2
        in0 = 1'b0;
        in1 = 1'b1;
        in2 = 1'b1;
        in3 = 1'b1;
        #2
        in0 = 1'b1;
        in1 = 1'b1;
        in2 = 1'b1;
        in3 = 1'b1;
        #2
        $finish;
    end

endmodule