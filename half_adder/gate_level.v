module half_adder (
	output S, C,
	input x, y
);

	xor G1 (S, x, y);
	and G2 (C, x, y);

endmodule

module t_half_adder;

	reg x, y;
	wire S, C;

	half_adder H1 (S, C, x, y);

	initial begin
		x = 1'b0; y = 1'b0;
		#10;
		x = 1'b0; y = 1'b1;
		#10;
		x = 1'b1; y = 1'b0;
		#10;
		x = 1'b1; y = 1'b1;
	end

	initial #200 $finish;

endmodule
