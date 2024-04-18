module Basic_count_tb;

  reg r_a = 2'b00;
  wire  [15:0] out;

  count count(
    .in0(r_a),
    .out(out)
  );

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, Basic_count_tb);

    r_a = 1'b1;
    #2;
    $finish;
  end

endmodule

module count (
    input   in0,
    output reg[15:0] out 
);
reg [15:0]r = 16'h8;
reg [1:0]r2 = 2'b01;
reg [15:0]r3;

always @(posedge in0) 
begin
    assign r3 = r2 + r;
    assign out = r3;
end

endmodule