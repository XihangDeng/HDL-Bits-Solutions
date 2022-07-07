module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    assign out = b&~c&~d |a&~c&~d |a&c |~b&c | a&d; //~b&c | a&c | a&~d;

endmodule
