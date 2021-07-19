#!/bin/bash
iverilog -o run counter_modulo_tb.v counter_modulo.v && vvp run
