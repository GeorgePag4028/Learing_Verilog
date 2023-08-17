#!/bin/bash
iverilog -g2012 -o nand nand_tb.sv nand.v && vvp nand 
