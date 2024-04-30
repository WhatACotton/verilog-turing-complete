module DELAY(
        input wire clk,
        input wire rst,
        input wire i_data,
        output wire o_data
);

        reg r_data;

        assign o_data = r_data;

        always @(posedge clk) begin
                if(rst) begin
                        r_data <= 1'b0;
                end else begin
                        r_data <= i_data;
                end
        end

endmodule
module DELAY_LINES (
    input wire clk,
     input wire       in0,
     output wire       out
);
DELAY DELAY_0(
    .clk(clk),
    .rst(1'b0),
    .i_data(in0),
    .o_data(w_0)
);
DELAY DELAY_1(
    .clk(clk),
    .rst(1'b0),
    .i_data(w_0),
    .o_data(out)
);

endmodule
