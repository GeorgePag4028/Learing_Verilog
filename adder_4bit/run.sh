 #!/bin/bash
iverilog -g2012 -o run adder_4bit_tb.v adder_4bit.v && vvp run
