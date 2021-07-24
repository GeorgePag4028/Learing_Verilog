#!/bin/bash
iverilog -o run ram.v ram_tb.v && vvp run
