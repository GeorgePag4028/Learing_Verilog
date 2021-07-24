module rca_pipelined_tb;

reg [3:0]a;
reg [3:0]b;
reg cin;
reg clock;
wire [3:0]sum ;
wire cout;

parameter clock_period = 10;
integer i;
rca_pipelined rca0(a,b,cin,clock,sum,cout);


always 
  #(clock_period/2) clock = !clock;

initial begin
  clock = 0;
  a = 0;
  b = 0;
  cin = 0 ;

  for (i=0;i<5;i++) begin 
     #10 
         a = i;
         b = i;
         cin = 0;
    end 
end 

always 
  #11 
    $display("This is the a:%0d ,b:%0d ,cin:%0d ,time:%0d - the output in time:%0d \nThis is sum:%0d,cout:%0d ,time:%0t" , a,b,cin,$time,($time+33),sum,cout,$time);

initial begin
    #100 
      $finish;
  end
 endmodule
