module top_module( 
    input [2:0] in,
    output [1:0] out );

    int count;
    always@(*)
        begin
            count = 0;
            for (int i = 0; i<3; i++ ) begin
                if(in[i] == 1'b1) count = count + 1;
            end
            out = count;
        end
endmodule
