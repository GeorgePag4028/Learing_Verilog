#!/bin/bash
iverilog -o run dec_3to8_tb.v dec_3to8.v && vvp run
