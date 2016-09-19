module demorganNand
(
  input  A,          // Single bit inputs
  input  B,
  output AandB,         
  output AnandB     // Single bit output, ~(A*B)
);

  wire AandB;
  and andgate(AandB, A, B);
  not ABinv(AnandB, AandB);

endmodule
