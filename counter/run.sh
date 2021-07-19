#!/bin/bash
iverilog -o run counter_tb.v counter.v && vvp run
