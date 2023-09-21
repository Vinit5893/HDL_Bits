module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    always @ (posedge clk) begin
    if (L == 1'b1) Q <= R;
    else begin
        case (E)
            1'b0 : Q <= Q;
            1'b1 : Q <= w;
        endcase
        /* 
            always @ (posedge clk) begin
        if (E==1'b0)
            case(L)
                1'b0 : Q <= Q;
                1'b1 : Q <= R;
            endcase
        else 
            case(L)
                1'b0 : Q <= w;
                1'b1 : Q <= R;
            endcase
        */
    	end
    end
endmodule
