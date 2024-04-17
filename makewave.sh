#!/bin/bash
filename=$1
filename_without_extension="${filename%.*}"  # 拡張子を削除

iverilog $1 -o $filename_without_extension.out
vvp $filename_without_extension.out
gtkwave *.vcd