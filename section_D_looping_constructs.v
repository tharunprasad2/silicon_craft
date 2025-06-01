
// Section D: Looping Constructs

// Q25
module square_wave(output reg signal);
  initial begin
    signal = 0;
    forever #10 signal = ~signal;
  end
endmodule

// Q26
module repeat_counter;
  reg [2:0] count;
  initial begin
    count = 0;
    repeat(8) begin
      #10 count = count + 1;
    end
  end
endmodule

// Q27
module count_ones;
  reg [3:0] data = 4'b1011;
  integer i = 0, count = 0;
  initial begin
    while (i < 4) begin
      if (data[i]) count = count + 1;
      i = i + 1;
    end
  end
endmodule

// Q28
module count_ones_for;
  reg [3:0] data = 4'b1011;
  integer i, count = 0;
  initial begin
    for (i = 0; i < 4; i = i + 1)
      if (data[i]) count = count + 1;
  end
endmodule

// Q29
module mem_init;
  reg [7:0] mem [0:15];
  integer i;
  initial begin
    repeat(16) begin
      mem[i] = i;
      i = i + 1;
    end
  end
endmodule

// Q30
module buffer(input clk, input [7:0] data);
  reg [7:0] buffer [0:7];
  integer i = 0;
  always @(posedge clk) begin
    buffer[i] = data;
    i = i + 1;
  end
endmodule

// Q31
module forever_disable;
  reg clk = 0;
  initial forever #5 clk = ~clk;
  initial begin
    #100 $finish;
  end
endmodule

// Q32
module shift_msb;
  reg [7:0] reg1 = 8'b00000001;
  initial begin
    while (!reg1[7]) reg1 = reg1 << 1;
  end
endmodule

// Q33
module parity_calc;
  reg [7:0] data = 8'b10110101;
  integer i;
  reg parity = 0;
  initial begin
    for (i = 0; i < 8; i = i + 1)
      parity = parity ^ data[i];
  end
endmodule

// Q34
module countdown;
  integer i = 10;
  initial begin
    while (i >= 0) begin
      $display("i = %d", i);
      i = i - 1;
    end
  end
endmodule
