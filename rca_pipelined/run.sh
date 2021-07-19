#!/bin/bash
iverilog -o run counter_up_down_tb.v counter_up_down.v && vvp run
