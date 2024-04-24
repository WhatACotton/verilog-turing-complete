module BUS(
    input wire from,
    input wire to,
    input wire [7:0] in0,
    input wire [7:0] in1,
    output reg [7:0] out0,
    output reg [7:0] out1
);

wire nfrom;
wire nto;
wire [7:0]w_1;
wire [7:0]w_2;
NOT_GATE NOT(
    .in0    (from    ),
    .out    (nfrom    )
);

NOT_GATE NOT_1(
    .in0    (to    ),
    .out    (nto    )
);

BYTE_SWITCH_GATE BYTE_SWITCH_GATE_0(
    .in0    (from    ),
    .in1    (in0    ),
    .out    (w_0    )
);
BYTE_SWITCH_GATE BYTE_SWITCH_GATE_1(
    .in0    (nfrom    ),
    .in1    (in1    ),
    .out    (w_1    )
);
/* wire [7:0] w_0_0;
wire [7:0] w_0_1;
always @(posedge w_0) begin
      assign w_0_0 = w_0;
      assign w_0_1 = w_0;  
end
always @(posedge w_1) begin
     assign w_0_0 = w_1;
     assign w_0_1 = w_1;  
end
wire [7:0] w_1_0;
wire [7:0] w_1_1;
BYTE_SWITCH_GATE BYTE_SWITCH_GATE_2(
    .in0    (nto    ),
    .in1    (w_0_0    ),
    .out    (w_1_0    )
);
BYTE_SWITCH_GATE BYTE_SWITCH_GATE_3(
    .in0    (to    ),
    .in1    (w_0_1    ),
    .out    (w_1_1    )
);
always @(posedge to) begin
      assign out0 = w_0_0;
      assign out1 = 8'b00000000;  
end
always @(posedge nto) begin
        assign out0 = 8'b00000000;
      assign out1 = w_0_1;  
end */
endmodule