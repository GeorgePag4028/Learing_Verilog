module counter_up_down(
    input clock,
    input reset,
    input counter_en,
    input add_or_sub, // This is 1 the count up , This is 0 count down
    output reg [3:0]sum
);
    reg [3:0]counter=0;

    always @(posedge(clock) or posedge(reset))
        begin
            sum <=counter;
            if(reset == 1) 
                counter <= 0;
            else begin 
                if (counter_en == 0) 
                    counter <= counter ;
                else 
                    begin 
                        if (add_or_sub == 1) 
                            counter <= counter +1;
                        else 
                            counter <= counter -1;
                    end 
            end
        end 

endmodule 