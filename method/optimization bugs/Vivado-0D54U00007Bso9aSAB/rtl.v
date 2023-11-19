module top  (y, wire3, wire2, wire1, wire0);
  output wire [(32'h44):(32'h0)] y;
  input wire signed [(3'h7):(1'h0)] wire3;
  input wire signed [(4'h8):(1'h0)] wire2;
  input wire signed [(4'hf):(1'h0)] wire1;
  input wire [(5'h12):(1'h0)] wire0;
  wire signed [(4'hf):(1'h0)] wire9;
  wire signed [(3'h6):(1'h0)] wire8;
  wire [(4'ha):(1'h0)] wire7;
  wire signed [(4'ha):(1'h0)] wire6;
  wire [(4'ha):(1'h0)] wire5;
  wire [(5'h10):(1'h0)] wire4;
  assign y = {wire9, wire8, wire7, wire6, wire5, wire4};
  assign wire4 = ((7'h44) >= (|wire0[(2'h3):(2'h2)]));
  assign wire5 = ($unsigned(wire4[(3'h4):(2'h2)]) == {(wire3 ?
                         $unsigned({wire2}) : {$signed(wire1), wire4}),
                     wire4});
  assign wire6 = wire2[(2'h3):(1'h0)];
  assign wire7 = (wire1 ? wire6 : wire1);
  assign wire8 = ((wire3 == (+$signed(((8'hb4) < wire3)))) ?
                     $signed((+(wire3[(2'h2):(1'h1)] ^~ $signed(wire2)))) : wire0);
  assign wire9 = wire1;
endmodule