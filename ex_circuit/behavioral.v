module simple_circuit (
	output reg Q,
	input A, B, C
);

  always @(A or B or C) begin
		Q = (~(A & B)) & (~(A | B)) & C;
	end

endmodule
