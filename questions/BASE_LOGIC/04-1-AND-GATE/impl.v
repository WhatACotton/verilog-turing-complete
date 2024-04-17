module AND_GATE(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    wire w_1;
    NAND_GATE NAND(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_1    )
    );

    NOT_GATE NOT(
        .in0    (w_1    ),
        .out    (out    )
    );
    
endmodule
