module top
#( parameter param186 = ((({((8'haa) && (8'ha4))} ? (((8'haf) >= (8'hb9)) ? (~|(8'h9e)) : {(8'hbe), (8'hae)}) : ((~(8'hb9)) != (!(8'ha0)))) ~^ {{((8'hb2) ? (8'hbf) : (8'ha8)), (~(8'h9f))}, (((8'ha0) ? (8'ha8) : (8'hbf)) >= ((8'ha1) || (8'ha7)))}) ? (~^((((8'hb1) ? (8'hbe) : (8'haa)) >= ((8'hb2) >= (8'hb9))) < (8'hb1))) : (({(8'ha1), ((8'haa) << (8'hbe))} + ({(8'h9c)} <= ((8'hbf) ? (7'h42) : (8'hab)))) << (((~|(8'hb5)) == {(8'haf), (8'ha8)}) ? {(8'ha1)} : ((~&(8'hb5)) ? ((8'hb6) ^ (8'hb2)) : ((8'hbb) != (8'hbe))))))
, parameter param187 = param186 )
(y, clk, wire3, wire2, wire1, wire0);
  output wire [(32'h22b):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(5'h10):(1'h0)] wire3;
  input wire [(5'h14):(1'h0)] wire2;
  input wire [(3'h7):(1'h0)] wire1;
  input wire signed [(4'h9):(1'h0)] wire0;
  wire signed [(3'h5):(1'h0)] wire184;
  wire [(5'h14):(1'h0)] wire183;
  wire signed [(4'hd):(1'h0)] wire182;
  wire signed [(3'h7):(1'h0)] wire180;
  wire signed [(4'hd):(1'h0)] wire179;
  wire signed [(4'he):(1'h0)] wire178;
  wire signed [(5'h12):(1'h0)] wire177;
  reg signed [(4'hb):(1'h0)] reg176 = (1'h0);
  reg signed [(2'h3):(1'h0)] reg175 = (1'h0);
  reg signed [(5'h11):(1'h0)] reg174 = (1'h0);
  reg [(4'hb):(1'h0)] reg173 = (1'h0);
  wire signed [(4'h8):(1'h0)] wire172;
  wire [(3'h6):(1'h0)] wire171;
  reg [(5'h13):(1'h0)] reg170 = (1'h0);
  reg [(5'h11):(1'h0)] reg169 = (1'h0);
  reg signed [(4'hc):(1'h0)] reg168 = (1'h0);
  reg [(5'h14):(1'h0)] reg167 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg166 = (1'h0);
  reg [(5'h10):(1'h0)] reg165 = (1'h0);
  reg [(5'h13):(1'h0)] reg164 = (1'h0);
  wire signed [(5'h15):(1'h0)] wire163;
  wire [(3'h7):(1'h0)] wire162;
  wire [(2'h2):(1'h0)] wire160;
  wire [(5'h11):(1'h0)] wire159;
  wire signed [(4'hc):(1'h0)] wire158;
  wire signed [(4'he):(1'h0)] wire156;
  wire signed [(4'hb):(1'h0)] wire19;
  reg [(5'h15):(1'h0)] reg18 = (1'h0);
  reg signed [(4'hc):(1'h0)] reg17 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg16 = (1'h0);
  reg [(5'h12):(1'h0)] reg15 = (1'h0);
  reg [(5'h11):(1'h0)] reg14 = (1'h0);
  reg signed [(4'hd):(1'h0)] reg13 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg12 = (1'h0);
  reg signed [(3'h5):(1'h0)] reg11 = (1'h0);
  reg [(5'h10):(1'h0)] reg10 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg9 = (1'h0);
  reg signed [(5'h12):(1'h0)] reg8 = (1'h0);
  reg [(5'h14):(1'h0)] reg7 = (1'h0);
  wire signed [(5'h11):(1'h0)] wire6;
  reg [(4'hc):(1'h0)] reg5 = (1'h0);
  reg [(5'h15):(1'h0)] reg4 = (1'h0);
  assign y = {wire184,
                 wire183,
                 wire182,
                 wire180,
                 wire179,
                 wire178,
                 wire177,
                 reg176,
                 reg175,
                 reg174,
                 reg173,
                 wire172,
                 wire171,
                 reg170,
                 reg169,
                 reg168,
                 reg167,
                 reg166,
                 reg165,
                 reg164,
                 wire163,
                 wire162,
                 wire160,
                 wire159,
                 wire158,
                 wire156,
                 wire19,
                 reg18,
                 reg17,
                 reg16,
                 reg15,
                 reg14,
                 reg13,
                 reg12,
                 reg11,
                 reg10,
                 reg9,
                 reg8,
                 reg7,
                 wire6,
                 reg5,
                 reg4,
                 (1'h0)};
  always
    @(posedge clk) begin
      reg4 <= $signed((((^(wire2 * wire1)) ?
          wire0 : $signed((wire1 ? wire0 : wire2))) <<< (&$signed((&wire0)))));
      reg5 <= $unsigned($signed($unsigned($signed(reg4[(4'hd):(4'hc)]))));
    end
  assign wire6 = wire1;
  always
    @(posedge clk) begin
      reg7 <= ((-{$unsigned((reg5 ? wire3 : reg4))}) < (~reg4));
      reg8 <= wire6;
      if ((^($unsigned(wire2[(3'h5):(1'h0)]) <= (($unsigned(wire6) < (wire1 < wire3)) >>> wire0[(4'h9):(3'h5)]))))
        begin
          reg9 <= (reg4 >> ({{$unsigned(wire0)},
              wire2[(3'h4):(1'h1)]} >> $unsigned((reg7[(4'hc):(4'hc)] ^ reg8[(3'h5):(2'h2)]))));
          reg10 <= (|(!wire2[(1'h1):(1'h0)]));
          reg11 <= $unsigned(((+(~$signed(reg9))) ?
              reg7[(4'hc):(2'h3)] : $unsigned($signed((8'hb4)))));
          reg12 <= $unsigned((!{reg4, (^~(^~(7'h43)))}));
          reg13 <= {$signed($unsigned((~^(~^reg11)))), reg5};
        end
      else
        begin
          reg9 <= {((~(~|wire0)) ?
                  ({$unsigned(reg12)} ?
                      ((wire1 << (8'ha7)) ?
                          {reg7,
                              wire2} : wire1[(3'h6):(2'h3)]) : $unsigned((~reg10))) : (^~$unsigned({reg7,
                      reg4}))),
              (reg13 ? (~|$signed($unsigned(wire0))) : $signed(reg7))};
          reg10 <= $signed($unsigned({($signed((8'h9d)) ~^ wire2[(3'h6):(2'h2)])}));
          if ((($unsigned($signed(reg4[(1'h1):(1'h0)])) ?
              ((reg8[(4'hf):(4'he)] ? (reg11 <= reg10) : wire6) ?
                  (+$signed((8'hb0))) : $unsigned((+reg4))) : reg8) && (+$unsigned((reg8 <= ((8'haa) ?
              wire1 : wire6))))))
            begin
              reg11 <= {wire1};
            end
          else
            begin
              reg11 <= $signed(((((wire0 ? wire0 : wire2) >>> (reg5 > wire3)) ?
                  ((reg4 == reg5) && $unsigned(wire0)) : reg9[(2'h2):(1'h0)]) == $unsigned({(|reg7),
                  (reg8 && wire3)})));
              reg12 <= $signed(reg9[(1'h0):(1'h0)]);
            end
          reg13 <= {reg7[(3'h7):(1'h0)], {{(^reg11[(3'h4):(1'h1)])}}};
        end
      if ((^reg11))
        begin
          if ((reg12[(4'hc):(4'hb)] >= ((reg8 == wire3[(4'h9):(3'h5)]) * ($signed((wire2 ?
              wire0 : reg13)) > reg11))))
            begin
              reg14 <= ((~$signed(reg13)) ?
                  ((8'hbf) < (wire2 > ((reg13 ?
                      (8'hb8) : reg5) <<< ((8'hb3) + (8'h9c))))) : $unsigned($signed({((8'hb1) ?
                          reg7 : wire2),
                      (wire1 || reg12)})));
              reg15 <= $signed(($signed(($signed(reg12) != ((8'had) ?
                      reg8 : reg4))) ?
                  (reg9[(2'h2):(1'h1)] ?
                      (~((8'h9d) ^ (8'ha2))) : {$signed((8'hb5)),
                          reg13[(3'h4):(1'h0)]}) : {$signed({reg11, reg8})}));
              reg16 <= reg11[(2'h2):(2'h2)];
            end
          else
            begin
              reg14 <= wire6;
              reg15 <= $signed((|((reg13 <<< wire3) ?
                  wire6[(1'h0):(1'h0)] : $unsigned($unsigned((7'h41))))));
              reg16 <= reg9[(1'h0):(1'h0)];
              reg17 <= ($signed(reg11) == $signed(reg5[(1'h1):(1'h0)]));
            end
        end
      else
        begin
          reg14 <= $unsigned(reg13);
        end
      reg18 <= ($signed(($unsigned($unsigned(wire3)) ?
          {(reg4 + (8'h9e))} : ((8'hb6) || reg7[(4'hd):(3'h4)]))) ~^ ((reg7[(4'he):(3'h5)] ?
              wire2 : (|reg11)) ?
          $unsigned(((8'ha8) ?
              (^~wire1) : (reg17 || reg5))) : $unsigned($signed((7'h44)))));
    end
  assign wire19 = reg15[(4'hb):(4'ha)];
  module20 modinst157 (wire156, clk, wire2, reg7, reg18, reg10);
  assign wire158 = reg13[(4'hd):(3'h6)];
  assign wire159 = $signed((reg12[(2'h3):(1'h1)] && $signed(reg9[(2'h2):(1'h0)])));
  module27 modinst161 (wire160, clk, reg17, wire2, reg13, wire156);
  assign wire162 = ({$signed(wire3[(4'hb):(2'h3)])} ^ (^~wire3[(4'he):(4'h8)]));
  assign wire163 = $signed($signed((wire159 < {reg14})));
  always
    @(posedge clk) begin
      if ({$unsigned(((^~((8'hb4) <= wire2)) ?
              $unsigned($unsigned(wire156)) : reg5[(2'h2):(2'h2)])),
          wire6[(4'hc):(4'h8)]})
        begin
          if ($signed((~((~reg16) ?
              wire19[(1'h0):(1'h0)] : reg4[(1'h0):(1'h0)]))))
            begin
              reg164 <= ({(reg12[(4'he):(4'he)] ?
                          wire160[(2'h2):(2'h2)] : reg11),
                      (~^((wire162 ?
                          reg15 : wire163) * wire163[(5'h12):(4'ha)]))} ?
                  reg5[(3'h4):(1'h1)] : reg8);
              reg165 <= $signed(((wire19 ?
                      ($unsigned(wire1) ?
                          $unsigned(wire156) : {wire160}) : ($signed(reg13) ?
                          (8'haa) : $unsigned(reg7))) ?
                  ($signed(reg10) ?
                      reg11 : (^~((8'ha6) ? (8'h9d) : reg17))) : wire19));
              reg166 <= wire156[(3'h5):(3'h5)];
              reg167 <= wire162;
              reg168 <= reg9[(2'h2):(1'h1)];
            end
          else
            begin
              reg164 <= (8'hb6);
              reg165 <= {$unsigned($signed((~$signed(reg168)))),
                  $unsigned((&$signed((reg7 ? reg18 : wire2))))};
              reg166 <= {$signed(wire160),
                  ((^$unsigned($unsigned(reg167))) << ($signed($unsigned(wire160)) ?
                      reg164[(4'hd):(3'h5)] : wire2[(4'hd):(4'ha)]))};
            end
          reg169 <= (~reg13[(2'h2):(1'h0)]);
        end
      else
        begin
          reg164 <= reg168[(3'h4):(1'h1)];
        end
      reg170 <= {(((reg8[(3'h7):(3'h5)] ? {reg8, reg169} : (reg17 * wire159)) ?
              reg15 : $signed((reg12 <= reg8))) && wire160)};
    end
  assign wire171 = wire158;
  assign wire172 = (reg12[(3'h4):(2'h3)] ?
                       $signed((+reg16[(4'h8):(3'h6)])) : wire2[(5'h11):(4'ha)]);
  always
    @(posedge clk) begin
      if ((reg164 ?
          (8'ha8) : ((($unsigned(wire160) >> reg14[(1'h0):(1'h0)]) << (((8'ha8) < reg169) & $unsigned((8'ha3)))) || $signed(((wire19 ?
              reg169 : reg7) + reg5)))))
        begin
          reg173 <= wire19[(3'h5):(2'h3)];
          if ((8'h9f))
            begin
              reg174 <= $signed($signed($signed($unsigned((wire2 >= wire172)))));
              reg175 <= reg165;
              reg176 <= $unsigned(reg9);
            end
          else
            begin
              reg174 <= wire172[(4'h8):(1'h1)];
            end
        end
      else
        begin
          if ((reg166 ?
              (&($signed(reg170) ?
                  $signed($unsigned(wire1)) : (-$unsigned(wire6)))) : wire2))
            begin
              reg173 <= reg164;
              reg174 <= $unsigned((((wire172 ?
                      (reg170 ? (8'ha8) : wire159) : (7'h44)) ?
                  ({reg5} * (wire19 == reg10)) : $signed($unsigned(reg11))) >= reg169));
            end
          else
            begin
              reg173 <= (reg167[(5'h12):(1'h0)] ?
                  (((reg16 ? (reg8 ? reg166 : wire3) : reg4) ?
                      {(reg17 >= (8'hbd)),
                          wire6[(3'h5):(2'h3)]} : (wire163[(5'h14):(3'h7)] && wire2[(3'h6):(3'h6)])) >> (($signed(wire3) != (!wire2)) ?
                      wire160[(1'h0):(1'h0)] : reg170)) : $unsigned($signed(($signed(reg166) - reg13[(4'hb):(1'h0)]))));
              reg174 <= wire156;
            end
        end
    end
  assign wire177 = {wire0[(4'h8):(3'h7)]};
  assign wire178 = $signed(reg175[(1'h1):(1'h1)]);
  assign wire179 = reg13;
  module96 modinst181 (wire180, clk, reg18, reg17, reg164, wire1);
  assign wire182 = reg164;
  assign wire183 = $unsigned($unsigned(($unsigned((reg175 ? (8'h9e) : reg14)) ?
                       reg168 : wire19)));
  module140 modinst185 (.wire142(reg17), .wire143(reg4), .clk(clk), .wire141(reg8), .y(wire184), .wire144(wire1));
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module20
#( parameter param154 = {({{(~&(8'ha5)), ((8'hb8) ^~ (8'h9c))}} ? (({(8'had)} >= (^~(8'hb9))) ^ (^~((8'ha8) ? (8'h9e) : (8'ha0)))) : ((|{(8'hbb), (8'hab)}) * {((8'ha2) + (8'h9d)), ((8'hbd) ? (7'h44) : (8'hbc))})), ((8'ha8) ? ({{(8'hb2), (8'hb3)}} - (&{(8'hb0)})) : (-(((8'ha0) ? (8'h9e) : (8'hae)) * ((8'h9e) == (8'h9d)))))}
, parameter param155 = ({param154} ^ param154) )
(y, clk, wire21, wire22, wire23, wire24);
  output wire [(32'h1e4):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(5'h14):(1'h0)] wire21;
  input wire [(2'h3):(1'h0)] wire22;
  input wire signed [(5'h12):(1'h0)] wire23;
  input wire [(4'hd):(1'h0)] wire24;
  wire signed [(2'h3):(1'h0)] wire153;
  wire signed [(4'ha):(1'h0)] wire151;
  wire signed [(5'h11):(1'h0)] wire25;
  wire [(5'h11):(1'h0)] wire26;
  wire signed [(5'h15):(1'h0)] wire42;
  wire signed [(3'h7):(1'h0)] wire44;
  wire [(3'h5):(1'h0)] wire45;
  reg signed [(3'h7):(1'h0)] reg46 = (1'h0);
  reg [(5'h15):(1'h0)] reg47 = (1'h0);
  reg [(5'h10):(1'h0)] reg48 = (1'h0);
  reg signed [(4'hf):(1'h0)] reg49 = (1'h0);
  reg [(3'h6):(1'h0)] reg50 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg51 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg52 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg53 = (1'h0);
  reg signed [(3'h7):(1'h0)] reg54 = (1'h0);
  reg [(5'h12):(1'h0)] reg55 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg56 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg57 = (1'h0);
  reg [(4'hb):(1'h0)] reg58 = (1'h0);
  reg [(4'h8):(1'h0)] reg59 = (1'h0);
  wire [(2'h2):(1'h0)] wire60;
  reg [(4'hd):(1'h0)] reg61 = (1'h0);
  reg signed [(5'h14):(1'h0)] reg62 = (1'h0);
  reg signed [(3'h5):(1'h0)] reg63 = (1'h0);
  reg signed [(5'h14):(1'h0)] reg64 = (1'h0);
  reg [(5'h13):(1'h0)] reg65 = (1'h0);
  wire signed [(4'hf):(1'h0)] wire66;
  wire [(5'h13):(1'h0)] wire90;
  wire [(4'ha):(1'h0)] wire92;
  wire signed [(5'h13):(1'h0)] wire93;
  reg [(4'hd):(1'h0)] reg94 = (1'h0);
  reg [(5'h13):(1'h0)] reg95 = (1'h0);
  wire signed [(5'h14):(1'h0)] wire121;
  wire signed [(4'h9):(1'h0)] wire123;
  wire signed [(4'h9):(1'h0)] wire124;
  wire signed [(5'h13):(1'h0)] wire125;
  wire [(3'h5):(1'h0)] wire126;
  wire [(4'hc):(1'h0)] wire138;
  assign y = {wire153,
                 wire151,
                 wire25,
                 wire26,
                 wire42,
                 wire44,
                 wire45,
                 reg46,
                 reg47,
                 reg48,
                 reg49,
                 reg50,
                 reg51,
                 reg52,
                 reg53,
                 reg54,
                 reg55,
                 reg56,
                 reg57,
                 reg58,
                 reg59,
                 wire60,
                 reg61,
                 reg62,
                 reg63,
                 reg64,
                 reg65,
                 wire66,
                 wire90,
                 wire92,
                 wire93,
                 reg94,
                 reg95,
                 wire121,
                 wire123,
                 wire124,
                 wire125,
                 wire126,
                 wire138,
                 (1'h0)};
  assign wire25 = wire21;
  assign wire26 = wire21;
  module27 modinst43 (.wire28(wire26), .clk(clk), .wire31(wire23), .wire30(wire24), .y(wire42), .wire29(wire21));
  assign wire44 = ($unsigned((((wire26 < wire24) ?
                          (wire24 - wire42) : ((8'haa) > wire42)) ?
                      ((wire42 ^~ wire22) ?
                          (wire25 ?
                              wire26 : wire24) : wire26) : $unsigned($unsigned(wire25)))) <<< (wire23 ?
                      wire26 : wire22));
  assign wire45 = (8'haf);
  always
    @(posedge clk) begin
      if ($unsigned(wire25[(4'h9):(3'h7)]))
        begin
          if ($unsigned(wire44[(3'h6):(2'h2)]))
            begin
              reg46 <= $unsigned($signed($unsigned({(wire44 ^ wire42)})));
            end
          else
            begin
              reg46 <= wire44;
              reg47 <= {$signed((($signed(wire22) * $signed((7'h41))) != $signed({(7'h42)})))};
            end
          reg48 <= {reg46[(1'h0):(1'h0)]};
          if (wire24[(1'h1):(1'h1)])
            begin
              reg49 <= wire26;
            end
          else
            begin
              reg49 <= (wire25[(4'hc):(4'h8)] ?
                  wire44 : $unsigned(((|(reg48 ~^ wire44)) && wire24[(4'hb):(4'hb)])));
              reg50 <= wire23[(2'h3):(2'h3)];
            end
        end
      else
        begin
          reg46 <= $signed((wire25 <= ((~|$unsigned(reg47)) ?
              ($unsigned(wire24) ?
                  {wire25} : $signed((8'ha8))) : {reg49[(4'he):(1'h0)],
                  $signed(reg50)})));
          reg47 <= (wire24 ?
              {($unsigned((reg49 != wire25)) ?
                      {(wire44 ? wire21 : (8'h9f)), reg50} : ($signed(wire26) ?
                          $unsigned(wire21) : ((8'hb0) ?
                              reg46 : reg48)))} : {($signed(wire26[(3'h6):(3'h4)]) ?
                      (!(wire26 ? reg49 : reg49)) : $signed((wire42 ?
                          wire45 : wire44)))});
          reg48 <= wire21;
          if ($unsigned({wire25[(4'h8):(3'h6)]}))
            begin
              reg49 <= wire44[(2'h3):(1'h0)];
            end
          else
            begin
              reg49 <= {(reg48 << ($signed((reg50 ? wire42 : reg49)) ?
                      $signed((^wire42)) : $signed(wire45)))};
              reg50 <= reg48;
              reg51 <= wire24;
              reg52 <= $signed(wire42);
              reg53 <= (8'hbf);
            end
        end
      reg54 <= wire44;
      reg55 <= (&($unsigned(wire24[(3'h7):(3'h5)]) | wire23));
      reg56 <= $signed(reg54[(3'h7):(3'h4)]);
      if (reg51[(1'h1):(1'h0)])
        begin
          reg57 <= reg48[(3'h5):(1'h1)];
          reg58 <= {($signed(($signed(reg53) ?
                  $signed(wire25) : $unsigned((8'hb1)))) - $signed(reg46)),
              ((wire23[(4'h9):(2'h2)] != ((reg56 != wire42) ?
                      (-reg50) : (wire24 ? wire42 : (8'haa)))) ?
                  $unsigned((+(reg52 != reg52))) : $signed((^(-reg54))))};
          reg59 <= wire22[(2'h2):(1'h0)];
        end
      else
        begin
          reg57 <= wire45[(2'h3):(1'h1)];
        end
    end
  assign wire60 = (($unsigned($signed(reg47)) - (reg49[(4'he):(2'h2)] * {wire45})) ~^ (~|wire22));
  always
    @(posedge clk) begin
      reg61 <= reg47;
      if ({(((~(wire24 != (7'h42))) + {$unsigned(wire44)}) ?
              $unsigned($signed($unsigned(reg57))) : (!reg46[(3'h5):(1'h0)]))})
        begin
          reg62 <= reg57[(2'h2):(2'h2)];
        end
      else
        begin
          if ((~&(~^$signed(((wire45 ?
              wire24 : reg46) <<< reg61[(1'h1):(1'h1)])))))
            begin
              reg62 <= reg52[(1'h0):(1'h0)];
              reg63 <= ($signed((wire44[(1'h1):(1'h0)] & ($signed(wire45) ?
                      {reg53} : (reg56 * reg51)))) ?
                  reg50 : ((^~reg46[(3'h4):(2'h3)]) ?
                      ((^{wire42}) ?
                          reg47[(4'ha):(1'h1)] : $unsigned(((8'ha9) >> (8'ha4)))) : (^~((wire21 ?
                              reg48 : reg46) ?
                          $unsigned(reg56) : (^(8'hb5))))));
              reg64 <= reg49[(4'hc):(3'h5)];
            end
          else
            begin
              reg62 <= $signed(reg47);
              reg63 <= $unsigned((wire44[(3'h4):(3'h4)] != $unsigned(((~|wire44) << $signed(wire45)))));
            end
          reg65 <= (8'ha4);
        end
    end
  assign wire66 = ($unsigned(reg61[(4'ha):(3'h6)]) ^~ wire24[(1'h1):(1'h0)]);
  module67 modinst91 (.y(wire90), .wire70(reg58), .wire71(wire26), .clk(clk), .wire68(reg62), .wire69(reg64));
  assign wire92 = $signed(wire23);
  assign wire93 = (&reg49);
  always
    @(posedge clk) begin
      reg94 <= reg52[(1'h1):(1'h1)];
      reg95 <= (($signed($signed((wire45 ?
              reg46 : wire22))) >>> $signed($unsigned((reg54 >>> reg48)))) ?
          ({(wire25[(4'hd):(1'h1)] ^ (~wire24)), wire24} ?
              {reg46,
                  $unsigned($unsigned(reg53))} : {(reg54[(2'h3):(2'h2)] >>> wire66)}) : (~(^reg49)));
    end
  module96 modinst122 (.clk(clk), .wire100(reg65), .y(wire121), .wire97(reg50), .wire98(wire66), .wire99(reg49));
  assign wire123 = (~^reg64);
  assign wire124 = $unsigned((reg48[(1'h0):(1'h0)] > reg55[(2'h3):(1'h0)]));
  assign wire125 = reg63[(2'h2):(2'h2)];
  assign wire126 = (~|wire66[(1'h0):(1'h0)]);
  module127 modinst139 (wire138, clk, reg56, wire93, reg53, reg48, reg65);
  module140 modinst152 (.wire142(wire23), .wire143(reg48), .wire144(reg61), .y(wire151), .clk(clk), .wire141(wire26));
  assign wire153 = ({(8'hb2)} ?
                       (({wire60[(2'h2):(1'h0)],
                           (~wire151)} > $signed({reg95})) >> (((^~reg64) != wire26) ?
                           (~&(reg50 <<< reg61)) : reg51)) : $signed((~|((~(8'hbd)) ?
                           (~wire92) : reg61[(3'h5):(3'h4)]))));
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module140
#( parameter param149 = (((!(7'h43)) ? ((~|{(8'hb2), (8'ha2)}) ^~ (^~{(8'hb4)})) : {(~|((8'hb0) >= (8'hae)))}) ~^ (8'ha0))
, parameter param150 = param149 )
(y, clk, wire144, wire143, wire142, wire141);
  output wire [(32'h1e):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(3'h6):(1'h0)] wire144;
  input wire [(4'hc):(1'h0)] wire143;
  input wire [(2'h2):(1'h0)] wire142;
  input wire signed [(3'h5):(1'h0)] wire141;
  wire signed [(4'h8):(1'h0)] wire148;
  wire signed [(3'h4):(1'h0)] wire147;
  wire [(3'h7):(1'h0)] wire146;
  wire [(4'ha):(1'h0)] wire145;
  assign y = {wire148, wire147, wire146, wire145, (1'h0)};
  assign wire145 = wire144[(2'h2):(1'h0)];
  assign wire146 = $signed($unsigned(($unsigned(wire142) >> ($signed(wire144) ?
                       (|wire143) : (wire143 ? wire144 : wire144)))));
  assign wire147 = ($signed(wire145) ?
                       {(wire146 ? $unsigned((~wire143)) : (!wire146)),
                           (-($unsigned(wire146) | (wire145 == wire145)))} : wire143);
  assign wire148 = (~|((~|$signed(wire147)) ?
                       wire141[(2'h2):(2'h2)] : wire143));
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module127
#( parameter param137 = (~&((~^(((8'hba) ? (7'h40) : (8'ha2)) <<< ((8'ha9) - (8'hb2)))) > {{(+(8'hb8))}, {(+(8'hab))}})) )
(y, clk, wire132, wire131, wire130, wire129, wire128);
  output wire [(32'h36):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(4'h8):(1'h0)] wire132;
  input wire signed [(5'h13):(1'h0)] wire131;
  input wire signed [(4'hf):(1'h0)] wire130;
  input wire signed [(5'h10):(1'h0)] wire129;
  input wire signed [(3'h6):(1'h0)] wire128;
  wire signed [(5'h14):(1'h0)] wire136;
  wire [(5'h11):(1'h0)] wire135;
  wire signed [(4'he):(1'h0)] wire134;
  wire [(2'h2):(1'h0)] wire133;
  assign y = {wire136, wire135, wire134, wire133, (1'h0)};
  assign wire133 = (wire131[(1'h0):(1'h0)] ?
                       ((8'ha7) ?
                           wire130[(4'h8):(3'h6)] : $signed(wire128)) : $signed((~$unsigned((wire129 ?
                           wire129 : (8'hb7))))));
  assign wire134 = {({wire131[(4'he):(4'hd)]} >= (wire132[(3'h7):(1'h1)] ?
                           $unsigned((wire130 ?
                               wire131 : wire128)) : {(^~wire130)})),
                       wire131};
  assign wire135 = (^wire131);
  assign wire136 = wire128[(2'h3):(2'h2)];
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module96
#( parameter param120 = (({((~|(8'hb2)) ? (!(7'h40)) : {(8'ha2)})} ? ({(8'ha7), (&(8'ha0))} ^ (|{(8'haa)})) : (((+(8'hb5)) <<< ((8'hb2) == (7'h43))) == ((^~(8'hbc)) + (!(8'hbd))))) << ((-(+(|(7'h44)))) << ((((7'h44) ? (8'ha3) : (8'ha3)) <= ((7'h41) ? (8'hb7) : (7'h42))) * (((8'ha7) ? (8'hb5) : (8'hbd)) ^ (7'h43))))) )
(y, clk, wire100, wire99, wire98, wire97);
  output wire [(32'h112):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(5'h13):(1'h0)] wire100;
  input wire signed [(4'hb):(1'h0)] wire99;
  input wire signed [(4'hf):(1'h0)] wire98;
  input wire signed [(3'h4):(1'h0)] wire97;
  reg [(3'h4):(1'h0)] reg119 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg118 = (1'h0);
  wire signed [(5'h13):(1'h0)] wire117;
  wire [(5'h10):(1'h0)] wire116;
  wire [(4'hf):(1'h0)] wire115;
  reg [(3'h7):(1'h0)] reg114 = (1'h0);
  reg signed [(5'h12):(1'h0)] reg113 = (1'h0);
  reg [(5'h11):(1'h0)] reg112 = (1'h0);
  reg signed [(5'h12):(1'h0)] reg111 = (1'h0);
  reg [(4'hd):(1'h0)] reg110 = (1'h0);
  reg [(4'hf):(1'h0)] reg109 = (1'h0);
  wire [(5'h10):(1'h0)] wire108;
  reg [(3'h5):(1'h0)] reg107 = (1'h0);
  reg [(5'h15):(1'h0)] reg106 = (1'h0);
  reg signed [(4'hf):(1'h0)] reg105 = (1'h0);
  reg signed [(5'h11):(1'h0)] reg104 = (1'h0);
  wire [(5'h15):(1'h0)] wire103;
  wire [(3'h7):(1'h0)] wire102;
  wire [(4'h8):(1'h0)] wire101;
  assign y = {reg119,
                 reg118,
                 wire117,
                 wire116,
                 wire115,
                 reg114,
                 reg113,
                 reg112,
                 reg111,
                 reg110,
                 reg109,
                 wire108,
                 reg107,
                 reg106,
                 reg105,
                 reg104,
                 wire103,
                 wire102,
                 wire101,
                 (1'h0)};
  assign wire101 = $unsigned((wire97 >> $unsigned(wire99)));
  assign wire102 = {(&(wire100 ? wire99[(4'h8):(2'h3)] : {$unsigned(wire98)})),
                       (^{{(8'ha7), $signed((8'hab))}})};
  assign wire103 = wire100[(4'hb):(4'hb)];
  always
    @(posedge clk) begin
      reg104 <= (8'ha0);
      if ((8'ha9))
        begin
          reg105 <= $unsigned(((+(!(wire98 & wire99))) > wire99));
        end
      else
        begin
          reg105 <= $signed($signed((((^~(8'ha7)) || $signed(wire100)) <= (^~{wire99}))));
          reg106 <= $unsigned($unsigned({(-wire98), $unsigned({wire103})}));
          reg107 <= ($unsigned(wire102) ? (&(&reg106)) : wire98);
        end
    end
  assign wire108 = wire98;
  always
    @(posedge clk) begin
      if (reg106)
        begin
          reg109 <= reg107[(2'h2):(1'h0)];
        end
      else
        begin
          reg109 <= reg107[(3'h5):(1'h1)];
          reg110 <= (((^$unsigned($unsigned(wire100))) ?
                  wire99[(3'h4):(2'h2)] : $unsigned($unsigned((wire98 ?
                      reg107 : wire101)))) ?
              $unsigned($unsigned($signed((^~reg104)))) : reg106[(5'h14):(2'h2)]);
          reg111 <= wire97[(1'h1):(1'h1)];
          reg112 <= wire97;
        end
      reg113 <= reg106;
      reg114 <= reg113[(3'h5):(3'h5)];
    end
  assign wire115 = (((~^{$unsigned(reg110), $unsigned(reg107)}) * ({((8'hb3) ?
                                   (8'ha6) : (8'h9f))} ?
                           ((wire98 ? reg105 : reg113) ?
                               $signed(wire100) : wire100[(3'h7):(2'h3)]) : (&wire101[(1'h0):(1'h0)]))) ?
                       (!reg107[(1'h1):(1'h0)]) : wire103);
  assign wire116 = (&wire108);
  assign wire117 = (reg104[(4'hb):(3'h7)] * $unsigned(($signed({wire102,
                       reg111}) < (^~reg113[(4'hc):(1'h1)]))));
  always
    @(posedge clk) begin
      reg118 <= {wire102[(1'h0):(1'h0)]};
      reg119 <= wire99[(3'h4):(2'h3)];
    end
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module67
#( parameter param89 = (({(((8'hba) * (8'hb0)) ? (~|(8'hac)) : ((8'hbf) * (7'h41))), {((8'ha8) <<< (7'h41)), ((8'ha6) ? (8'hae) : (8'ha9))}} >= (^(|((8'hbd) <= (8'hb6))))) ? ({{((8'haf) ? (8'hb8) : (8'ha4))}} ? ((-(~(8'hb8))) <= ((8'ha3) ? (8'ha4) : ((7'h43) ? (7'h41) : (8'hb0)))) : (|(~{(8'hb6)}))) : ((~^(-((8'ha0) ? (8'hb9) : (8'hb9)))) | ((((8'ha0) ^ (8'ha9)) & {(8'h9d), (8'ha2)}) ~^ {((8'ha7) ? (8'ha7) : (8'hbf)), ((8'hbe) & (7'h40))}))) )
(y, clk, wire71, wire70, wire69, wire68);
  output wire [(32'hbe):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(4'hd):(1'h0)] wire71;
  input wire signed [(2'h2):(1'h0)] wire70;
  input wire signed [(5'h14):(1'h0)] wire69;
  input wire signed [(5'h14):(1'h0)] wire68;
  wire signed [(2'h2):(1'h0)] wire88;
  wire [(2'h2):(1'h0)] wire87;
  reg signed [(3'h5):(1'h0)] reg86 = (1'h0);
  wire [(4'h9):(1'h0)] wire85;
  reg [(5'h15):(1'h0)] reg84 = (1'h0);
  reg signed [(5'h14):(1'h0)] reg83 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg82 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg81 = (1'h0);
  reg [(4'he):(1'h0)] reg80 = (1'h0);
  reg [(3'h5):(1'h0)] reg79 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg78 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg77 = (1'h0);
  reg [(5'h14):(1'h0)] reg76 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg75 = (1'h0);
  reg [(3'h6):(1'h0)] reg74 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg73 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg72 = (1'h0);
  assign y = {wire88,
                 wire87,
                 reg86,
                 wire85,
                 reg84,
                 reg83,
                 reg82,
                 reg81,
                 reg80,
                 reg79,
                 reg78,
                 reg77,
                 reg76,
                 reg75,
                 reg74,
                 reg73,
                 reg72,
                 (1'h0)};
  always
    @(posedge clk) begin
      reg72 <= wire71;
      reg73 <= ({(~|(~&{wire68, wire70}))} * (8'hb2));
      if (($signed((wire70[(1'h1):(1'h0)] | $signed(wire69[(3'h7):(3'h4)]))) ?
          {($signed(wire71[(4'h8):(4'h8)]) == reg72)} : ({$unsigned((reg73 ^ reg72))} ?
              (wire68[(3'h4):(2'h3)] ^~ {(~reg72)}) : reg73)))
        begin
          reg74 <= $unsigned($signed($signed(reg72[(2'h2):(2'h2)])));
          if ({{(~^wire69)}, (8'hab)})
            begin
              reg75 <= (reg73[(3'h6):(1'h1)] ?
                  $signed($unsigned(reg72[(1'h1):(1'h0)])) : (-((wire71 <<< ((8'haf) ?
                      wire69 : reg72)) <<< $signed((wire68 ?
                      (8'ha6) : reg74)))));
              reg76 <= reg73;
              reg77 <= (-((reg73[(5'h12):(4'hf)] & reg76[(3'h6):(3'h6)]) | $signed($unsigned((|reg73)))));
              reg78 <= $signed(wire69);
            end
          else
            begin
              reg75 <= (((!(^~reg76)) ?
                      (7'h42) : {(-((8'hac) ? reg73 : reg76)), wire71}) ?
                  reg72 : (+$signed(((~reg75) < $signed(reg72)))));
              reg76 <= (+reg75);
              reg77 <= {reg75, reg73[(4'ha):(4'ha)]};
              reg78 <= ($unsigned($signed($signed(reg77[(4'ha):(3'h5)]))) ?
                  reg77[(2'h3):(2'h3)] : reg78[(2'h3):(1'h0)]);
              reg79 <= (($unsigned(((reg72 ? wire69 : wire69) + {reg78,
                      reg76})) ?
                  (8'hb8) : {reg72[(1'h0):(1'h0)],
                      ((reg72 >>> wire69) ?
                          (8'haf) : $signed(reg78))}) != $unsigned(reg74[(2'h3):(2'h2)]));
            end
          reg80 <= reg76;
          reg81 <= wire69[(5'h12):(3'h7)];
          reg82 <= reg73[(3'h4):(2'h2)];
        end
      else
        begin
          reg74 <= reg78[(3'h4):(1'h0)];
          if (((8'hae) ?
              $unsigned(((((8'hb0) && reg82) ?
                      (reg79 ? reg73 : (8'hbf)) : wire69) ?
                  (~^reg81) : {$signed((7'h40)),
                      (reg74 ? reg77 : reg78)})) : {(reg82 ?
                      $unsigned($unsigned(reg79)) : $signed(wire70[(1'h1):(1'h0)]))}))
            begin
              reg75 <= $signed(({(~$unsigned(reg82)),
                  wire71} ^ reg81[(5'h12):(3'h5)]));
              reg76 <= (~&((~(reg80 <= reg73[(4'he):(4'hb)])) != $unsigned($signed(reg79[(2'h2):(2'h2)]))));
              reg77 <= $signed(wire69[(1'h0):(1'h0)]);
            end
          else
            begin
              reg75 <= (7'h42);
              reg76 <= (wire71[(3'h4):(2'h3)] > {({$signed(reg78),
                          $signed(reg72)} ?
                      $signed($unsigned(wire70)) : $signed(reg72)),
                  ($signed((|reg73)) <<< $unsigned((reg76 <= reg78)))});
              reg77 <= {(((~|(~|reg77)) ?
                          ((wire69 >> wire71) ?
                              (~&(8'h9e)) : reg73[(1'h1):(1'h1)]) : $unsigned((reg81 ?
                              reg79 : wire69))) ?
                      wire69 : (~^({reg82, reg75} > reg72[(3'h4):(2'h3)]))),
                  (((8'ha3) && {(+(8'ha4)),
                      ((8'ha0) ? wire71 : reg82)}) ^~ $unsigned(((reg73 ?
                          reg73 : reg72) ?
                      (wire68 >= reg73) : {reg75})))};
              reg78 <= $unsigned($unsigned((~^reg80[(4'h9):(3'h7)])));
              reg79 <= reg82[(2'h2):(1'h1)];
            end
          reg80 <= $signed(reg79[(1'h0):(1'h0)]);
        end
      reg83 <= reg79[(1'h0):(1'h0)];
      reg84 <= (~$signed($signed($unsigned((reg79 << wire69)))));
    end
  assign wire85 = {reg83[(5'h12):(3'h7)]};
  always
    @(posedge clk) begin
      reg86 <= {reg78, reg81};
    end
  assign wire87 = $unsigned(wire85[(2'h3):(2'h2)]);
  assign wire88 = reg83;
endmodule

(* use_dsp48="no" *) (* use_dsp="no" *) module module27  (y, clk, wire31, wire30, wire29, wire28);
  output wire [(32'h6c):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(4'hc):(1'h0)] wire31;
  input wire [(4'hd):(1'h0)] wire30;
  input wire [(4'hb):(1'h0)] wire29;
  input wire [(4'he):(1'h0)] wire28;
  wire [(5'h12):(1'h0)] wire41;
  wire signed [(4'hb):(1'h0)] wire40;
  wire signed [(4'h9):(1'h0)] wire39;
  wire signed [(3'h4):(1'h0)] wire38;
  reg signed [(5'h14):(1'h0)] reg37 = (1'h0);
  reg [(4'h8):(1'h0)] reg36 = (1'h0);
  wire [(4'hb):(1'h0)] wire35;
  reg [(3'h5):(1'h0)] reg34 = (1'h0);
  reg [(3'h6):(1'h0)] reg33 = (1'h0);
  wire [(4'hf):(1'h0)] wire32;
  assign y = {wire41,
                 wire40,
                 wire39,
                 wire38,
                 reg37,
                 reg36,
                 wire35,
                 reg34,
                 reg33,
                 wire32,
                 (1'h0)};
  assign wire32 = wire31[(4'h9):(3'h5)];
  always
    @(posedge clk) begin
      reg33 <= $signed((wire29[(1'h1):(1'h1)] <= wire31));
      reg34 <= wire30;
    end
  assign wire35 = (~(8'ha1));
  always
    @(posedge clk) begin
      reg36 <= ((~$signed($signed(reg34))) ?
          $unsigned(wire32) : (wire28[(1'h0):(1'h0)] ^~ (!((wire28 ?
              wire30 : wire29) > (wire32 ? reg33 : (8'h9f))))));
      reg37 <= (-(wire28[(4'hb):(2'h3)] ?
          ($signed(((8'ha6) * (8'haf))) ?
              (wire28[(4'h9):(3'h5)] != wire28) : (reg34[(2'h3):(2'h3)] * wire29)) : ((reg33[(2'h3):(2'h2)] ?
                  wire35 : (wire30 ? wire30 : wire32)) ?
              reg33[(2'h3):(1'h0)] : $signed((^wire28)))));
    end
  assign wire38 = ((!$unsigned(((wire31 ?
                          wire31 : reg34) ^~ $unsigned(reg34)))) ?
                      wire28 : wire30);
  assign wire39 = ($signed((wire32 ? reg34[(2'h2):(1'h0)] : wire29)) != wire32);
  assign wire40 = {{({(wire31 ^~ wire35), (~(8'hb6))} == $unsigned({wire29})),
                          {(~(reg33 + reg36))}}};
  assign wire41 = $unsigned(wire30);
endmodule
