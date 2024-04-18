module HALF_ADDER(
     input wire       in0,
     input wire       in1,
     output wire       out,
     output wire       car
);
    wire w_0;
    wire w_1;
    XOR_GATE XOR(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (out    )
    );
    AND_GATE AND(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (car    )
    );
    
endmodule
