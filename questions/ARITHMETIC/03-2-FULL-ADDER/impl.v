module FULL_ADDER(
     input wire       in0,
     input wire       in1,
     input wire       in2,
     output wire [1:0]      out
);
    wire w_0;
    wire w_1;
    wire w_2;
    XOR_GATE XOR0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_0    )
    );
    XOR_GATE XOR1(
        .in0    (w_0    ),
        .in1    (in2    ),
        .out    (out[0]    )
    );
    AND_GATE AND0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_1    )
    );
    AND_GATE AND1(
        .in0    (w_0    ),
        .in1    (in2    ),
        .out    (w_2    )
    );
    OR_GATE OR0(
        .in0    (w_1    ),
        .in1    (w_2    ),
        .out    (out[1]    )
    );
    
endmodule
