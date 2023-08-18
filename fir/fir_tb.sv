module fir_tb;
logic clock;
logic reset;
logic valid_in;
logic [7:0] x;
logic [18:0] y;
logic valid_out;

fir dut(.clock(clock),.reset(reset),.valid_in(valid_in),.x(x),.y(y),.valid_out(valid_out));

always begin #5 clock=0; #5 clock=1; end
initial begin
  $dumpfile("fir.vcd");
  $dumpvars(0, fir_tb);
  reset = 1;
  clock = 1;
  valid_in = 0;
  x = 0;
  #5 reset =0;

  for(int i=1;i<9;i++) begin
    #10 valid_in = 1;
    x = i; 
  end
  // #10
  valid_in <=0;
  #100 $finish;
end 
endmodule