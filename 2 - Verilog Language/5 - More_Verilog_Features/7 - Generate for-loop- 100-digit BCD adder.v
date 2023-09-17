module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [99:0] co;
    genvar i;
    
    generate
        bcd_fadd(a[3:0],b[3:0],cin,co[0],sum[3:0]);
        for (i=4; i<400; i=i+4) begin : bcd_adder_instances
            bcd_fadd BFA(a[i+3:i],b[i+3:i],co[(i/4)-1],co[i/4],sum[i+3:i]);
    	end
    endgenerate
    assign cout = co[99];
endmodule