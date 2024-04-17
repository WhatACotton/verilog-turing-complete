module NOT_GATE(
     input wire       in0,
     output wire       out
);
    wire in1;
    NAND_GATE NAND(
        .in0    (in0    ),
        .in1    (in0    ),
        .out    (out    )
    );
endmodule

module NOT_GATE_tb;

    reg in0 = 1'b0;
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end
    
    NOT_GATE DUT(
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