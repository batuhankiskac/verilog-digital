module full_adder (
	output reg S, C,
	input x, y, z
);
	always @(x or y or z)
	begin
		S = x ^ y ^ z;
		C = (x & y) | (z & (x ^ y));
	end

endmodule
