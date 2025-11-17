module simple_circuit (
	output Q,
	input A, B, C
);

	wire w1, w2;

	nand G1 (w1, A, B);
	nor G2 (w2, A, B);
	and G3 (Q, w1, w2, C);

endmodule

module t_simple_circuit;
	reg A, B, C;
	wire Q;

	simple_circuit uut (Q, A, B, C);

	initial
		$monitor("Time=%0t | C=%b, B=%b, A=%b | Output Q=%b", $time, C, B, A, Q);

	initial begin
		{C, B, A} = 3'b000; #10;
		{C, B, A} = 3'b001; #10;
		{C, B, A} = 3'b010; #10;
		{C, B, A} = 3'b011; #10;
		{C, B, A} = 3'b100; #10;
		{C, B, A} = 3'b101; #10;
		{C, B, A} = 3'b110; #10;
		{C, B, A} = 3'b111; #10;
	end

endmodule
