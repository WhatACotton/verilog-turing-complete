module NOT_GATE(
     input wire       in0,
     output wire       out
);
    NAND_GATE NAND(
        .in0    (in0    ),
        .in1    (in0    ),
        .out    (out    )
    );
endmodule
