`timescale 1ns/1ns
module mult_tb; 
  logic clock;
  logic [3:0] a, b;
  wire [7:0] sum;

    
  mult dut(.clock(clock),.a(a),.b(b),.S(sum));
  initial begin 
    $dumpfile("mult.vcd");
    $dumpvars(0, mult_tb);
    a   <= 0;
    b   <= 0;
    clock <=0;
    #10
    for (int i= 0;i<=15;i++) begin 
      for (int j=0;j<=15;j++) begin 
        a   <= i;
        b   <= j;
        #5 clock = ~clock;
        #5 clock = ~clock;
        $display("Time=%5dt, a=0d%02d,b=0d%02d,mult=0d%03d",$time,a,b,sum);
      end 
    end
    for(int i=0;i<8;i++) begin 
        #5 clock = ~clock;
        #5 clock = ~clock;
        $display("Time=%5dt, a=0d%02d,b=0d%02d,mult=0d%03d",$time,a,b,sum);
    end
  end
endmodule