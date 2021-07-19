module test;

  /* Make a reset that pulses once. */
  reg reset = 0;
  reg clk = 0;
  initial begin
     # 17 reset = 1;
     # 11 reset = 0;
     # 29 reset = 1;
     # 11 reset = 0;
    // # 100 $stop;
  end

  /* Make a regular pulsing clock. */

  always #5 clk = !clk;

  wire [7:0] value;
  counter c1 (value, clk, reset);
  
  always 
      #10 
        $display("value = %0h" , value);

  initial begin 
    #200 
      $finish;
  end 
endmodule // test
