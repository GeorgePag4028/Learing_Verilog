module ram_tb ;

parameter data_width = 8;

reg clock;
reg reset;
reg we;
reg en;
reg [2:0] addr;
reg [data_width-1:0] di;
wire [data_width-1:0] do;
integer i;

ram #(.data_width(data_width))
    r1 (clock,reset,we,en,addr,di,do);

parameter clock_period = 10;
  initial begin
    clock = 0;
    reset = 1;
    en = 1 ;
    we = 1;
    addr = 3'b000;
    #(clock_period) reset = 0;
               
    for(i =0; i<8 ;i=i+1)begin
      #(clock_period) di = i;
    end
  end 
  always 
    #10 $display("This is do:%0d ,di: %0d",do,di);
  always 
    #(clock_period/2) clock = !clock;

  initial begin 
    #200 
      $finish;
  end 
endmodule
