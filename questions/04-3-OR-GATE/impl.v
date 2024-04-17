module OR_GATE(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    wire n_out;
    wire n_in0;
    wire n_in1;
    assign n_in0 = ~in0;
    assign n_in1 = ~in1;

    NAND_GATE NAND(
        .in0    (n_in0    ),
        .in1    (n_in1    ),
        .out    (n_out    )
    );
    assign out = n_out;
endmodule

module OR_GATE_tb;

    reg in0 = 1'b0;
    reg in1 = 1'b0;

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, OR);
    end
    
    OR_GATE OR(
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