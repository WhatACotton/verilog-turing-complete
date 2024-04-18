module Basic;

  // --- おまじないここから ---
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, Basic);
  end

  reg r_a;
  // --- おまじないここまで ---

  wire w_x [1:0];

  assign #1 w_x[1] = r_a;

  // --- おまじないここから ---
  initial begin
    r_a = 1'b0;
    #2
    r_a = 1'b1;
    #2
    $finish;
  end
  // --- おまじないここまで ---

endmodule