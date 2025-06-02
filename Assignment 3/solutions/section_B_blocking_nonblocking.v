
// Section B: Blocking vs Non-Blocking Assignments

// Q9
module block_assign;
  reg a, b;
  always @(*) begin
    a = 1;
    b = a;
  end
endmodule

// Q10
module nonblock_assign;
  reg a, b;
  always @(*) begin
    a <= 1;
    b <= a;
  end
endmodule

// Q12
module dff_block(input clk, d, output reg q);
  always @(posedge clk)
    q = d;
endmodule

// Q13
module alu_block(input [1:0] op, input [7:0] a, b, output reg [7:0] result);
  always @(*) begin
    if (op == 2'b00) result = a + b;
    else if (op == 2'b01) result = a - b;
    else result = 0;
  end
endmodule

// Q14
module pipeline(input clk, input [7:0] in, output reg [7:0] out);
  always @(posedge clk)
    out <= in;
endmodule

// Q15 & Q17
module correct_nonblock(input clk, input b, output reg a, output reg b_out);
  always @(posedge clk) begin
    a <= b;
    b_out <= a;
  end
endmodule

// Q16
module wrong_block(input b, output reg a, output reg b_out);
  always @(*) begin
    a = b;
    b_out = a; // simulation mismatch
  end
endmodule

// Q18
module mix_block(input b, output reg a, output reg c);
  always @(*) begin
    a = b;
    c <= a;
  end
endmodule
