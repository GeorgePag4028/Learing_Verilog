`timescale 1ns/1ns
module adder_tb; 
  logic a, b, cin;
  logic carry,sum;

  adder dut(.a(a),.b(b),.cin(cin),.carry(carry),.sum(sum));
  initial begin 
    a   <= 0;
    b   <= 0;
    cin <= 0;
    #10
    for (int i= 0;i<=1;i++) begin 
      for(int j=0;j<=1;j++) begin 
        for (int k=0;k<=1;k++) begin 
          a   <= i;
          b   <= j;
          cin <= k;
          #10;
          $display("Time=%5dt, a=0b%b,b=0b%b,cin= 0b%b,carry= 0b%b,sum=0b%b",$time,a,b,cin,carry,sum);
        end 
      end 
    end
    $finish;
  end
endmodule