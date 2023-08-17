`timescale 1ns/1ns
module tb_Adder4Bit;

  // Declare signals for testbench using logic data type
  logic clock;
  logic [3:0] tb_A;
  logic [3:0] tb_B;
  logic tb_cin;
  logic [3:0] tb_Sum;
  logic tb_cout;

   // Declare file handle for debug logging
   integer debug_file;
  // Instantiate the Adder4Bit module
  Adder4Bit dut (
    .clock(clock),
    .A(tb_A),
    .B(tb_B),
    .cin(tb_cin),
    .Sum(tb_Sum),
    .cout(tb_cout)
  );

  always begin 
    #5 clock = 1;
    $display("Time %5d, clock: %b",$time,clock);
    #5 clock = 0;
    $display("Time %5d, clock: %b",$time,clock);
  end 
  program test;
  // Initialize signals
  initial begin
    debug_file = $fopen("debug_log.txt", "w");
    $dumpfile("test.vcd");
    $dumpvars(0, tb_Adder4Bit);
    tb_A = 4'b0000;
    tb_B = 4'b0011;
    tb_cin = 1'b1;
    clock = 1'b0;
    // Display header
    $display("Time | A | B | Cin | Sum | Cout");
    $fdisplay(debug_file,"Time | A | B | Cin | Sum | Cout");

    // Display results and add assertions for each simulation cycle
    for (int i = 0; i < 8; i = i + 1) begin
      #10;
      $display("%4t | %d | %d | %d | %d | %d ", $time, tb_A, tb_B, tb_cin, tb_Sum, tb_cout);
      $fdisplay(debug_file,"%4t | %d | %d | %d | %d | %d", $time, tb_A, tb_B, tb_cin, tb_Sum, tb_cout);

      // Update inputs for the next cycle
      tb_A = tb_A + 1;
      tb_B = tb_B + 1;
      tb_cin = ~tb_cin; // Alternate carry-in value
    end


    // End simulation
    $finish;
    $fclose(debug_file);

  end
  endprogram

endmodule
