#!/bin/bash
iverilog -o run rca_tb.v rca.v full_adder.v && vvp run
