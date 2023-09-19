module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    
    genvar i;
    wire [98:0] co;
    
    fadd F1(a[0], b[0], cin, co[0], sum[0]);
    fadd F2(a[99], b[99], co[98], cout, sum[99]);
    
    generate
        for (i = 1; i < 99; i = i + 1) begin : Full_adder // block name is must...
            fadd F(a[i], b[i], co[i - 1], co[i], sum[i]);
        end
    endgenerate
endmodule

module fadd( 
    input a, b, cin,
    output cout, sum );
    
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a);
    
endmodule
