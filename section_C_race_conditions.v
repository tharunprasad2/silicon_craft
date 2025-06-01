
// Section C: Race Conditions & Scheduling

// Q19 & Q22
module race(input clk, output reg x);
  always @(posedge clk) x = 1;
  always @(posedge clk) x = 0;
endmodule

// Q20
module no_race(input clk, output reg x);
  always @(posedge clk) x <= 1;
  always @(posedge clk) x <= 0;
endmodule

// Q23
module debug_race(input clk, output reg x);
  always @(posedge clk) x = 1;
  always @(posedge clk) x = 0;
  always @(posedge clk) $display("x = %b", x);
endmodule

// Q24 Blocking
module exchange_blocking(input clk, output reg [7:0] a, b);
  initial begin a = 5; b = 10; end
  always @(posedge clk) begin
    a = b;
    b = a;
  end
endmodule

// Q24 Non-blocking
module exchange_nonblocking(input clk, output reg [7:0] a, b);
  initial begin a = 5; b = 10; end
  always @(posedge clk) begin
    a <= b;
    b <= a;
  end
endmodule
