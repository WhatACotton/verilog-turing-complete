module MEMORY(
    input wire clk,
     input wire       save,
     input wire         enable,
     output wire       out
);
    SWITCH_GATE SWC0(
        .in0    (save    ),
        .in1    (enable    ),
        .out    (w_0    )
    );
    DELAY DELAY0(
        .clk    (clk    ),
        .in    (w_0    ),
        .out    (out    )
    );
endmodule
