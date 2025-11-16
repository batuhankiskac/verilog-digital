module half_adder (
  output S, C,
  input x, y
);

  assign S = x ^ y;
  assign C = x & y;

endmodule
