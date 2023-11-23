module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
/*    always @ (*) begin 
        case ({x3, x2, x1})
            3'b010 : f = 1'b1;
            3'b011 : f = 1'b1;
            3'b101 : f = 1'b1;
            3'b111 : f = 1'b1;
            default : f = 1'b0;
        endcase
            end    */
    assign f = (~x3 & x2)|(x3 & x1);
endmodule
