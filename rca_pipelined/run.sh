#!/bin/bash
iverilog -o run rca_pipelined_tb.v rca_pipelined.v full_adder.v && vvp run
