module MUX(
    input wire clk,
     input wire swc,
     input wire [7:0] in0,
     input wire [7:0] in1,
     output reg [7:0] out
);
wire w_0;
wire [7:0]w_1;
wire [7:0]w_2;
NOT_GATE NOT(
    .in0    (swc    ),
    .out    (w_0    )
);

BYTE_SWITCH_GATE BYTE_SWITCH_GATE_0(
    .clk    (clk    ),
    .in0    (swc    ),
    .in1    (in0    ),
    .out    (w_1    )
);


BYTE_SWITCH_GATE BYTE_SWITCH_GATE_1(
    .clk    (clk    ),
    .in0    (w_0    ),
    .in1    (in1    ),
    .out    (w_2    )
);
always @(posedge clk) begin
      if (swc > 1'b0) begin
        assign out = w_1;
        end else begin
        assign out = w_2;
        end 
end

endmodule