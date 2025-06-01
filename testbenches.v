
// Testbenches and waveforms

module tb_toggle_signal;
  reg clk;
  toggle_signal uut();
  initial begin
    #100 $finish;
  end
endmodule

module tb_mux_case;
  reg [1:0] sel;
  reg [3:0] in;
  wire out;

  mux_case uut(sel, in, out);

  initial begin
    in = 4'b1010;
    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;
    $finish;
  end
endmodule
