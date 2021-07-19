module counter_up_down(
    input clock,
    input reset,
    input counter_en,
    input [3:0] data,
    output reg [3:0]sum
);
    reg [3:0]counter=0;

    always @(posedge(clock) or posedge(reset))
        begin
            if(reset == 1) 
                counter <= 0;
            else begin 
                if (counter_en == 0) 
                    counter <= counter ;
                else 
                    begin 
                        if(counter!=data) counter ++;
                            else counter = 0;
                    end 
            end
        end 
    always@( counter)
    begin
        sum<= counter; 
    end
        

endmodule 