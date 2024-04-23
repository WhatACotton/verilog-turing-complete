module BIT_INVERTER(
     input wire       in0,
     input wire       in1,
     output wire       out
);

    XOR_GATE XOR(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (out    )
    );
    
endmodule
