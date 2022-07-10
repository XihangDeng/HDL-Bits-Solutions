module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    always@(posedge clk)begin
        if(L)begin
           Q<=R; 
        end
        else begin 
            if(E)
                Q<=w;
            else
                Q<=Q;
        end
    end
endmodule
