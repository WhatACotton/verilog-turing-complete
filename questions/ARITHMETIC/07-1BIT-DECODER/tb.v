
module ONE_BIT_DECODER_tb;

    reg in0 = 1'b0;
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end
    
    ONE_BIT_DECODER DUT(
        .in0    (in0    ),
        .out0    (out0    ),
        .out1   (out1  )
    );

    initial begin
        in0 = 1'b0;
        #2
        in0 = 1'b1;
        #2
        $finish;
    end

endmodule