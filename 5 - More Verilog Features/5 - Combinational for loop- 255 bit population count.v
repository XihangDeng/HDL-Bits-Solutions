//A "population count" circuit counts the number of '1's in an input vector. 
//Build a population count circuit for a 255-bit input vector.
module top_module( 
    input [254:0] in,
    output [7:0] out );

    wire[7:0] counter;
    always@(*) begin
       counter = 0;
        for(int i = 0; i< 255; i++)begin
            if(in[i] == 1'b1)
               counter = counter + 1'b1;
        end
         out = counter;
    end
        
    
endmodule
