module counter_up_down_tb;

    reg clock;
    reg reset;
    reg counter_en;
    reg add_or_sub;
    wire [3:0]sum;
    integer i=0;

    parameter clock_period = 10;

    counter_up_down counter (clock,reset,counter_en,add_or_sub,sum);

    initial begin 
            clock =0;
            reset =1;
            counter_en = 1;
            add_or_sub = 1;
            for(i =0;i<13;i++)  #5 reset=0;

            add_or_sub = 0;
            #5 
              $display("Now start counting down");
            for(i=0;i<5;i++)    #5 reset=0;
        end 

    always  
        #10 $display("This is the counters value:%d , on this time : %0t",sum,$time);
     

    always 
        #(clock_period/2) clock = !clock;

    initial begin 
        #200 
            $finish;
    end
        
endmodule
