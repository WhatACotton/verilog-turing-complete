
module ODD_TICKS_tb;

    reg in0 = 1'b0;
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end
    wire out;
    reg rst = 1'b0;
  always #1 begin
        in0 <= ~in0;
    end
   
    ODD_TICKS DUT(
        .clk (in0),
        .rst(rst   ),
        .o_data    (out    )
    );

    initial begin
        rst = 1'b0;
        #1
        rst = 1'b1;
        #1
        rst = 1'b0;
        #6
        $finish;
    end

endmodule
