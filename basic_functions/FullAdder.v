module full_adder(
    input wire       clk,
    input wire       cin,
    input wire  in0, 
    input wire  in1, 

    output reg out,c_out
);
  wire s, c0, c1;
  half_addr HA1 (cin, in0, s, c0);
  half_addr HA2 (s, cin, in1, c1);
  always @(posedge clk) begin
    out <= s;
    c_out <= c0 | c1;
    end
endmodule