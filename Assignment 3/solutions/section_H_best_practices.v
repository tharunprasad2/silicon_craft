
// Section H: Best Practices

// Q55
module mixed_block(input b, output reg a, output reg c);
  always @(*) begin
    a = b;
    c = a; // Mixing = and <= should be separated
  end
endmodule

// Q56 & Q57
module separate_logic(input clk, input d, output reg q, output reg out);
  always @(posedge clk) q <= d; // sequential
  always @(*) out = q;          // combinational
endmodule

// Q58
module multiple_assign(input clk, output reg x);
  always @(posedge clk) x <= 1;
  // Second always block assigning to x would be a conflict and should be avoided
endmodule
