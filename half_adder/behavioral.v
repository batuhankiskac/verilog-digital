module half_adder (
  output reg S, C,
  input x, y
);

  always @(x or y) begin
    S = x ^ y;
    C = x & y;
  end

endmodule
