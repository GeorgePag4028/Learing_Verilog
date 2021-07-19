module right_left_shift_reg_tb;

    reg clock;
    reg reset;
    reg en;
    reg pl;
    reg new_bit;
    reg right_left;
    reg [3:0] din;
    wire d_out;
    wire [3:0]reg_bits;
    integer i=0;

    parameter clock_period = 10;

    right_left_shift_reg_tb r_l_reg (clock,reset,en,pl,new_bit,right_left,di,d_out,reg_bits);

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