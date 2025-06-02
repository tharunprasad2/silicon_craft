
// Section F: Case, Casex, Casez

// Q45
module mux_case(input [1:0] sel, input [3:0] in, output reg out);
  always @(*) begin
    case(sel)
      2'b00: out = in[0];
      2'b01: out = in[1];
      2'b10: out = in[2];
      2'b11: out = in[3];
    endcase
  end
endmodule

// Q46
module mux_casex(input [1:0] sel, input [3:0] in, output reg out);
  always @(*) begin
    casex(sel)
      2'bx0: out = in[0];
      2'bx1: out = in[1];
      2'b10: out = in[2];
      default: out = in[3];
    endcase
  end
endmodule

// Q47
module decoder_casez(input [3:0] sel, output reg [15:0] out);
  always @(*) begin
    casez(sel)
      4'bzzz1: out = 16'h0001;
      4'bzz1z: out = 16'h0002;
      4'bz1zz: out = 16'h0004;
      4'b1zzz: out = 16'h0008;
      default: out = 16'h0000;
    endcase
  end
endmodule

// Q49
module bus_decoder(input [1:0] sel, output reg [3:0] out);
  always @(*) begin
    case(sel)
      2'b00: out = 4'b0001;
      2'b01: out = 4'b0010;
      2'b10: out = 4'b0100;
      default: out = 4'b1000;
    endcase
  end
endmodule
