module CRUDE_AWAKENING_tb;

    reg in0 = 1'b0;

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end

    CRUDE_AWAKENING DUT(
        .in0    (in0    ),
        .out    (out    )
    );

    initial begin
        in0 = 1'b0;
        #2
        in0 = 1'b1;
        #2
        $finish;
    end

endmodule