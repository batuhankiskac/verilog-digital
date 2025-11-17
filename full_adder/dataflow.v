module full_adder (
	output S, C,
	input x, y, z
);

	assign {C, S} = x + y + z;

endmodule
