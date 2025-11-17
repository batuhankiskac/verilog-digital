module half_adder (
	output S, C,
	input x, y
);

	xor G1 (S, x, y);
	and G2 (C, x, y);

endmodule

module full_adder (
	output S, C,
	input x, y, z
);

	wire S1, C1, C2;

	half_adder H1 (S1, C1, x, y);
	half_adder H2 (S, C2, S1, z);

	or (C, C1, C2);

endmodule
