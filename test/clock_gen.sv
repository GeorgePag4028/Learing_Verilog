module testbench;
timeunit 1ns;
timeprecision 100ps;
logic clk;

always begin #5 clk=0; #5 clk=1; end
// always #10 clk=~clk;

initial begin
  $dumpfile("clock_gen.vcd");
  $dumpvars(0,testbench);
  #1000
  $finish;
end



endmodule