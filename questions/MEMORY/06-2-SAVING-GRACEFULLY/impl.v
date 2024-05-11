module MEMORY(
    input wire clk,
    input wire rst,
     input wire       save,
     input wire         value,
     output wire       out
);
    SWITCH_GATE SWC0(
        .clk(clk),
        .in0    (save    ),
        .in1    (value    ),
        .out    (w_1    )
    );
    NOT_GATE NOT0(
        .in0    (save    ),
        .out    (nsave    )
    );
    OR_GATE OR0(
        .in0    (w_1    ),
        .in1    (w_0    ),
        .out    (w_2    )
    );
    DELAY DELAY0(
        .clk    (clk    ),
        .rst    (rst    ),
        .i_data    (w_2    ),
        .o_data    (w_3    )
    );
    SWITCH_GATE SWC1(
        .clk(clk),
        .in0    (nsave    ),
        .in1    (w_3    ),
        .out    (w_0    )
    );
assign out = w_3;
endmodule
