#!/bin/bash
iverilog -o run adder_4bit_tb.v adder_4bit.v && vvp run
