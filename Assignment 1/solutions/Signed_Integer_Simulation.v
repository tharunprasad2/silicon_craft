/*Signed_Integer_Simulation
 Use integer i;
 Assign positive and negative values and simulate signed behavior.*/

module signed_behavior;

  integer i;

  initial begin
    
    i = 100;
    $display("Positive val: %0d", i);
    
    i = -100;
    $display("Negative val: %0d", i);

    i = i-i;
    $display("calc value: %0d", i);
    
  
  end

endmodule
