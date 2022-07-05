module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire[4:0] cout;

    one_bit_fulladder instance1(x[0], y[0], 0, cout[0], sum[0]);
    one_bit_fulladder instance2(x[1], y[1], cout[0], cout[1], sum[1]);
    one_bit_fulladder instance3(x[2], y[2], cout[1], cout[2], sum[2]);
    one_bit_fulladder instance4(x[3], y[3], cout[2], sum[4], sum[3]);
  
endmodule

module one_bit_fulladder(input a, b, cin, output cout, sum);
    assign cout = a&b|b&cin|cin&a;
    assign sum = a^b^cin;
endmodule
    
