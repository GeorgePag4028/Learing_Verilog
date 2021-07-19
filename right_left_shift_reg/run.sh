#!/bin/bash
iverilog -o run right_left_shift_reg_tb.v right_left_shift_reg.v && vvp run
