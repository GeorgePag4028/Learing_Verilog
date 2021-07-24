module rca_tb;
  
  reg [3:0] a;
  reg [3:0] b;

  reg cin; 

  wire [3:0] sum ;
  wire c_out ;

  integer i;

  rca f1 ( a,b,cin,sum,c_out);

  initial begin 
      a =0;
      b =0;
      cin = 0;

      for(i=0;i<5;i++) begin 
        #10 a = i+5;
            b = i+5;
            cin =0;
      end 
    end 

    always 
      #11 
        $display("a:%0d , b:%0d , cin:%0d , sum:%0d ,c_out:%0d",a,b,cin,sum,c_out);
    initial begin
      #60 
        $finish;
    end 
endmodule
