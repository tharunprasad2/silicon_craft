
// Section E: Conditional Statements

// Q37
module mux2(input a, b, sel, output reg y);
  always @(*) begin
    if (sel) y = b;
    else y = a;
  end
endmodule

// Q38
module mux4(input [1:0] sel, input [3:0] in, output reg out);
  always @(*) begin
    if (sel == 2'b00) out = in[0];
    else if (sel == 2'b01) out = in[1];
    else if (sel == 2'b10) out = in[2];
    else out = in[3];
  end
endmodule

// Q39
module counter(input clk, rst, output reg [3:0] count);
  always @(posedge clk) begin
    if (rst) count <= 0;
    else count <= count + 1;
  end
endmodule

// Q40
module flags(input f1, f2, f3, output reg out);
  always @(*) begin
    if (f1 && f2) out = 1;
    else if (f3) out = 0;
    else out = 1'bz;
  end
endmodule

// Q41
module encoder(input [3:0] in, output reg [1:0] out);
  always @(*) begin
    if (in[3]) out = 2'b11;
    else if (in[2]) out = 2'b10;
    else if (in[1]) out = 2'b01;
    else out = 2'b00;
  end
endmodule

// Q42
module priority(input [3:0] req, output reg [1:0] grant);
  always @(*) begin
    if (req[3]) grant = 2'b11;
    else if (req[2]) grant = 2'b10;
    else if (req[1]) grant = 2'b01;
    else grant = 2'b00;
  end
endmodule
