module top_module (
    input clk,
    input x,
    output z
); 
    wire w1, w2, w3; 
    wire w1b, w2b, w3b;
    assign w1b = ~w1, w2b = ~w2, w3b = ~w3;
    always @ (posedge clk) begin
        
        w1 <= x ^ w1;
        w2 <= x & w2b;
        w3 <= x | w3b;
        z <= ~(w1 | w2 | w3); 
    end
endmodule
