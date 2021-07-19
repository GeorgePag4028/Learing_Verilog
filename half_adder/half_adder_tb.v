module half_adder_tb;

 reg a;
 reg b;
 wire S;
 wire C;

 half_adder h1(a,b,S,C);

 initial begin 
    a<= 0;
    b<= 0;

  
    #10 a<=1;
     b<=0;

    #10 a<=0;
     b<=1;

    #10 a<=1;
     b<=1;
    end  
    
    always 
      #10 
          $display("This is the a :%0d, b : %0d , S :%0d , C : %0d , on time: %0t" , a,b,S,C,$time);

    initial 
        begin
          #50 
            $finish; 
      end 

 endmodule 

