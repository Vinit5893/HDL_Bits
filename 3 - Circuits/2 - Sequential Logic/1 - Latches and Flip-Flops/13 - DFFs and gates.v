module top_module (
    input clk,
    input x,
    output z
); 
    
    wire xor_l, and_l, or_l;
	wire Q1, Q2, Q3;
	wire Qn1, Qn2, Qn3;
	assign xor_l = x ^ Q1;
	assign and_l = x & Qn2;
	assign or_l  = x | Qn3;
	
	my_dff my_dff1 (.clk(clk), .d(xor_l), .q(Q1), .qn(Qn1));
	my_dff my_dff2 (.clk(clk), .d(and_l), .q(Q2), .qn(Qn2));
	my_dff my_dff3 (.clk(clk), .d(or_l),  .q(Q3), .qn(Qn3));
	
	assign z = ~(Q1 | Q2 | Q3);

endmodule

module my_dff(
	input clk,
	input d,
	output reg q,
	output qn
);

	always @(posedge clk) begin
		q <= d;
	end
    assign qn = ~q;

endmodule