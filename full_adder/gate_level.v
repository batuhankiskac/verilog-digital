module half_adder (
	output S, C,
	input x, y
);

	xor G1 (S, x, y);
	and G2 (C, x, y);

endmodule
