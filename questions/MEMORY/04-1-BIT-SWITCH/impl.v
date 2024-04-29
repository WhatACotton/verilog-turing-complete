module BIT_INVERTER(
     input wire       in0,
     input wire       in1,
     output reg       out
);
wire w_0;
wire w_1;
wire w_2;
wire w_3;
    NOT_GATE NOT0(
        .in0     (in0    ),
        .out    (w_0    )
    );
    NOT_GATE NOT1(
        .in0    (in1    ),
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
always @(posedge w_0) begin
    assign out = w_2;
end
always @(posedge w_1) begin
    assign out = w_3;
end
endmodule
