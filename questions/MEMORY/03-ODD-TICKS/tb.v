
module ODD_TICKS_tb;

    reg in0 = 1'b0;
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end
    wire out;

  
   
    ODD_TICKS DUT(
        .out    (out    )
    );

    initial begin
        in0 = 1'b0;
        #6
        $finish;
    end

endmodule
