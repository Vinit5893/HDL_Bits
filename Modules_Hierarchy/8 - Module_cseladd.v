module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin=1'b0;
    wire cout,cout1,cout2; 
    wire [15:0] sum0, sum1;
    
    add16 i1(a[15:0], b[15:0], cin, sum[15:0], cout);
    add16 i2(a[31:16], b[31:16], cin, sum0, cout1);
    add16 i3(a[31:16], b[31:16], ~cin, sum1, cout2);
    
    always@(*)
        begin
            if (cout == 1'b0)
                sum[31:16] = sum0;
            else if (cout == 1'b1)
                sum[31:16] = sum1; 
        end
endmodule