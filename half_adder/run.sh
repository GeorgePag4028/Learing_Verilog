#!/bin/bash
iverilog -o run half_adder_tb.v half_adder.v && vvp run
