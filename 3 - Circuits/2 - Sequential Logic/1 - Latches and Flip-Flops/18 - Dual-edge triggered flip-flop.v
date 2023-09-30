module top_module (
    input clk,
    input d,
    output q
);
    reg a, b;
    always @ (posedge clk) begin
    	b <= a ^ d; 
    end
    
    always @ (negedge clk) begin
    	a <= b ^ d; 
    end
    
    assign q = a ^ b; 
endmodule