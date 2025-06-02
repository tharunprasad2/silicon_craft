
// Section G: Generate & Structural Coding

// Q51
module reg_init;
  reg [7:0] reg_array;
  genvar i;
  generate
    for (i = 0; i < 8; i = i + 1)
      initial reg_array[i] = 0;
  endgenerate
endmodule

// Q52
module full_adder(input a, b, cin, output sum, cout);
  assign {cout, sum} = a + b + cin;
endmodule

module ripple_adder(input [3:0] A, B, input Cin, output [3:0] Sum, output Cout);
  wire [3:0] carry;
  genvar i;
  generate
    for (i = 0; i < 4; i = i + 1) begin : FA
      if (i == 0)
        full_adder fa (A[i], B[i], Cin, Sum[i], carry[i]);
      else
        full_adder fa (A[i], B[i], carry[i-1], Sum[i], carry[i]);
    end
  endgenerate
  assign Cout = carry[3];
endmodule
