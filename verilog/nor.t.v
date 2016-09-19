`include "nor.v"

module demorgan_test ();

  // Instantiate device/module under test
  reg A, B; // Primary test inputs
  wire AorB, AnorB; // Test outputs

  demorganNor dut(A, B, AorB, AnorB);


  // Run sequence of test stimuli
  initial begin
    $display("A B | AB | ~(AB) ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("%b %b |  %b |    %b  ", A,B, AorB, AnorB);
    A=0;B=1; #1                             
    $display("%b %b |  %b |    %b  ", A,B, AorB, AnorB);
    A=1;B=0; #1
    $display("%b %b |  %b |    %b  ", A,B, AorB, AnorB);
    A=1;B=1; #1
    $display("%b %b |  %b |    %b  ", A,B, AorB, AnorB);
  end

endmodule    // End demorgan_test