module top_module (input x, input y, output z);
    wire temp1, temp2, temp3, temp4;
    A IA1(x,y,temp1);
    B IB1(x,y,temp2);
    A IA2(x,y,temp3);
    B IB2(x,y,temp4);
    assign z = (temp1 |temp2 ) ^ (temp3 &temp4 );
endmodule

module A (input x, input y, output z);
    assign z = (x^y)&x;
endmodule
module B ( input x, input y, output z );
    assign z = ~x ^ y;
endmodule
