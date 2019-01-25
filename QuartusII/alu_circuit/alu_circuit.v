module alu_circuit(s, a, b, d);
input [2:0]s;
input [7:0]a;
input [7:0]b;
output d;
reg [7:0] d;

always @(posedge s, posedge a, posedge b)
begin
	case (s)
	'b000: begin d = a + b; end
	'b001: begin d = a - b;end
	'b010: d = a + 1;
	'b011: d = a - 1;
	'b100: d = ~a;
	'b101: d = a & b;
	'b110: d = a | b;
	'b111: d = a ^ b;
	endcase
end
endmodule 