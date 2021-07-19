module counter_up_down_tb;

    reg clock;
    reg reset;
    reg counter_en;
    reg [3:0]data ;
    wire [3:0]sum;
    integer i=0;

    parameter clock_period = 10;

    counter_up_down counter (clock,reset,counter_en,data,sum);

    initial begin 
            clock =0;
            reset =1;
            counter_en = 1;
            data = 10;
            #5 reset =0;
        end 

    always  
        #10 $display("This is the counters value:%d , on this time : %0t",sum,$time);
     

    always 
        #(clock_period/2) clock = !clock;

    initial begin 
        #230 
            $finish;
    end
        
endmodule