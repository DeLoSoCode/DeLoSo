(*use_dsp48="no"*)(*use_dsp="no"*)
module top  (y, clk, wire3, wire2, wire1, wire0);
  output wire [(32'h101):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(3'h7):(1'h0)] wire3;
  input wire [(4'ha):(1'h0)] wire2;
  input wire [(5'h15):(1'h0)] wire1;
  input wire signed [(4'hf):(1'h0)] wire0;
  wire signed [(5'h11):(1'h0)] wire208;
  wire [(4'hf):(1'h0)] wire207;
  wire [(3'h5):(1'h0)] wire206;
  wire signed [(5'h13):(1'h0)] wire205;
  wire [(4'hb):(1'h0)] wire204;
  wire signed [(5'h11):(1'h0)] wire203;
  wire signed [(3'h6):(1'h0)] wire202;
  wire signed [(4'hf):(1'h0)] wire201;
  wire signed [(5'h12):(1'h0)] wire200;
  wire signed [(4'ha):(1'h0)] wire198;
  wire [(5'h15):(1'h0)] wire196;
  wire [(5'h10):(1'h0)] wire10;
  wire signed [(5'h13):(1'h0)] wire9;
  wire signed [(4'hf):(1'h0)] wire8;
  wire [(3'h4):(1'h0)] wire7;
  wire [(5'h10):(1'h0)] wire6;
  wire signed [(5'h12):(1'h0)] wire5;
  wire signed [(4'he):(1'h0)] wire4;
  assign y = {wire208,
                 wire207,
                 wire206,
                 wire205,
                 wire204,
                 wire203,
                 wire202,
                 wire201,
                 wire200,
                 wire198,
                 wire196,
                 wire10,
                 wire9,
                 wire8,
                 wire7,
                 wire6,
                 wire5,
                 wire4,
                 (1'h0)};
  assign wire4 = $unsigned((~|{(+$signed(wire3)), {$signed(wire3)}}));
  assign wire5 = wire0[(4'hc):(1'h0)];
  assign wire6 = $unsigned((&wire0[(2'h2):(1'h0)]));
  assign wire7 = $unsigned((wire0[(3'h4):(1'h0)] ?
                     ($unsigned($signed((8'hb7))) ?
                         ((wire5 >> (8'ha1)) ?
                             {wire3,
                                 wire4} : $unsigned(wire2)) : $signed(wire0)) : $signed($unsigned($unsigned((8'hb1))))));
  assign wire8 = (!($signed($unsigned((^wire6))) == $signed((+{wire4,
                     wire1}))));
  assign wire9 = $unsigned($unsigned(wire7));
  assign wire10 = (^~(8'hb0));
  module11 #() modinst197 (.wire13(wire0), .y(wire196), .wire12(wire8), .wire14(wire10), .clk(clk), .wire15(wire5));
  module140 #() modinst199 (wire198, clk, wire1, wire5, wire196, wire9);
  assign wire200 = (wire4[(4'hc):(4'hb)] ?
                       (8'hb9) : {(($unsigned(wire8) ?
                               $signed(wire7) : {wire196}) ~^ (((8'ha8) ?
                                   wire10 : wire3) ?
                               wire3[(3'h7):(1'h1)] : wire2))});
  assign wire201 = (!(~|wire200[(4'h9):(2'h3)]));
  assign wire202 = $signed($unsigned(($unsigned(((8'hb3) >> (8'hb2))) ?
                       $unsigned((wire0 ? wire3 : wire10)) : (8'ha2))));
  assign wire203 = (wire3 ?
                       $signed((((^~wire201) >> (!wire9)) ?
                           ((&wire6) ?
                               wire1[(5'h11):(4'hf)] : wire10) : ($signed(wire9) * wire4[(4'ha):(3'h5)]))) : {{$signed((+wire200))},
                           wire5});
  assign wire204 = $signed((($unsigned(wire10[(3'h6):(2'h2)]) < $unsigned(((8'h9f) ?
                           wire9 : wire196))) ?
                       ((((7'h43) ? (8'hba) : (7'h40)) & wire3[(2'h2):(1'h1)]) ?
                           wire10 : wire2[(3'h7):(1'h1)]) : (((wire8 ?
                           (7'h41) : wire7) << $signed(wire200)) ^~ (~{wire198,
                           wire10}))));
  assign wire205 = ($signed($unsigned(wire5)) ?
                       $unsigned($signed($unsigned($signed(wire4)))) : wire204);
  assign wire206 = (~|wire5);
  assign wire207 = (^~{(wire10[(1'h0):(1'h0)] || $signed(((8'hbd) ^~ wire4)))});
  assign wire208 = {wire202[(1'h1):(1'h1)], $unsigned(wire7)};
endmodule

module module11  (y, clk, wire15, wire14, wire13, wire12);
  output wire [(32'h118):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(5'h12):(1'h0)] wire15;
  input wire [(5'h10):(1'h0)] wire14;
  input wire signed [(4'hf):(1'h0)] wire13;
  input wire signed [(2'h3):(1'h0)] wire12;
  wire signed [(4'ha):(1'h0)] wire138;
  wire [(4'h9):(1'h0)] wire122;
  wire signed [(4'hc):(1'h0)] wire51;
  wire signed [(5'h15):(1'h0)] wire22;
  wire [(4'h8):(1'h0)] wire21;
  wire [(4'h8):(1'h0)] wire20;
  wire [(5'h13):(1'h0)] wire19;
  wire [(4'hb):(1'h0)] wire18;
  wire signed [(3'h7):(1'h0)] wire17;
  wire signed [(5'h15):(1'h0)] wire16;
  wire [(5'h14):(1'h0)] wire53;
  wire [(5'h14):(1'h0)] wire54;
  wire [(4'h9):(1'h0)] wire55;
  wire signed [(4'hd):(1'h0)] wire58;
  wire signed [(5'h12):(1'h0)] wire59;
  wire [(5'h12):(1'h0)] wire86;
  wire [(4'hd):(1'h0)] wire120;
  wire signed [(4'hf):(1'h0)] wire194;
  reg [(5'h13):(1'h0)] reg57 = (1'h0);
  reg [(4'h8):(1'h0)] reg56 = (1'h0);
  assign y = {wire138,
                 wire122,
                 wire51,
                 wire22,
                 wire21,
                 wire20,
                 wire19,
                 wire18,
                 wire17,
                 wire16,
                 wire53,
                 wire54,
                 wire55,
                 wire58,
                 wire59,
                 wire86,
                 wire120,
                 wire194,
                 reg57,
                 reg56,
                 (1'h0)};
  assign wire16 = wire15[(3'h6):(1'h0)];
  assign wire17 = $unsigned((($unsigned($unsigned(wire16)) ?
                      wire12[(2'h3):(2'h3)] : $unsigned((wire14 == wire14))) & (-(~&(wire15 ?
                      wire16 : wire16)))));
  assign wire18 = {$unsigned(wire15), $signed(((8'hb9) || (~^wire16)))};
  assign wire19 = wire17;
  assign wire20 = wire15;
  assign wire21 = (wire13[(3'h4):(3'h4)] ? $unsigned(wire15) : (~^wire19));
  assign wire22 = $signed({(wire21[(1'h1):(1'h0)] * $unsigned(((8'had) ?
                          wire19 : (8'ha2)))),
                      $unsigned(wire12[(1'h0):(1'h0)])});
  module23 #() modinst52 (.clk(clk), .y(wire51), .wire25(wire16), .wire28(wire22), .wire26(wire14), .wire27(wire19), .wire24(wire17));
  assign wire53 = $unsigned((~|wire17[(3'h4):(3'h4)]));
  assign wire54 = {$unsigned($signed($unsigned((wire15 >>> wire15))))};
  assign wire55 = ({(!((wire18 << (8'hb3)) ?
                              (wire14 ?
                                  wire22 : wire22) : wire51[(3'h6):(2'h3)])),
                          ((^$signed(wire15)) > (~(wire17 && (8'hbe))))} ?
                      (!wire21[(2'h2):(2'h2)]) : (|{($signed(wire15) ?
                              wire53[(3'h4):(1'h0)] : (^~wire14)),
                          wire13[(3'h5):(2'h3)]}));
  always
    @(posedge clk) begin
      reg56 <= wire15[(2'h2):(2'h2)];
      reg57 <= ((~|wire20[(4'h8):(3'h4)]) > $unsigned((wire19 ?
          {(wire12 ? (8'ha9) : (7'h42))} : {(wire13 >>> wire51)})));
    end
  assign wire58 = ($unsigned((~$signed(wire51[(4'ha):(2'h3)]))) ?
                      (wire53 + (!$signed($unsigned(wire15)))) : wire12);
  assign wire59 = ($signed(wire22[(4'hb):(2'h2)]) ?
                      wire17 : wire18[(3'h5):(1'h1)]);
  module60 #() modinst87 (wire86, clk, reg56, wire14, wire22, wire16, wire54);
  module88 #() modinst121 (.wire91(wire19), .wire90(wire53), .wire93(wire22), .wire89(wire15), .y(wire120), .wire92(wire16), .clk(clk));
  assign wire122 = ((wire86[(4'ha):(3'h7)] - (wire19[(4'h9):(1'h0)] + ($unsigned(wire86) ?
                       (~^wire18) : (wire16 > wire53)))) || $signed((8'hb9)));
  module123 #() modinst139 (.wire128(wire51), .wire124(wire18), .clk(clk), .wire125(wire86), .wire126(wire120), .y(wire138), .wire127(wire54));
  module140 #() modinst195 (wire194, clk, wire22, wire54, wire59, reg57);
endmodule

module module140  (y, clk, wire144, wire143, wire142, wire141);
  output wire [(32'h228):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(5'h15):(1'h0)] wire144;
  input wire signed [(4'he):(1'h0)] wire143;
  input wire signed [(5'h12):(1'h0)] wire142;
  input wire signed [(5'h13):(1'h0)] wire141;
  wire signed [(4'h8):(1'h0)] wire193;
  wire signed [(5'h10):(1'h0)] wire192;
  wire signed [(4'hf):(1'h0)] wire191;
  wire signed [(5'h12):(1'h0)] wire190;
  wire signed [(4'h9):(1'h0)] wire189;
  wire signed [(5'h15):(1'h0)] wire188;
  wire [(4'hb):(1'h0)] wire186;
  wire [(5'h14):(1'h0)] wire168;
  wire [(5'h12):(1'h0)] wire167;
  wire signed [(5'h10):(1'h0)] wire166;
  wire [(2'h2):(1'h0)] wire145;
  reg signed [(4'hc):(1'h0)] reg187 = (1'h0);
  reg [(4'h8):(1'h0)] reg185 = (1'h0);
  reg [(2'h3):(1'h0)] reg184 = (1'h0);
  reg [(4'hb):(1'h0)] reg183 = (1'h0);
  reg [(4'hc):(1'h0)] reg182 = (1'h0);
  reg [(3'h4):(1'h0)] reg181 = (1'h0);
  reg signed [(2'h3):(1'h0)] reg180 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg179 = (1'h0);
  reg [(5'h13):(1'h0)] reg178 = (1'h0);
  reg signed [(3'h6):(1'h0)] reg177 = (1'h0);
  reg signed [(4'ha):(1'h0)] reg176 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg175 = (1'h0);
  reg signed [(4'hc):(1'h0)] reg174 = (1'h0);
  reg [(4'h8):(1'h0)] reg173 = (1'h0);
  reg [(4'h9):(1'h0)] reg172 = (1'h0);
  reg [(3'h7):(1'h0)] reg171 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg170 = (1'h0);
  reg signed [(4'h9):(1'h0)] reg169 = (1'h0);
  reg signed [(4'he):(1'h0)] reg165 = (1'h0);
  reg [(2'h2):(1'h0)] reg164 = (1'h0);
  reg signed [(4'hf):(1'h0)] reg163 = (1'h0);
  reg [(5'h15):(1'h0)] reg162 = (1'h0);
  reg [(3'h6):(1'h0)] reg161 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg160 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg159 = (1'h0);
  reg [(5'h15):(1'h0)] reg158 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg157 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg156 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg155 = (1'h0);
  reg [(5'h13):(1'h0)] reg154 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg153 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg152 = (1'h0);
  reg [(5'h13):(1'h0)] reg151 = (1'h0);
  reg signed [(4'hf):(1'h0)] reg150 = (1'h0);
  reg signed [(2'h3):(1'h0)] reg149 = (1'h0);
  reg [(5'h15):(1'h0)] reg148 = (1'h0);
  reg signed [(3'h5):(1'h0)] reg147 = (1'h0);
  reg [(5'h10):(1'h0)] reg146 = (1'h0);
  assign y = {wire193,
                 wire192,
                 wire191,
                 wire190,
                 wire189,
                 wire188,
                 wire186,
                 wire168,
                 wire167,
                 wire166,
                 wire145,
                 reg187,
                 reg185,
                 reg184,
                 reg183,
                 reg182,
                 reg181,
                 reg180,
                 reg179,
                 reg178,
                 reg177,
                 reg176,
                 reg175,
                 reg174,
                 reg173,
                 reg172,
                 reg171,
                 reg170,
                 reg169,
                 reg165,
                 reg164,
                 reg163,
                 reg162,
                 reg161,
                 reg160,
                 reg159,
                 reg158,
                 reg157,
                 reg156,
                 reg155,
                 reg154,
                 reg153,
                 reg152,
                 reg151,
                 reg150,
                 reg149,
                 reg148,
                 reg147,
                 reg146,
                 (1'h0)};
  assign wire145 = (~|($unsigned(wire144) * ($signed(wire142[(3'h7):(3'h5)]) ?
                       (!$signed(wire141)) : $signed($signed(wire142)))));
  always
    @(posedge clk) begin
      if (wire145[(1'h1):(1'h0)])
        begin
          if (wire145)
            begin
              reg146 <= (~^wire142);
              reg147 <= wire141[(3'h7):(2'h2)];
              reg148 <= (wire144 ?
                  ((^(~&$signed(reg147))) ?
                      (~&(wire143 ?
                          (~^wire141) : (8'hbd))) : (~^{wire142[(3'h5):(1'h0)]})) : reg147);
            end
          else
            begin
              reg146 <= $signed(reg147);
              reg147 <= reg147[(3'h4):(1'h0)];
              reg148 <= $unsigned(wire141);
              reg149 <= wire144[(5'h15):(2'h3)];
              reg150 <= reg149[(2'h2):(2'h2)];
            end
          if ($signed($signed(($unsigned($signed(wire143)) ?
              $unsigned({reg150, wire145}) : reg147))))
            begin
              reg151 <= (~^$unsigned((reg148[(5'h11):(2'h2)] ?
                  reg147[(1'h1):(1'h1)] : (&{reg147, wire144}))));
              reg152 <= reg150[(2'h2):(1'h0)];
            end
          else
            begin
              reg151 <= (~($unsigned(((!reg151) ?
                      ((8'ha2) ^~ reg146) : $unsigned(reg150))) ?
                  (reg150 ?
                      $unsigned({wire142,
                          reg148}) : (reg146[(3'h5):(3'h5)] >>> (reg148 >>> wire141))) : (8'hbf)));
              reg152 <= (~^(~$signed(({reg146} || {wire141}))));
              reg153 <= (reg148 == ((-reg147) ?
                  $unsigned(($signed(wire143) <= (~&reg151))) : $signed($unsigned((wire143 >>> (8'hac))))));
              reg154 <= ($signed((^($signed(reg152) ?
                      $signed(reg153) : (reg148 ? (7'h43) : wire143)))) ?
                  (($unsigned($signed(wire145)) != wire142[(4'ha):(3'h5)]) ?
                      reg152[(2'h2):(1'h0)] : $unsigned({wire145[(1'h1):(1'h0)]})) : $unsigned(wire143[(4'h9):(3'h5)]));
            end
          if ($unsigned(wire144[(1'h0):(1'h0)]))
            begin
              reg155 <= $signed((((!$signed(reg147)) ?
                  ($unsigned(reg151) <<< $unsigned(wire143)) : reg154) ~^ wire142));
              reg156 <= (^~(reg149[(1'h0):(1'h0)] ^ (|$unsigned(reg152[(1'h0):(1'h0)]))));
            end
          else
            begin
              reg155 <= $unsigned(reg151[(1'h0):(1'h0)]);
            end
        end
      else
        begin
          reg146 <= $unsigned((reg148 ? wire141 : (8'ha3)));
          reg147 <= (~^wire141[(3'h7):(2'h2)]);
          reg148 <= ($unsigned($unsigned(((8'ha2) ?
              wire145 : wire144[(3'h4):(2'h2)]))) & {reg147[(3'h5):(2'h2)]});
          if ((^~(reg151 ^ $unsigned(wire144[(1'h1):(1'h1)]))))
            begin
              reg149 <= (~&reg149[(1'h1):(1'h0)]);
              reg150 <= wire141;
            end
          else
            begin
              reg149 <= $unsigned(wire145[(2'h2):(2'h2)]);
              reg150 <= ((reg147 & ($unsigned($unsigned(wire141)) <<< $unsigned($signed(reg151)))) ?
                  ($unsigned(reg146[(4'he):(4'hb)]) ^~ (reg149 >>> reg153)) : {(wire142 ?
                          ({reg146} << $signed(reg155)) : {{wire141,
                                  wire143}})});
              reg151 <= (({$unsigned((wire141 ? wire141 : (8'h9c))),
                          {(+wire144)}} ?
                      ((&wire144[(4'he):(2'h2)]) ?
                          {$signed(reg151)} : ({wire145, reg156} ?
                              reg148 : {wire143})) : wire143[(4'he):(4'h9)]) ?
                  reg150 : reg156[(2'h2):(1'h1)]);
            end
          reg152 <= reg155[(1'h1):(1'h0)];
        end
      if ($signed($unsigned((~(&$signed(reg147))))))
        begin
          if ($unsigned(((+(|{reg150})) ?
              ($unsigned(reg154) ^ $unsigned(wire141)) : reg149[(1'h0):(1'h0)])))
            begin
              reg157 <= (~&$unsigned((wire143 >>> reg153)));
            end
          else
            begin
              reg157 <= (((($signed(wire142) ?
                  (reg149 & reg154) : {reg156,
                      wire141}) < $signed({(8'ha4)})) << (reg157 ?
                  wire144 : $signed({wire144,
                      wire142}))) ~^ (~&(^~(~|$unsigned(reg151)))));
              reg158 <= (-(8'ha7));
              reg159 <= (reg157 >> reg149[(2'h3):(2'h3)]);
              reg160 <= reg156;
              reg161 <= $signed((&($signed((reg149 ?
                  wire145 : reg158)) + wire144)));
            end
          reg162 <= $unsigned((8'hb1));
          reg163 <= (8'hb7);
          reg164 <= $signed({(reg148 >> {$unsigned(wire141)})});
          reg165 <= reg159;
        end
      else
        begin
          reg157 <= (wire143[(4'he):(4'h9)] > ({(&(reg151 ? reg165 : wire142)),
              $signed($unsigned(reg146))} >>> ({(-(8'hb3)), reg150} ?
              (~&reg151) : $unsigned({(8'hb4)}))));
        end
    end
  assign wire166 = (~$unsigned($signed(reg149)));
  assign wire167 = {(reg149[(2'h3):(1'h1)] ?
                           ((-reg154[(1'h0):(1'h0)]) ?
                               ((reg160 ? reg148 : (8'h9c)) ?
                                   $unsigned(reg146) : (wire143 | (8'hbe))) : ($signed(reg162) ?
                                   (~&(8'hb8)) : (~^(8'hb6)))) : ((~reg159) ?
                               $unsigned(reg146[(3'h5):(3'h4)]) : $signed({(8'ha2)}))),
                       $signed(reg160[(3'h4):(2'h2)])};
  assign wire168 = reg161[(2'h3):(1'h1)];
  always
    @(posedge clk) begin
      if (reg153)
        begin
          reg169 <= wire143;
          if ($signed(wire167[(2'h3):(2'h2)]))
            begin
              reg170 <= ((reg147[(2'h2):(2'h2)] != ((reg162[(3'h5):(2'h2)] >>> $unsigned(wire167)) >= reg152[(2'h3):(2'h2)])) ?
                  ($signed($unsigned($unsigned((8'ha2)))) && reg153[(4'h8):(3'h6)]) : (!wire166));
              reg171 <= {$unsigned(({reg169[(1'h1):(1'h0)]} >>> reg154[(4'hc):(1'h1)])),
                  $unsigned($signed(reg170))};
              reg172 <= reg162[(2'h3):(2'h2)];
              reg173 <= (wire142 != $signed(($signed($signed((8'hb7))) ?
                  wire168 : (((8'hbc) ? reg172 : reg159) ?
                      (^~reg149) : (reg146 ? (8'hb0) : reg169)))));
              reg174 <= reg149;
            end
          else
            begin
              reg170 <= $unsigned(((&($unsigned(wire145) ?
                  {reg158,
                      reg169} : (reg160 == wire167))) != $signed($signed((reg163 ?
                  wire145 : wire166)))));
              reg171 <= $unsigned($unsigned((((~|reg154) ~^ (reg158 ?
                      reg154 : (8'ha1))) ?
                  {$signed(wire142)} : $unsigned((~reg153)))));
            end
          reg175 <= $signed(reg146[(4'hd):(3'h6)]);
          reg176 <= reg173[(3'h7):(1'h1)];
          if ({({(reg165 < {(7'h41)}), wire143} ? reg175 : reg151),
              (|$unsigned($signed(reg147)))})
            begin
              reg177 <= (~^(reg146 << $unsigned((&{reg164}))));
              reg178 <= ($signed((^~(~^(reg176 ?
                  reg158 : reg158)))) == $unsigned(($signed((^~wire144)) || reg156[(3'h4):(3'h4)])));
            end
          else
            begin
              reg177 <= $signed(reg159);
              reg178 <= (~&reg154[(1'h1):(1'h1)]);
              reg179 <= (wire166[(5'h10):(4'h8)] >> $unsigned(({$signed((8'hba)),
                      (wire141 ~^ reg163)} ?
                  reg163 : ((reg148 << reg160) >= $signed(reg158)))));
            end
        end
      else
        begin
          reg169 <= $signed(($signed((&(reg158 ?
              (8'hb1) : wire143))) ~^ $unsigned((+(reg148 ?
              reg159 : reg146)))));
          reg170 <= $signed((reg169[(4'h9):(1'h1)] | (|$signed($unsigned(reg175)))));
          if (reg158[(3'h5):(1'h1)])
            begin
              reg171 <= ({reg157} ?
                  ((+$unsigned((!reg178))) ?
                      {((reg174 ? wire167 : reg162) ?
                              (~(8'ha2)) : reg169)} : {$signed(reg157)}) : reg165[(4'h9):(3'h4)]);
              reg172 <= reg147[(3'h5):(2'h2)];
            end
          else
            begin
              reg171 <= reg147[(1'h1):(1'h1)];
              reg172 <= $signed(reg153);
              reg173 <= {reg165[(3'h6):(1'h0)]};
              reg174 <= reg160[(2'h3):(1'h0)];
              reg175 <= ((reg165 && reg178[(3'h4):(1'h1)]) ?
                  ($unsigned(((^reg173) & {reg160})) ?
                      ((reg173 < reg158) + reg179) : $unsigned($unsigned({reg147,
                          reg158}))) : (&(($signed(reg149) ?
                          (wire144 ? reg171 : reg156) : $unsigned(reg160)) ?
                      wire167[(4'he):(3'h4)] : (-wire143[(1'h0):(1'h0)]))));
            end
          reg176 <= $unsigned(reg171);
          reg177 <= reg165;
        end
      reg180 <= (~^($unsigned((~&{wire141, reg156})) || $signed(wire145)));
    end
  always
    @(posedge clk) begin
      reg181 <= reg164[(2'h2):(1'h1)];
      reg182 <= reg179[(1'h1):(1'h0)];
    end
  always
    @(posedge clk) begin
      reg183 <= reg146[(4'hb):(1'h0)];
      reg184 <= $unsigned($signed((($unsigned(reg171) ?
              (reg174 && (8'hbd)) : (wire166 >= reg176)) ?
          reg152[(2'h3):(2'h2)] : (((8'h9d) ?
              reg149 : reg156) >= reg159[(1'h0):(1'h0)]))));
      reg185 <= (($signed(($unsigned((8'ha8)) ?
              (wire141 ? (8'hb5) : reg171) : $signed(reg154))) ?
          $signed(reg160[(5'h13):(4'hd)]) : reg162) << $signed(reg165));
    end
  assign wire186 = {((+$signed((reg177 ? reg178 : wire167))) ?
                           ({(reg172 ? reg185 : reg152), wire168} ?
                               reg172[(3'h5):(3'h5)] : ((reg162 + reg169) ?
                                   (reg152 ?
                                       reg147 : reg164) : $unsigned(wire167))) : (($unsigned((8'hb3)) > reg176) & (!reg174[(3'h5):(1'h0)]))),
                       $signed((reg184[(1'h0):(1'h0)] ?
                           reg160 : (((8'h9d) ?
                               reg182 : reg164) <= reg170[(2'h2):(2'h2)])))};
  always
    @(posedge clk) begin
      reg187 <= (|{$signed($unsigned($signed(reg184)))});
    end
  assign wire188 = wire186[(2'h2):(2'h2)];
  assign wire189 = wire145[(1'h0):(1'h0)];
  assign wire190 = wire142[(4'ha):(3'h7)];
  assign wire191 = $signed($signed(reg170[(1'h0):(1'h0)]));
  assign wire192 = ($signed($signed(reg156)) ?
                       {({$unsigned(reg165)} <<< ((reg163 ~^ reg163) && reg150)),
                           (!($unsigned(reg180) ?
                               reg162[(4'hb):(3'h7)] : (&(8'hbb))))} : reg173);
  assign wire193 = ((^wire186) ?
                       ($signed({(reg161 == reg151),
                           reg180[(1'h0):(1'h0)]}) << (~^(+(reg146 << reg162)))) : reg159);
endmodule

module module123
#(parameter param136 = (7'h43), 
parameter param137 = param136)
(y, clk, wire128, wire127, wire126, wire125, wire124);
  output wire [(32'h5f):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(3'h5):(1'h0)] wire128;
  input wire signed [(3'h4):(1'h0)] wire127;
  input wire signed [(4'hb):(1'h0)] wire126;
  input wire signed [(3'h7):(1'h0)] wire125;
  input wire [(2'h2):(1'h0)] wire124;
  wire signed [(4'hc):(1'h0)] wire135;
  wire signed [(3'h5):(1'h0)] wire134;
  wire signed [(5'h15):(1'h0)] wire133;
  wire signed [(4'hf):(1'h0)] wire129;
  reg signed [(4'hd):(1'h0)] reg132 = (1'h0);
  reg signed [(5'h12):(1'h0)] reg131 = (1'h0);
  reg signed [(4'ha):(1'h0)] reg130 = (1'h0);
  assign y = {wire135,
                 wire134,
                 wire133,
                 wire129,
                 reg132,
                 reg131,
                 reg130,
                 (1'h0)};
  assign wire129 = wire128[(2'h2):(2'h2)];
  always
    @(posedge clk) begin
      reg130 <= wire129[(3'h5):(1'h0)];
      reg131 <= (($unsigned(reg130[(1'h1):(1'h1)]) >>> wire126[(3'h6):(1'h0)]) ?
          wire128[(1'h1):(1'h0)] : ($signed(({(8'hbb), (8'hac)} ?
              {wire127, wire125} : (wire129 && wire129))) ~^ (~(7'h43))));
      reg132 <= $signed($signed(wire125[(2'h2):(1'h0)]));
    end
  assign wire133 = ((($signed((wire129 + wire125)) || reg132[(2'h2):(2'h2)]) ?
                       {wire126, {{reg130}}} : ($unsigned(wire124) ?
                           wire127 : {$unsigned(reg131)})) << $unsigned((wire126[(3'h4):(1'h1)] ?
                       wire127 : $unsigned($signed(wire129)))));
  assign wire134 = $signed($unsigned(reg130[(4'ha):(4'ha)]));
  assign wire135 = (((|wire125[(3'h4):(1'h0)]) > $unsigned(((8'hb9) ^ wire133[(5'h13):(5'h10)]))) <= {(($unsigned(reg132) ?
                           $unsigned(wire129) : wire134[(3'h5):(3'h5)]) | {(wire128 ?
                               wire133 : wire133),
                           wire126})});
endmodule

module module88
#(parameter param119 = ((~(((-(8'hbe)) ? ((8'hb4) + (8'haa)) : (~&(8'h9e))) >>> ({(8'hb4), (8'hb7)} ? {(8'hbd)} : (~^(8'haa))))) ? (8'ha6) : (~|((((8'ha3) ? (8'ha2) : (8'ha8)) & (~(8'h9d))) << (((8'h9c) ? (8'hb2) : (7'h44)) * (!(8'h9f)))))))
(y, clk, wire93, wire92, wire91, wire90, wire89);
  output wire [(32'h103):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(4'hb):(1'h0)] wire93;
  input wire [(5'h14):(1'h0)] wire92;
  input wire signed [(4'hb):(1'h0)] wire91;
  input wire [(3'h7):(1'h0)] wire90;
  input wire signed [(5'h12):(1'h0)] wire89;
  wire [(4'hc):(1'h0)] wire118;
  wire [(4'he):(1'h0)] wire117;
  wire [(3'h7):(1'h0)] wire116;
  wire [(4'hd):(1'h0)] wire115;
  wire [(2'h3):(1'h0)] wire114;
  wire signed [(4'h9):(1'h0)] wire113;
  wire [(4'hb):(1'h0)] wire112;
  wire [(2'h3):(1'h0)] wire111;
  wire signed [(4'hf):(1'h0)] wire110;
  wire signed [(3'h6):(1'h0)] wire109;
  wire signed [(3'h6):(1'h0)] wire99;
  reg signed [(3'h5):(1'h0)] reg108 = (1'h0);
  reg signed [(4'he):(1'h0)] reg107 = (1'h0);
  reg [(5'h15):(1'h0)] reg106 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg105 = (1'h0);
  reg [(2'h3):(1'h0)] reg104 = (1'h0);
  reg signed [(3'h7):(1'h0)] reg103 = (1'h0);
  reg [(4'h8):(1'h0)] reg102 = (1'h0);
  reg [(5'h15):(1'h0)] reg101 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg100 = (1'h0);
  reg signed [(3'h7):(1'h0)] reg98 = (1'h0);
  reg [(4'h8):(1'h0)] reg97 = (1'h0);
  reg signed [(4'hc):(1'h0)] reg96 = (1'h0);
  reg [(5'h11):(1'h0)] reg95 = (1'h0);
  reg [(4'h9):(1'h0)] reg94 = (1'h0);
  assign y = {wire118,
                 wire117,
                 wire116,
                 wire115,
                 wire114,
                 wire113,
                 wire112,
                 wire111,
                 wire110,
                 wire109,
                 wire99,
                 reg108,
                 reg107,
                 reg106,
                 reg105,
                 reg104,
                 reg103,
                 reg102,
                 reg101,
                 reg100,
                 reg98,
                 reg97,
                 reg96,
                 reg95,
                 reg94,
                 (1'h0)};
  always
    @(posedge clk) begin
      reg94 <= (wire91 ?
          $unsigned((({wire91,
              (8'hb6)} - $signed(wire89)) <<< (wire90[(3'h6):(1'h0)] ?
              wire91 : wire93))) : wire89[(3'h6):(3'h5)]);
      reg95 <= (&$signed($signed(((-wire90) ? wire92 : {(8'hb6)}))));
      if (($signed($unsigned(wire91)) ~^ (reg94 ?
          wire93 : (+((^~wire92) ? reg95[(3'h5):(3'h4)] : wire90)))))
        begin
          if (wire89[(3'h7):(1'h0)])
            begin
              reg96 <= $signed((($signed((wire90 <<< reg95)) ?
                      ($signed(wire90) ?
                          (reg94 ?
                              wire93 : wire91) : wire92[(5'h12):(4'hb)]) : wire92[(5'h14):(5'h13)]) ?
                  (8'hbf) : (-reg94[(3'h6):(3'h6)])));
            end
          else
            begin
              reg96 <= wire93[(3'h5):(2'h3)];
              reg97 <= $unsigned(wire89[(5'h12):(4'ha)]);
            end
        end
      else
        begin
          reg96 <= wire91;
          reg97 <= {wire90[(3'h5):(1'h0)]};
        end
      reg98 <= (wire91 ?
          (~&wire90[(3'h7):(1'h1)]) : (wire91[(3'h5):(3'h4)] ?
              $signed(reg96) : wire90[(1'h1):(1'h1)]));
    end
  assign wire99 = $signed($signed(wire90));
  always
    @(posedge clk) begin
      if (((wire91 ? $unsigned(wire99) : $unsigned($signed(wire90))) ?
          (reg96 | reg98) : $signed(((^~(reg97 ?
              (8'hab) : wire99)) | reg94[(2'h3):(2'h3)]))))
        begin
          reg100 <= (wire91[(2'h2):(1'h0)] ?
              (8'ha2) : (reg98[(3'h4):(1'h1)] <<< ({wire90[(1'h0):(1'h0)],
                      (wire89 ? reg94 : wire90)} ?
                  {(~^reg96)} : wire99)));
          reg101 <= (8'hbb);
          if (wire93)
            begin
              reg102 <= (~((7'h42) & (&{$signed(reg98)})));
              reg103 <= $unsigned($unsigned($signed(reg96[(4'hb):(1'h0)])));
              reg104 <= ($unsigned(reg94) ?
                  (($unsigned(((8'hae) ?
                      reg94 : (8'haa))) << (~^$unsigned((7'h44)))) | $signed(reg95)) : wire91);
              reg105 <= {($unsigned((-(|wire93))) ?
                      (~reg95) : $unsigned({(wire91 <= wire89),
                          (reg102 <= wire91)}))};
            end
          else
            begin
              reg102 <= (~^(8'ha7));
              reg103 <= reg105[(4'hd):(4'hd)];
            end
          if ((8'hb9))
            begin
              reg106 <= reg101[(5'h12):(3'h7)];
              reg107 <= (|reg100);
              reg108 <= (^wire91);
            end
          else
            begin
              reg106 <= $signed(($unsigned($signed($signed(reg103))) ?
                  $signed(reg107[(2'h3):(1'h0)]) : $signed($signed((reg97 ^~ reg101)))));
              reg107 <= (+(~|$signed($signed(((7'h43) == reg107)))));
            end
        end
      else
        begin
          if (wire92[(5'h12):(3'h7)])
            begin
              reg100 <= (|$unsigned(reg100[(3'h5):(1'h1)]));
              reg101 <= reg103[(3'h5):(2'h2)];
              reg102 <= (reg106[(4'hc):(4'hc)] ?
                  reg101[(3'h4):(3'h4)] : ($signed($signed($unsigned(wire93))) & wire99[(2'h2):(1'h0)]));
              reg103 <= ((^~($signed($signed((7'h41))) ?
                      $unsigned((wire90 * reg100)) : (~|((8'haa) ?
                          reg102 : reg103)))) ?
                  ({((&(7'h40)) >>> $unsigned(reg105))} ?
                      (~|reg104) : reg105[(3'h4):(2'h3)]) : $signed(((8'haa) <= reg94)));
            end
          else
            begin
              reg100 <= $unsigned((~^reg107));
              reg101 <= ((wire92[(2'h2):(2'h2)] ?
                  reg106[(4'hf):(4'hb)] : (($signed(wire92) >>> {reg102,
                      wire91}) >> reg104[(2'h3):(1'h1)])) <= (reg103 ?
                  $unsigned($signed($unsigned((8'h9e)))) : (-(reg105 - (|reg108)))));
              reg102 <= reg107;
              reg103 <= wire99;
            end
        end
    end
  assign wire109 = reg101[(3'h7):(2'h2)];
  assign wire110 = {wire99};
  assign wire111 = reg95[(4'ha):(4'h9)];
  assign wire112 = $signed($signed(wire89));
  assign wire113 = wire93;
  assign wire114 = $signed($signed(reg106));
  assign wire115 = reg100;
  assign wire116 = ($signed(wire89[(3'h5):(1'h0)]) < $signed(reg107));
  assign wire117 = wire89;
  assign wire118 = ((!(!reg100)) ?
                       $signed(($signed((wire91 ? (8'h9c) : wire116)) ?
                           $signed((reg104 ?
                               reg102 : (8'ha8))) : $unsigned((wire89 ?
                               reg108 : wire112)))) : (reg102 | (~&reg98[(3'h5):(2'h2)])));
endmodule

module module60  (y, clk, wire65, wire64, wire63, wire62, wire61);
  output wire [(32'h107):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(3'h5):(1'h0)] wire65;
  input wire signed [(5'h10):(1'h0)] wire64;
  input wire signed [(2'h2):(1'h0)] wire63;
  input wire signed [(4'h8):(1'h0)] wire62;
  input wire [(5'h14):(1'h0)] wire61;
  wire signed [(2'h3):(1'h0)] wire85;
  wire [(4'hf):(1'h0)] wire84;
  wire [(4'hf):(1'h0)] wire83;
  wire [(4'h8):(1'h0)] wire82;
  wire signed [(5'h14):(1'h0)] wire81;
  wire signed [(3'h4):(1'h0)] wire80;
  wire signed [(5'h14):(1'h0)] wire79;
  wire [(3'h7):(1'h0)] wire78;
  wire signed [(4'hc):(1'h0)] wire77;
  wire signed [(5'h12):(1'h0)] wire75;
  reg signed [(5'h15):(1'h0)] reg76 = (1'h0);
  reg [(3'h6):(1'h0)] reg74 = (1'h0);
  reg [(4'h8):(1'h0)] reg73 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg72 = (1'h0);
  reg [(4'hd):(1'h0)] reg71 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg70 = (1'h0);
  reg [(4'h8):(1'h0)] reg69 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg68 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg67 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg66 = (1'h0);
  assign y = {wire85,
                 wire84,
                 wire83,
                 wire82,
                 wire81,
                 wire80,
                 wire79,
                 wire78,
                 wire77,
                 wire75,
                 reg76,
                 reg74,
                 reg73,
                 reg72,
                 reg71,
                 reg70,
                 reg69,
                 reg68,
                 reg67,
                 reg66,
                 (1'h0)};
  always
    @(posedge clk) begin
      reg66 <= (~wire63[(2'h2):(1'h1)]);
      reg67 <= (wire63 ?
          $unsigned(wire61) : $signed($unsigned((^reg66[(4'hf):(1'h1)]))));
      if (wire64)
        begin
          reg68 <= (($unsigned(reg66) ?
                  ({$unsigned((8'ha2)), (~^wire65)} ?
                      ((reg66 && wire62) ~^ (wire62 >> wire62)) : ($signed(wire65) != wire64[(2'h2):(1'h0)])) : ((8'hb4) <= wire61)) ?
              ({({(8'hbf), reg66} | wire62), $signed(wire61)} ?
                  (8'hb6) : reg66) : $signed((~(|$signed(wire65)))));
          reg69 <= (wire64[(4'ha):(1'h1)] ?
              ((|(wire62[(4'h8):(3'h7)] * wire61)) ?
                  ($signed(wire64[(4'h9):(4'h9)]) ?
                      $unsigned((wire62 >>> wire65)) : (((8'hb8) && wire63) ?
                          reg66[(3'h6):(2'h3)] : $signed(wire62))) : (reg68 >>> (wire64 > reg67))) : (!$unsigned((8'hb6))));
          reg70 <= ($unsigned((($unsigned(wire63) < wire62) >> {wire62})) ?
              wire64[(4'hd):(3'h6)] : reg68[(3'h6):(2'h3)]);
        end
      else
        begin
          if ((((^~reg70[(4'ha):(4'h9)]) <= $signed($signed(((8'hab) <<< wire64)))) ?
              {$signed((((8'hae) ^ (8'hb8)) != $unsigned(reg68))),
                  $unsigned($unsigned(reg67[(3'h5):(2'h2)]))} : wire62))
            begin
              reg68 <= (wire62[(1'h0):(1'h0)] ?
                  reg68[(4'h8):(3'h7)] : $unsigned(reg66[(4'hb):(1'h0)]));
              reg69 <= $unsigned($unsigned($signed(($unsigned(reg68) ?
                  $signed(wire65) : $signed(wire63)))));
              reg70 <= reg70;
              reg71 <= $signed($unsigned((-($signed(reg66) == $unsigned(reg67)))));
            end
          else
            begin
              reg68 <= (~(($unsigned((&reg71)) >> (^~(&(7'h44)))) & wire64[(4'h8):(3'h5)]));
              reg69 <= ((|$signed((^~$unsigned(wire65)))) > $unsigned(wire65));
              reg70 <= wire63;
            end
          if ($signed(wire64[(3'h6):(2'h3)]))
            begin
              reg72 <= {(!wire65),
                  {(^((8'h9c) ?
                          (reg67 ? reg68 : reg68) : wire63[(1'h0):(1'h0)])),
                      (reg66 ? reg70 : (reg71 | $signed(reg67)))}};
            end
          else
            begin
              reg72 <= wire64;
            end
        end
      reg73 <= wire62;
      reg74 <= $signed(reg69[(2'h2):(1'h0)]);
    end
  assign wire75 = $unsigned(reg69);
  always
    @(posedge clk) begin
      reg76 <= $unsigned(reg66[(5'h11):(2'h2)]);
    end
  assign wire77 = reg74[(3'h6):(2'h2)];
  assign wire78 = wire61[(4'he):(3'h4)];
  assign wire79 = $signed(reg70);
  assign wire80 = (~^(reg69[(2'h3):(1'h1)] ?
                      ((^~((8'hb6) | wire64)) ?
                          $signed((!wire77)) : (~&wire65)) : {($unsigned(reg76) < $unsigned(reg71))}));
  assign wire81 = reg70;
  assign wire82 = (-(reg67 || reg69));
  assign wire83 = (|$signed(wire65[(2'h2):(1'h0)]));
  assign wire84 = {$unsigned($unsigned(reg69))};
  assign wire85 = (^(~^($signed((&reg76)) ~^ {wire79})));
endmodule

module module23
#(parameter param50 = ((((((7'h43) >>> (8'h9f)) >>> ((8'h9d) ? (7'h41) : (8'ha8))) ? {(!(8'hac))} : ((^(8'hbc)) <<< (~|(8'ha5)))) != (((^~(8'hae)) * ((8'had) ? (8'ha8) : (8'ha3))) ? (~&{(8'hbf)}) : {{(8'ha0), (8'hb5)}, ((8'h9d) ~^ (8'hb1))})) ? (&(~^({(7'h43), (8'ha4)} ^~ (^(7'h40))))) : (~|((&((8'h9f) | (8'hb2))) ? (((8'hbb) ? (8'hb7) : (8'h9e)) ? ((8'hb0) && (8'ha0)) : ((8'hb8) >>> (8'hb8))) : (((8'h9d) || (8'hb8)) | (-(8'h9d)))))))
(y, clk, wire28, wire27, wire26, wire25, wire24);
  output wire [(32'he1):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(4'hb):(1'h0)] wire28;
  input wire signed [(5'h13):(1'h0)] wire27;
  input wire [(4'hd):(1'h0)] wire26;
  input wire signed [(5'h15):(1'h0)] wire25;
  input wire [(3'h7):(1'h0)] wire24;
  wire signed [(4'hd):(1'h0)] wire49;
  wire signed [(4'hc):(1'h0)] wire48;
  wire signed [(4'ha):(1'h0)] wire47;
  wire [(3'h6):(1'h0)] wire46;
  wire [(2'h2):(1'h0)] wire45;
  wire signed [(4'hb):(1'h0)] wire44;
  wire [(4'h9):(1'h0)] wire43;
  wire [(4'hd):(1'h0)] wire42;
  wire signed [(2'h2):(1'h0)] wire41;
  wire signed [(3'h6):(1'h0)] wire40;
  wire [(4'hc):(1'h0)] wire39;
  wire [(5'h11):(1'h0)] wire35;
  wire signed [(3'h7):(1'h0)] wire29;
  reg signed [(2'h3):(1'h0)] reg38 = (1'h0);
  reg signed [(5'h14):(1'h0)] reg37 = (1'h0);
  reg [(5'h15):(1'h0)] reg36 = (1'h0);
  reg [(4'hc):(1'h0)] reg34 = (1'h0);
  reg [(5'h11):(1'h0)] reg33 = (1'h0);
  reg signed [(2'h3):(1'h0)] reg32 = (1'h0);
  reg [(4'hd):(1'h0)] reg31 = (1'h0);
  reg [(4'hf):(1'h0)] reg30 = (1'h0);
  assign y = {wire49,
                 wire48,
                 wire47,
                 wire46,
                 wire45,
                 wire44,
                 wire43,
                 wire42,
                 wire41,
                 wire40,
                 wire39,
                 wire35,
                 wire29,
                 reg38,
                 reg37,
                 reg36,
                 reg34,
                 reg33,
                 reg32,
                 reg31,
                 reg30,
                 (1'h0)};
  assign wire29 = (&(wire24[(2'h2):(1'h0)] < (8'h9f)));
  always
    @(posedge clk) begin
      reg30 <= $unsigned(((wire24 < wire26[(3'h5):(1'h0)]) <<< (^(~|(wire28 ?
          wire28 : wire27)))));
      reg31 <= $unsigned($signed($unsigned($signed(((8'h9e) > reg30)))));
      reg32 <= (~&wire24);
      reg33 <= ((~(((wire25 ?
              reg30 : reg32) || wire26[(1'h1):(1'h0)]) == ((reg30 ?
              reg31 : wire24) * $unsigned(wire25)))) ?
          ({(wire24[(3'h5):(2'h2)] >= $signed(wire25)), wire26} ?
              wire25 : (reg30[(3'h7):(1'h0)] != (^$signed((8'hae))))) : (wire27 > ($signed((^wire25)) * (&(~|wire28)))));
      reg34 <= wire26[(4'h8):(3'h5)];
    end
  assign wire35 = wire27[(4'h9):(3'h7)];
  always
    @(posedge clk) begin
      reg36 <= (8'hb1);
      reg37 <= (((wire29 ~^ $unsigned(reg32)) & (((!wire24) < (reg30 == wire27)) != (^~$unsigned(reg33)))) >> $signed((~^wire29)));
      reg38 <= wire25[(5'h12):(4'h8)];
    end
  assign wire39 = wire26[(4'hc):(4'h9)];
  assign wire40 = {$unsigned(wire25)};
  assign wire41 = $unsigned({($unsigned((reg36 > reg36)) ?
                          reg34 : (~(^~reg30)))});
  assign wire42 = $signed(((~^$unsigned((reg38 ? wire41 : wire26))) ?
                      {((8'ha2) ?
                              wire40[(2'h3):(2'h2)] : $unsigned(wire26))} : (!$unsigned($signed(wire28)))));
  assign wire43 = ((^~(8'h9e)) ?
                      wire42 : (({$signed(wire28),
                                  ((7'h44) ? wire35 : wire29)} ?
                              (~&(~&(8'hb6))) : ({wire35} ?
                                  (8'haf) : {reg30})) ?
                          $signed((^(wire40 ? wire35 : wire39))) : wire28));
  assign wire44 = {{$unsigned(wire29[(3'h5):(1'h1)]),
                          $signed($signed($unsigned(wire24)))}};
  assign wire45 = wire25;
  assign wire46 = $signed($signed($signed(wire25)));
  assign wire47 = (^~wire35);
  assign wire48 = $unsigned((($unsigned((wire44 == wire43)) <<< $signed((wire25 ^~ reg38))) ?
                      ($signed((+wire25)) == ((~&wire26) ?
                          (wire44 >>> wire24) : (reg34 ?
                              wire24 : (8'hb5)))) : (~&wire28[(4'h9):(4'h8)])));
  assign wire49 = ($unsigned($signed({(+wire35),
                      (wire48 ? reg38 : wire48)})) ^ ({($signed(wire25) ?
                          (wire42 << reg33) : wire26[(4'hc):(4'h8)])} <= (wire42 || (-wire45))));
endmodule