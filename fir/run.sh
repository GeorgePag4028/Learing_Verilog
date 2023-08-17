#!/bin/bash
iverilog -g2012 -o run fir_tb.sv control.v ram.v rom.v mac.v fir.v && vvp run