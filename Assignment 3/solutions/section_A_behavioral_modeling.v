
// Section A: Behavioral Modeling Basics

// Q1
module toggle_signal;
  reg toggle;
  initial begin
    toggle = 0;
    #5 toggle = ~toggle;
  end
  always #10 toggle = ~toggle;
endmodule

// Q2
module reg_increment;
  reg [15:0] data;
  initial data = 0;
  always #10 data = data + 1;
endmodule

// Q3
module parallel_blocks;
  reg a, b;
  initial begin a = 0; b = 0; end
  always #5 a = ~a;
  always #10 b = ~b;
endmodule

// Q4
module initial_vs_always;
  reg clk;
  initial $display("Initial block runs once");
  always #5 begin
    clk = ~clk;
    $display("Always block toggling clk");
  end
endmodule

// Q5
module clk_gen;
  reg clk;
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
endmodule

// Q6
module setup_functional;
  reg [7:0] counter;
  initial counter = 0;
  always #5 counter = counter + 1;
endmodule

// Q7
module multi_initial;
  reg a, b;
  initial a = 1;
  initial b = 0;
endmodule

// Q8
module dual_timers;
  reg a, b;
  always #5 a = ~a;
  always #10 b = ~b;
endmodule
