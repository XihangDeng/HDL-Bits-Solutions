module top_module (
    input clk,
    input x,
    output z
); 
    wire [2:0] Q;
    //wire w1=0,w2=0,w3=0;
    always@(posedge clk)begin
        Q[0] <= x^Q[0];
        Q[1] <= x&~Q[1];
        Q[2] <= x|~Q[2];
    end
    assign z = ~(Q[0]|Q[1]|Q[2]);
endmodule
