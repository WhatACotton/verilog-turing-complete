module BUS(
    input wire clk,
    input wire from,
    input wire to,
    input wire [7:0] in0,
    input wire [7:0] in1,
    output wire [7:0] out0,
    output wire [7:0] out1
);

wire nfrom;
wire nto;
wire [7:0]w_0;
wire [7:0]w_1;
wire [7:0]w_2;

NOT_GATE NOT_1(
    .in0    (to    ),
    .out    (nto    )
);

MUX MUX0(
    .clk    (clk    ),
    .swc (from),
    .in0 (in0),
    .in1 (in1),
    .out (w_0)
);

BYTE_SWITCH_GATE SWC0(
    .clk    (clk    ),
    .in0 (to),
    .in1(w_0),
    .out(out0)
);

BYTE_SWITCH_GATE SWC1(
    .clk    (clk    ),
    .in0 (nto),
    .in1(w_0),
    .out(out1)
);
endmodule