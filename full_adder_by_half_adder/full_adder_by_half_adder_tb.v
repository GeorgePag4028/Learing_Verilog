module full_adder_by_half_adder_tb;

reg a;
reg b;
reg cin;
wire sum;
wire carry;
integer i;

full_adder_by_half_adder f1(a,b,cin,sum,carry);

  initial begin 
      a = 0;
      b = 0;
      cin = 0;

      #20 a = 1 ;
          b = 1;
          cin = 0;
      #20 a = 1 ;
          b = 1;
          cin = 1;

    end 
    
    always 
        #11 
          $display("a : %0d , b : %0d , cin : %0d , sum : %0d , carry : %0d ",a,b,cin,sum,carry);
    initial begin 
          #50 
        $finish;
    end 
endmodule
