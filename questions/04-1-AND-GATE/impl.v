module AND_GATE(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    input wire       n_out;
    NAND_GATE AND(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (n_out    )
    );
    assign out = ~n_out;
endmodule

module AND_GATE_tb;

    reg in0 = 1'b0;
    reg in1 = 1'b0;

    initial begin
        $dumpfile("and_gate.vcd");
        $dumpvars(0, DUT);
    end
    
    AND_GATE DUT(
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