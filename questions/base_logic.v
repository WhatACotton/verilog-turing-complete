module CRUDE_AWAKENING(
     input wire       in0,
     output wire       out
);
    assign out = in0;
endmodule

module NAND_GATE(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    assign out = ~ ( in0 & in1 );
endmodule

module NOT_GATE(
     input wire       in0,
     output wire       out
);
    NAND_GATE NAND(
        .in0    (in0    ),
        .in1    (in0    ),
        .out    (out    )
    );
endmodule

module AND_GATE(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    wire w_1;
    NAND_GATE NAND(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_1    )
    );

    NOT_GATE NOT(
        .in0    (w_1    ),
        .out    (out    )
    );
    
endmodule

module NOR_GATE(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    wire w_0;
    wire w_1;
    wire n_out;
    NOT_GATE NOT0(
        .in0    (in0    ),
        .out    (w_0    )
    );
    NOT_GATE NOT1(
        .in0    (in1    ),
        .out    (w_1    )
    );
    NAND_GATE NAND(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .out    (n_out    )
    );
    NOT_GATE NOT(
        .in0    (n_out    ),
        .out    (out    )
    );
endmodule

module OR_GATE(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    wire w_0;
    wire w_1;
    NOT_GATE NOT0(
        .in0    (in0    ),
        .out    (w_0    )
    );
    NOT_GATE NOT1(
        .in0    (in1    ),
        .out    (w_1    )
    );
    NAND_GATE NAND(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .out    (out    )
    );
endmodule

module ALWAYS_ON_GATE(
     input wire       in0,
     output wire       out
);
    wire w_1;
    NOT_GATE NOT(
        .in0    (in0    ),
        .out    (w_1    )
    );
    OR_GATE OR(
        .in0    (in0    ),
        .in1    (w_1    ),
        .out    (out    )
    );
endmodule

module SECOND_TICK(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    wire w_0;
    wire n_out;
    NOT_GATE NOT(
        .in0    (in1    ),
        .out    (w_0    )
    );
    AND_GATE AND(
        .in0    (w_0    ),
        .in1    (in0    ),
        .out    (out    )
    );
endmodule

module XOR_GATE(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    wire w_0;
    wire w_1;
    
    NOR_GATE NOR0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_0    )
    );

    AND_GATE AND(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_1    )
    );
    NOR_GATE NOR1(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .out    (out    )
    );

    
endmodule

module BIGGER_OR_GATE(
     input wire       in0,
     input wire       in1,
     input wire       in2,
     output wire       out
);
    wire w_0;
    wire w_1;
    
    OR_GATE OR0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_0    )
    );

    OR_GATE OR1(
        .in0    (in1    ),
        .in1    (in2    ),
        .out    (w_1    )
    );
    OR_GATE OR2(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .out    (out    )
    );

    
endmodule

module BIGGER_AND_GATE(
     input wire       in0,
     input wire       in1,
     input wire       in2,
     output wire       out
);
    wire w_0;
    wire w_1;
    
    AND_GATE AND0(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (w_0    )
    );

    AND_GATE AND1(
        .in0    (in1    ),
        .in1    (in2    ),
        .out    (w_1    )
    );
    AND_GATE AND2(
        .in0    (w_0    ),
        .in1    (w_1    ),
        .out    (out    )
    );

endmodule

module XNOR_GATE(
     input wire       in0,
     input wire       in1,
     output wire       out
);
    wire n_out;
    XOR_GATE XOR(
        .in0    (in0    ),
        .in1    (in1    ),
        .out    (n_out    )
    );
    NOT_GATE NOT(
        .in0    (n_out    ),
        .out    (out    )
    );
endmodule

module SWITCH_GATE(
    input wire clk,
    input wire in0,
    input wire in1,
    output reg out
);

initial @ (posedge clk) begin
    if (in0 > 1'b0) begin
    assign out = in1;
    end else begin
    assign out = 1'b0;
    end
end

endmodule

module BYTE_SWITCH_GATE(
    input wire clk,
    input wire in0,
    input wire [7:0] in1,
    output reg [7:0] out
);
always @(posedge clk) begin
     if(in0>1'b0) begin 
        assign out = in1;
    end else begin
        assign out = 8'b00000000;
    end
end

endmodule
