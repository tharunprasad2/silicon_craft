/*Floating-Point Handling
 Use real delta; and assign values like 4e10, 2.18.
 Observe behavior when assigned to an integer.*/

module real_to_integer;

  real delta;
  longint i;

  initial begin
    delta = 4e10;
    i = 4e10;
    $display("delta = %0f, i = %0d", delta, i);

    delta = 2.18;
    i = 2.18;
    $display("delta = %0f, i = %0d", delta, i);
  end

endmodule
