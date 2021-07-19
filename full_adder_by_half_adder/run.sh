#!/bin/bash
iverilog -o run full_adder_by_half_adder_tb.v full_adder_by_half_adder.v  half_adder.v && vvp run
