module simple_circuit (
	output Q,
	input A, B, C
);

  assign Q = (~(A & B)) & (~(A | B)) & C;

endmodule
