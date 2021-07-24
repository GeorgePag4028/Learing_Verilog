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

   right_left_shift_reg r_l_reg (clock,reset,en,pl,new_bit,right_left,din,d_out,reg_bits);

    initial begin 
            clock =0;
            reset =1;
            en = 1 ;
            pl =0;
            new_bit = 1;
            right_left = 0;
            #5 reset =0;
        end

    always  
        #10 $display("This is the counters value:%b ,dout:%b, on this time : %0t",reg_bits,d_out,$time);

    always 
        #(clock_period/2) clock = !clock;

    initial begin 
        #50 
            $finish;
    end
        
endmodule
