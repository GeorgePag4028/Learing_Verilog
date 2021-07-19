module dec_3to8_tb ;

    reg [2:0] d_in; 
    reg e;
    wire [7:0] d_out;
    integer i;

    dec_3to8 dec(d_in,e,d_out);

    initial begin 
        d_in <=3'b000;
        e<=1;
        
        for(i=0;i<7;i++) begin 
            #10 d_in <= i;
            if(i>=5) 
                    e<=0;
            #10
                $display("Dec d_in=%0d => d_out=%0d on this i:%0d",d_in,d_out,i);
            
        end 
    end 

endmodule