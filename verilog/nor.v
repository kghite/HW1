module demorganNor
(
  input  A,          // Single bit inputs
  input  B,
  output AorB,         
  output AnorB     // Single bit output, ~(A*B)
);

  wire AorB;
  or orgate(AorB, A, B);
  not ABinv(AnorB, AorB);

endmodule
