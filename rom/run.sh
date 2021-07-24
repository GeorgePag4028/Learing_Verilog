#!/bin/bash
iverilog -o run rom.v rom_tb.v && vvp run
