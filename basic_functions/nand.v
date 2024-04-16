module Basic;

  // --- おまじないここから ---
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, Basic);
  end

  reg r_a;
  reg r_b;
  // --- おまじないここまで ---

  wire w_x;

  assign w_x = ~(r_a & r_b);

  // --- おまじないここから ---
  initial begin
    r_a = 1'b0;
    r_b = 1'b0;
    #2
    r_a = 1'b1;
    r_b = 1'b0;
    #2
    r_a = 1'b0;
    r_b = 1'b1;
    #2
    r_a = 1'b1;
    r_b = 1'b1;
    #2
    $finish;
  end
  // --- おまじないここまで ---

endmodule