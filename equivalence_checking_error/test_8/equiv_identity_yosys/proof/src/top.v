module top  (y_1, y_2, clk, wire0, wire1, wire2, wire3);
  output wire [(7'h5a):(1'h0)] y_1;
  output wire [(7'h5a):(1'h0)] y_2;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(5'h12):(1'h0)] wire0;
  input wire [(5'h14):(1'h0)] wire1;
  input wire [(3'h6):(1'h0)] wire2;
  input wire [(5'h15):(1'h0)] wire3;
  top_1 #() top_1 (y_1, clk, wire0, wire1, wire2, wire3);
  top_2 #() top_2 (y_2, clk, wire0, wire1, wire2, wire3);
  always
    @(posedge clk) begin
      assert ((y_1 == y_2));
    end
endmodule