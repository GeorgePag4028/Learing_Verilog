#!/bin/bash
iverilog -o run full_adder_tb.v full_adder.v && vvp run
