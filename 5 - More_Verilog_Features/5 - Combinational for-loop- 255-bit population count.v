module top_module( 
    input [254:0] in,
    output [7:0] out );
    
	integer i = 0;
    reg [7:0]a;
    always @ (*) begin
        a = 0;
        for (i=0;i<255;i=i+1) begin
            if (in[i] == 1'b1) begin
               	a = a + 1'b1;
            end
        end
        out = a;
    end
endmodule
