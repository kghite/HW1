module demorganOr
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAornB     // Single bit output, (~A)+(~B)
);

  wire nA;
  wire nB;
  not Ainv(nA, A);
  not Binv(nB, B);
  or andgate(nAornB, nA, nB);

endmodule
