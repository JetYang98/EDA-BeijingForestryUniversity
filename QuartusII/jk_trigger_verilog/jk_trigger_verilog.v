module jk_trigger_verilog(j, k, clk, clr, cls, q, qn);
input clk, clr, cls, j, k;
output reg q, qn;

always @(negedge clk or negedge clr or negedge cls)
begin 
	if(clr == 0) begin q = 0; qn = 1; end
	else if(cls == 0) begin q = 1; qn = 0; end
	else
	begin
		case ({j, k})
			'b00: begin q = q; qn = qn; end
			'b01: begin q = 0; qn = 1; end
			'b10: begin q = 1; qn = 0; end
			'b11: begin q = ~q; qn = ~qn; end
		endcase;
	end
end
endmodule 