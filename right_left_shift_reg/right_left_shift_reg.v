module right_left_shift_reg(
    input clock,
    input reset,
    input en ,
    input pl,
    input new_bit,
    input right_left,
    input [3:0] din,
    output reg d_out,
    output reg [3:0]reg_bits
);

    always @(posedge(clock) or posedge(reset)) 
    begin
        if( reset ==1 ) 
            begin 
                reg_bits =0;
                d_out = 0;
            end 
        else 
            begin 

                if (pl ==1 ) 
                    begin 
                        reg_bits =din;
                        d_out = 0;
                    end
                else 
                    if (en ==0 ) 
                        begin 
                            reg_bits = 0;
                            d_out = 0;
                        end 
                    else 
                        case (right_left) 
                        1'b0 : begin 
                                d_out <=reg_bits[0];
                                reg_bits <={new_bit,reg_bits[3:1]} ;
                                end 
                        1'b1 : begin 
                                d_out <=reg_bits[3];
                                reg_bits <={reg_bits[2:0],new_bit} ;
                                end 
                        endcase
            end 
    end 
        

endmodule 
