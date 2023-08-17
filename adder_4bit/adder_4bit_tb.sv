// module adder_4bit_tb();
// logic a,b,c,cout,sum;
// int i=0;

// adder_4bit dut(a,b,c,cout,sum);
// initial begin 
//   a=0; b =1; #10;
//   assert(sum === 1);
//   a=1; b =1; #10;
//   assert(sum === 2);
// end
// always@(a,b,c,cout,sum) begin
//   $display("Time=%5dt, a= 0x%04d,b=0x%04d,c_in= 0x%d,c_out= 0x%d,sum=0x%04d",$time,a,b,c,cout,sum);
// end
// end module


module adder_4bit_tb();

  // logic a,b,c,cout,sum;
reg [3:0] a ;
reg [3:0] b ;
reg c ; 
wire cout ;
wire [3:0] sum;
integer i=0;

adder_4bit dut(a, b,c,cout,sum); // device under test i.e. the gate we want to test

  initial
    begin
      $dumpfile("adder.vcd");
      $dumpvars(0, adder_4bit_tb);
      
      a=0; b=0; c=0;  #10;
     $display("Time=%5dt, a= 0x%04d,b=0x%04d,c_in= 0x%d,c_out= 0x%d,sum=0x%04d",$time,a,b,c,cout,sum);
      b=1;    #10;
     $display("Time=%5dt, a= 0x%04d,b=0x%04d,c_in= 0x%d,c_out= 0x%d,sum=0x%04d",$time,a,b,c,cout,sum);
      a=1; b=0;   #10;
     $display("Time=%5dt, a= 0x%04d,b=0x%04d,c_in= 0x%d,c_out= 0x%d,sum=0x%04d",$time,a,b,c,cout,sum);
      b=1;    #10;
     $display("Time=%5dt, a= 0x%04d,b=0x%04d,c_in= 0x%d,c_out= 0x%d,sum=0x%04d",$time,a,b,c,cout,sum);
    end
  
  // always@(a, b, c,cout,sum)
  //    $display("Time=%5dt, a= 0x%04d,b=0x%04d,c_in= 0x%d,c_out= 0x%d,sum=0x%04d",$time,a,b,c,cout,sum);
    // assert({cout,sum} == a+b+c) else $error("this");//$error("Test fail at time=%5dt, a= 0x%04d,b=0x%04d,c_in= 0x%d,c_out= 0x%d,sum=0x%04d",$time,a,b,c,cout,sum);

  
endmodule