module demorgan
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB,    // Single bit output, (~A)*(~B)
  output nAorB,      // Single bit output, ~(A + B)
  output nAornB,     // Single bit output, (~A) + (~B)
  output nAandB      // Single bit output, ~(A * B)
);

  wire nA;
  wire nB;
  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB); 	// AND gate produces nAandnB from nA and nB
  or orgate(nAornB, nA, nB); 	    // OR gate produces nAornB from nA and nB

  wire AorB;
  or orgate(AorB, A, B); 	// OR gate produces nAornB from nA and nB
  not AorBinv(nAorB, AorB);  // Inverter is named AorBinv, takes signal AorB as input and produces signal nAorB

  wire AandB;
  and andgate(AandB, A, B); 	// AND gate produces AandB from A and B
  not AandBinv(nAandB, AandB);  // Inverter is named AandBinv, takes signal AandB as input and produces signal nAandB

endmodule
