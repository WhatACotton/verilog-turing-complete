module BIT_INVERTER(
     input wire       in0,
     input wire       in1,
     output wire       out
);

    NOT_GATE NOT0(
        .in0     (in0    ),
        .out    (w_0    )
    );
    NOT_GATE NOT1(
        .in0     (in1    ),
        .out    (w_1    )
    );

    SWITCH_GATE SWC0(
        .in0    (w_0    ),
        .in1    (in1    ),
        .out    (w_2    )
    );

    SWITCH_GATE SWC1(
        .in0    (w_1    ),
        .in1    (in0    ),
        .out    (w_3    )
    );
    OR_GATE OR(
        .in0    (w_2    ),
        .in1    (w_3    ),
        .out    (out    )
    );
endmodule
