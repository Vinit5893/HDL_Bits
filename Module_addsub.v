module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout,cout1; 
    wire [31:0] b1;
    
    always@(*)
        begin 
            if (sub == 0)
        	b1 = b;
            else if (sub == 1)
                b1 = ~b;
        end
        
    add16 i1(a[15:0], b1[15:0], sub, sum[15:0], cout);
    add16 i2(a[31:16], b1[31:16], cout, sum[31:16], cout1);
    
endmodule