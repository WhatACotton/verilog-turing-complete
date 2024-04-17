#!/bin/bash
iverilog ./impl.v ./tb.v ../base_logic.v 
vvp a.out
gtkwave *.vcd