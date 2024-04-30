module ODD_TICKS(
        input wire clk,
        input wire rst,
        output wire o_data
);

    reg r_data;

    assign o_data = r_data;
    NOT_GATE NOT_GATE_0(
        .in0(r_data),
        .out(nr_data)
    );
    always @(posedge clk) begin
            if(rst) begin
                    r_data <= 1'b0;
            end else begin
                    r_data <= nr_data;
            end
    end
endmodule