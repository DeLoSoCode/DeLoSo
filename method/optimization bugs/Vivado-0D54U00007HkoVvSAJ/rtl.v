(* use_dsp48="no" *) (* use_dsp="no" *) module top
#( parameter param18 = {(+(!{((8'ha6) | (8'ha4))}))}
, parameter param19 = (({({(8'hb4)} ? (param18 + param18) : (param18 ? param18 : (8'hb5)))} ? {((+param18) <<< (param18 ? param18 : param18))} : param18) ? param18 : param18) )
(y, clk, wire4, wire3, wire2, wire1, wire0);
  output wire [(32'h9a):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(4'hd):(1'h0)] wire4;
  input wire [(3'h4):(1'h0)] wire3;
  input wire signed [(4'hb):(1'h0)] wire2;
  input wire [(4'hc):(1'h0)] wire1;
  input wire signed [(5'h10):(1'h0)] wire0;
  wire [(5'h15):(1'h0)] wire17;
  wire [(5'h12):(1'h0)] wire16;
  wire signed [(4'h8):(1'h0)] wire15;
  reg [(4'he):(1'h0)] reg14 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg13 = (1'h0);
  reg [(4'he):(1'h0)] reg12 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg11 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg10 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg9 = (1'h0);
  reg signed [(2'h3):(1'h0)] reg8 = (1'h0);
  reg [(5'h14):(1'h0)] reg7 = (1'h0);
  reg [(4'hc):(1'h0)] reg6 = (1'h0);
  reg signed [(4'h9):(1'h0)] reg5 = (1'h0);
  assign y = {wire17,
                 wire16,
                 wire15,
                 reg14,
                 reg13,
                 reg12,
                 reg11,
                 reg10,
                 reg9,
                 reg8,
                 reg7,
                 reg6,
                 reg5,
                 (1'h0)};
  always
    @(posedge clk) begin
      reg5 <= (8'hb9);
      if ((8'hb1))
        begin
          reg6 <= ((|(($signed(wire4) ? wire0 : (!wire0)) ?
              {wire1, (^~reg5)} : $unsigned({(8'hba)}))) && wire2);
          reg7 <= wire0[(3'h7):(3'h4)];
        end
      else
        begin
          reg6 <= $unsigned($signed((~&{wire2})));
          if ((8'h9d))
            begin
              reg7 <= (8'hb3);
              reg8 <= (({$unsigned(wire2[(4'hb):(3'h4)])} != (wire3[(3'h4):(2'h2)] - (~&((8'ha8) ?
                  wire4 : wire3)))) > wire2);
              reg9 <= wire1[(4'hb):(4'h9)];
              reg10 <= $unsigned((reg7[(4'hf):(4'h8)] || ((!reg9[(3'h6):(3'h6)]) <<< reg9)));
            end
          else
            begin
              reg7 <= $unsigned((($unsigned(wire2[(3'h4):(1'h0)]) + $unsigned(wire2)) <= reg7[(3'h6):(3'h4)]));
              reg8 <= wire2;
              reg9 <= (|wire3);
            end
          if (wire3[(2'h2):(1'h1)])
            begin
              reg11 <= $signed(({reg9,
                  (+(reg7 >>> reg9))} * {(&(wire4 || wire0))}));
              reg12 <= ($unsigned((|reg10)) << $unsigned((~^reg11[(2'h2):(2'h2)])));
            end
          else
            begin
              reg11 <= reg9;
            end
          reg13 <= (({(8'ha7)} ?
                  (wire4[(4'hc):(3'h6)] >> reg11) : ({wire4[(1'h1):(1'h1)]} > reg12)) ?
              $signed(reg7) : (-reg7));
        end
      reg14 <= $signed((((wire1 ?
          {reg13} : reg5) - ($unsigned(reg9) || $signed(reg5))) ^ (^reg5[(3'h7):(3'h4)])));
    end
  assign wire15 = $unsigned($unsigned(((reg12[(3'h6):(1'h0)] << (reg10 != wire3)) ?
                      ((reg13 & reg10) + (7'h42)) : reg13)));
  assign wire16 = $unsigned($signed(reg6));
  assign wire17 = (((((wire16 >> (8'hab)) ?
                              reg6[(4'h8):(2'h3)] : (reg12 ? reg13 : wire4)) ?
                          (~&(!wire15)) : $signed((^wire4))) ?
                      ($signed((+reg11)) ?
                          (8'hb9) : $signed($unsigned((8'hb9)))) : reg8[(1'h0):(1'h0)]) * reg9);
endmodule