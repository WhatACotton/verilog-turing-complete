module DOUBLE_THE_NUMBER(
     input wire       clk,
     input wire [7:0] in0,
     output wire [7:0] out
);
        assign out[0] = 1'b0;
        assign out[1] = in0[0];
        assign out[2] = in0[1];
        assign out[3] = in0[2];
        assign out[4] = in0[3];
        assign out[5] = in0[4];
        assign out[6] = in0[5];
        assign out[7] = in0[6];
   
endmodule