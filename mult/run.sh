#!/bin/bash
iverilog -g2012 -o run mult_tb.sv mult.v adder.v && vvp run