module rom_tb ;

parameter data_width = 8;

reg clock;
reg en;
reg [2:0] addr;
wire [data_width-1:0] rom_out;
integer i;

rom #(.data_width(data_width))
    r1 (clock,en,addr,rom_out);

parameter clock_period = 10;
  initial begin
    clock = 0;
    en = 1 ;
    addr = 3'b000;
    #10 addr = 5;
    #40 addr = 7;
    /*for(i =0; i<8 ;i=i+1)begin
      #(clock_period) addr = i;
    end*/
  end 
  always 
    #10 $display("rom_out:0b%d addr:0x%h time:%0t",rom_out,addr,$time);
  always 
    #(clock_period/2) clock = !clock;

  initial begin 
    #100 
      $finish;
  end 
endmodule
