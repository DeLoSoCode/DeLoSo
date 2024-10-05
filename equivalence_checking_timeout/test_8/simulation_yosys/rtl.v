module top  (y, clk, wire0, wire1, wire2, wire3);
  output wire [(32'h62):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(5'h12):(1'h0)] wire0;
  input wire [(5'h14):(1'h0)] wire1;
  input wire [(3'h6):(1'h0)] wire2;
  input wire [(5'h15):(1'h0)] wire3;
  wire signed [(5'h12):(1'h0)] wire136;
  wire signed [(4'h8):(1'h0)] wire135;
  wire signed [(4'hf):(1'h0)] wire134;
  wire signed [(3'h7):(1'h0)] wire133;
  wire [(5'h14):(1'h0)] wire131;
  wire [(5'h14):(1'h0)] wire4;
  wire [(3'h4):(1'h0)] wire5;
  wire [(3'h5):(1'h0)] wire53;
  assign y = {wire136,
                 wire135,
                 wire134,
                 wire133,
                 wire131,
                 wire4,
                 wire5,
                 wire53,
                 (1'h0)};
  assign wire4 = wire0;
  assign wire5 = (-$unsigned(wire3[(5'h11):(4'hb)]));
  module6 #() modinst54 (.wire8(wire1), .wire10(wire2), .wire9(wire5), .y(wire53), .clk(clk), .wire7(wire4), .wire11(wire3));
  module55 #() modinst132 (wire131, clk, wire4, wire3, wire1, wire0);
  assign wire133 = (!wire5[(3'h4):(1'h0)]);
  assign wire134 = ((({$signed((8'ha0)),
                       (wire2 ?
                           wire133 : wire5)} == (~^(&(8'hac)))) ~^ {wire53[(3'h4):(2'h2)]}) & (~|($unsigned((wire3 == wire133)) ?
                       ($signed((7'h42)) ?
                           (8'hbe) : $unsigned(wire4)) : wire0[(1'h1):(1'h0)])));
  assign wire135 = $signed(((wire3 ?
                       {(wire134 * (8'hac)),
                           {(7'h44)}} : (wire53[(1'h1):(1'h0)] * $signed(wire1))) ^~ {($signed((8'had)) >>> (wire134 ?
                           wire3 : wire134)),
                       $unsigned($signed(wire134))}));
  assign wire136 = ((~|(+wire133)) ?
                       (~&({wire2[(2'h2):(1'h0)]} | wire1[(5'h13):(4'ha)])) : wire4);
endmodule

module module55  (y, clk, wire59, wire58, wire57, wire56);
  output wire [(32'h307):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire [(5'h11):(1'h0)] wire59;
  input wire signed [(3'h4):(1'h0)] wire58;
  input wire [(5'h14):(1'h0)] wire57;
  input wire [(5'h12):(1'h0)] wire56;
  wire [(4'ha):(1'h0)] wire130;
  wire signed [(5'h12):(1'h0)] wire129;
  wire signed [(3'h5):(1'h0)] wire128;
  wire [(5'h10):(1'h0)] wire107;
  wire [(4'h8):(1'h0)] wire77;
  wire signed [(3'h7):(1'h0)] wire76;
  wire [(5'h15):(1'h0)] wire75;
  wire signed [(5'h13):(1'h0)] wire64;
  wire [(2'h2):(1'h0)] wire63;
  wire signed [(4'h8):(1'h0)] wire62;
  wire signed [(3'h6):(1'h0)] wire61;
  wire signed [(5'h12):(1'h0)] wire60;
  reg [(3'h7):(1'h0)] reg127 = (1'h0);
  reg [(3'h4):(1'h0)] reg126 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg125 = (1'h0);
  reg [(5'h12):(1'h0)] reg124 = (1'h0);
  reg [(2'h3):(1'h0)] reg123 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg122 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg121 = (1'h0);
  reg [(5'h11):(1'h0)] reg120 = (1'h0);
  reg [(4'hc):(1'h0)] reg119 = (1'h0);
  reg [(2'h2):(1'h0)] reg118 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg117 = (1'h0);
  reg [(5'h14):(1'h0)] reg116 = (1'h0);
  reg signed [(4'hb):(1'h0)] reg115 = (1'h0);
  reg signed [(4'hc):(1'h0)] reg114 = (1'h0);
  reg [(3'h6):(1'h0)] reg113 = (1'h0);
  reg signed [(5'h14):(1'h0)] reg112 = (1'h0);
  reg signed [(5'h14):(1'h0)] reg111 = (1'h0);
  reg [(3'h7):(1'h0)] reg110 = (1'h0);
  reg [(5'h14):(1'h0)] reg109 = (1'h0);
  reg [(5'h10):(1'h0)] reg108 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg106 = (1'h0);
  reg signed [(4'ha):(1'h0)] reg105 = (1'h0);
  reg [(4'hd):(1'h0)] reg104 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg103 = (1'h0);
  reg signed [(3'h7):(1'h0)] reg102 = (1'h0);
  reg [(2'h3):(1'h0)] reg101 = (1'h0);
  reg [(3'h4):(1'h0)] reg100 = (1'h0);
  reg signed [(5'h10):(1'h0)] reg99 = (1'h0);
  reg signed [(3'h7):(1'h0)] reg98 = (1'h0);
  reg [(5'h15):(1'h0)] reg97 = (1'h0);
  reg [(3'h6):(1'h0)] reg96 = (1'h0);
  reg [(5'h13):(1'h0)] reg95 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg94 = (1'h0);
  reg signed [(2'h3):(1'h0)] reg93 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg92 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg91 = (1'h0);
  reg [(2'h2):(1'h0)] reg90 = (1'h0);
  reg signed [(4'h8):(1'h0)] reg89 = (1'h0);
  reg [(5'h14):(1'h0)] reg88 = (1'h0);
  reg [(2'h2):(1'h0)] reg87 = (1'h0);
  reg signed [(4'ha):(1'h0)] reg86 = (1'h0);
  reg [(4'hd):(1'h0)] reg85 = (1'h0);
  reg [(5'h11):(1'h0)] reg84 = (1'h0);
  reg [(2'h3):(1'h0)] reg83 = (1'h0);
  reg signed [(4'hd):(1'h0)] reg82 = (1'h0);
  reg [(2'h2):(1'h0)] reg81 = (1'h0);
  reg signed [(4'hf):(1'h0)] reg80 = (1'h0);
  reg [(4'hf):(1'h0)] reg79 = (1'h0);
  reg [(4'hc):(1'h0)] reg78 = (1'h0);
  reg signed [(4'he):(1'h0)] reg74 = (1'h0);
  reg [(2'h3):(1'h0)] reg73 = (1'h0);
  reg signed [(5'h14):(1'h0)] reg72 = (1'h0);
  reg signed [(5'h15):(1'h0)] reg71 = (1'h0);
  reg [(4'h8):(1'h0)] reg70 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg69 = (1'h0);
  reg [(4'h9):(1'h0)] reg68 = (1'h0);
  reg [(3'h4):(1'h0)] reg67 = (1'h0);
  reg signed [(4'hd):(1'h0)] reg66 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg65 = (1'h0);
  assign y = {wire130,
                 wire129,
                 wire128,
                 wire107,
                 wire77,
                 wire76,
                 wire75,
                 wire64,
                 wire63,
                 wire62,
                 wire61,
                 wire60,
                 reg127,
                 reg126,
                 reg125,
                 reg124,
                 reg123,
                 reg122,
                 reg121,
                 reg120,
                 reg119,
                 reg118,
                 reg117,
                 reg116,
                 reg115,
                 reg114,
                 reg113,
                 reg112,
                 reg111,
                 reg110,
                 reg109,
                 reg108,
                 reg106,
                 reg105,
                 reg104,
                 reg103,
                 reg102,
                 reg101,
                 reg100,
                 reg99,
                 reg98,
                 reg97,
                 reg96,
                 reg95,
                 reg94,
                 reg93,
                 reg92,
                 reg91,
                 reg90,
                 reg89,
                 reg88,
                 reg87,
                 reg86,
                 reg85,
                 reg84,
                 reg83,
                 reg82,
                 reg81,
                 reg80,
                 reg79,
                 reg78,
                 reg74,
                 reg73,
                 reg72,
                 reg71,
                 reg70,
                 reg69,
                 reg68,
                 reg67,
                 reg66,
                 reg65,
                 (1'h0)};
  assign wire60 = (((!(~&(wire58 ? wire57 : wire59))) ?
                          {(-$unsigned(wire58))} : ($unsigned($unsigned(wire56)) ?
                              {$signed(wire59), {(8'hb3)}} : wire56)) ?
                      wire59[(3'h6):(2'h2)] : ((((|(7'h43)) ?
                              (wire56 + wire59) : $signed((8'ha1))) | (^wire56[(4'hf):(4'hb)])) ?
                          wire59 : {({wire56} ?
                                  (wire58 >> wire59) : (wire59 ?
                                      wire57 : wire58))}));
  assign wire61 = wire56;
  assign wire62 = (^~{((~^wire60[(4'he):(4'ha)]) | wire60)});
  assign wire63 = wire58[(3'h4):(2'h3)];
  assign wire64 = wire59[(3'h5):(2'h2)];
  always
    @(posedge clk) begin
      if (wire58[(1'h1):(1'h0)])
        begin
          reg65 <= (8'ha1);
          reg66 <= ({wire57[(4'he):(4'h8)], (+$unsigned((wire63 && wire63)))} ?
              (8'ha5) : $unsigned((((wire56 - wire58) + (!wire61)) * $signed(wire61[(2'h2):(1'h0)]))));
          reg67 <= wire58[(1'h1):(1'h1)];
          reg68 <= $signed(((wire64 ?
                  reg67[(3'h4):(3'h4)] : (((8'hb2) ? reg66 : reg65) ?
                      $signed(wire62) : {reg65})) ?
              wire58[(1'h1):(1'h0)] : (^~{(!reg65)})));
          if ((8'hb3))
            begin
              reg69 <= $unsigned({(+wire64[(5'h12):(1'h0)])});
            end
          else
            begin
              reg69 <= wire60;
              reg70 <= {$unsigned($signed($signed(wire56))),
                  (wire59[(5'h10):(1'h0)] & wire61[(3'h6):(1'h1)])};
              reg71 <= (~reg68[(4'h9):(3'h6)]);
              reg72 <= $unsigned(reg68);
              reg73 <= wire62;
            end
        end
      else
        begin
          reg65 <= {wire58};
          if (wire60)
            begin
              reg66 <= reg65[(2'h3):(2'h3)];
              reg67 <= wire59[(3'h7):(2'h3)];
            end
          else
            begin
              reg66 <= $unsigned((($signed({reg71, reg65}) ?
                      (-wire63[(2'h2):(2'h2)]) : reg66[(4'ha):(4'ha)]) ?
                  $unsigned({reg70,
                      (reg72 ?
                          (8'hb5) : wire60)}) : $unsigned(wire62[(3'h6):(1'h1)])));
              reg67 <= ((~&$unsigned(wire58)) | (reg73[(1'h0):(1'h0)] ?
                  $signed((wire57 > (8'hbd))) : $signed(wire64)));
              reg68 <= (reg67[(1'h0):(1'h0)] ?
                  $signed(reg67[(1'h0):(1'h0)]) : $unsigned($signed($unsigned($unsigned((8'h9f))))));
              reg69 <= {(+$signed(wire59[(3'h6):(1'h1)]))};
            end
          reg70 <= $signed(wire56);
        end
      reg74 <= $unsigned((8'hbe));
    end
  assign wire75 = {reg65[(2'h3):(2'h3)],
                      ({(reg73[(1'h0):(1'h0)] ?
                                  {wire63, wire58} : (reg70 ? reg71 : reg69)),
                              ($signed(wire64) ? (^~reg66) : (8'haa))} ?
                          wire63 : reg69[(2'h2):(1'h0)])};
  assign wire76 = reg67;
  assign wire77 = (((($unsigned(reg67) ? reg65 : reg67[(1'h0):(1'h0)]) ?
                      (8'hbf) : (wire61 >= reg72)) < $signed(reg67[(2'h2):(1'h1)])) * $signed(wire75[(4'hd):(1'h0)]));
  always
    @(posedge clk) begin
      if (wire60[(3'h7):(3'h7)])
        begin
          if ($signed(reg73[(1'h0):(1'h0)]))
            begin
              reg78 <= $signed($signed((wire63[(1'h0):(1'h0)] <= reg66[(4'ha):(2'h2)])));
              reg79 <= wire75[(4'hb):(4'h9)];
              reg80 <= {(-$unsigned(reg73))};
              reg81 <= (~{$unsigned(reg80)});
              reg82 <= $signed(wire77);
            end
          else
            begin
              reg78 <= (!((({wire57} + (~&(8'hac))) >>> reg67[(2'h3):(1'h1)]) == reg80[(3'h4):(1'h0)]));
              reg79 <= $unsigned((^(^~$unsigned(wire75[(5'h13):(3'h6)]))));
              reg80 <= ((reg71[(3'h6):(2'h2)] ?
                      wire59[(4'he):(1'h0)] : (reg67[(3'h4):(1'h1)] ^~ wire59[(5'h10):(4'hb)])) ?
                  ($signed(wire76[(3'h5):(2'h3)]) ?
                      $signed(reg65) : wire61[(3'h6):(2'h3)]) : wire61[(1'h1):(1'h0)]);
            end
          if (((~^($signed((reg79 & reg66)) + (((8'ha5) ?
              wire57 : reg67) - (reg73 ? wire63 : reg70)))) || (!reg67)))
            begin
              reg83 <= $signed(($signed({(+reg70), reg72[(5'h13):(4'hf)]}) ?
                  $unsigned((8'ha7)) : ($unsigned((wire59 ^~ reg79)) ?
                      reg82[(3'h4):(2'h3)] : (~^(+(8'hbf))))));
            end
          else
            begin
              reg83 <= reg71[(4'ha):(3'h4)];
              reg84 <= $unsigned($unsigned($unsigned((~^$signed((8'had))))));
              reg85 <= $unsigned(reg71);
              reg86 <= $signed((reg73 ?
                  wire64 : $unsigned({$unsigned(wire56),
                      ((8'ha6) ? reg74 : wire63)})));
            end
          reg87 <= $unsigned((&wire61[(2'h3):(2'h3)]));
          reg88 <= (reg66[(4'h9):(3'h7)] != $unsigned((reg68 ?
              (-$signed(wire76)) : ($unsigned(wire59) ?
                  {wire56} : (reg73 - reg67)))));
        end
      else
        begin
          reg78 <= reg87;
        end
      if ((reg87[(1'h0):(1'h0)] ?
          $signed((~|$unsigned(wire77))) : wire77[(2'h3):(2'h2)]))
        begin
          reg89 <= (~^($unsigned((+{reg83, reg79})) ?
              (~&((reg67 ? reg83 : reg79) & (reg86 == reg82))) : ((reg72 ?
                  (~reg83) : reg87[(1'h1):(1'h0)]) - (~|{wire76, reg72}))));
          reg90 <= reg70[(3'h6):(1'h1)];
        end
      else
        begin
          if ($signed(wire57[(4'he):(3'h6)]))
            begin
              reg89 <= wire76;
              reg90 <= $signed({$unsigned(((wire62 >> (8'hb9)) != (+reg83))),
                  ({wire63} || reg79)});
              reg91 <= (8'ha4);
              reg92 <= $signed($signed((reg79 ?
                  $signed((|reg73)) : (~reg80[(2'h2):(2'h2)]))));
            end
          else
            begin
              reg89 <= ($unsigned({$unsigned((wire77 ? wire77 : reg85))}) ?
                  (!(+reg80)) : $unsigned(reg66));
              reg90 <= reg86[(4'h8):(4'h8)];
              reg91 <= $signed(reg69);
              reg92 <= {(|reg82)};
            end
          reg93 <= $unsigned((!$signed($unsigned($signed(wire77)))));
          if ({$signed((~^reg88[(2'h3):(2'h3)]))})
            begin
              reg94 <= ({$signed($signed(reg83))} ?
                  $unsigned(((+reg70[(2'h3):(2'h3)]) < {(wire64 != reg65)})) : wire75);
              reg95 <= ((wire63[(1'h1):(1'h0)] ?
                  ((wire61 ?
                      $unsigned(reg86) : wire64[(3'h4):(1'h1)]) ~^ $unsigned((reg94 << (7'h43)))) : wire77[(2'h3):(1'h1)]) || reg88);
            end
          else
            begin
              reg94 <= $unsigned(wire61[(1'h0):(1'h0)]);
              reg95 <= reg94;
              reg96 <= {{wire61[(1'h0):(1'h0)], (-(^(reg69 ? reg95 : reg68)))},
                  $unsigned((^~(^~{reg86, (8'hb4)})))};
              reg97 <= $unsigned(wire57[(3'h7):(1'h1)]);
            end
          reg98 <= (wire58[(1'h0):(1'h0)] ?
              reg71[(4'he):(3'h4)] : $unsigned((+(reg96[(3'h6):(3'h4)] <<< (wire62 + reg82)))));
        end
      reg99 <= reg98[(2'h3):(1'h1)];
      reg100 <= (!$unsigned($unsigned(reg70)));
    end
  always
    @(posedge clk) begin
      reg101 <= (wire59[(4'h8):(3'h7)] ? reg83[(2'h3):(2'h2)] : (8'ha4));
      if (reg96[(1'h0):(1'h0)])
        begin
          reg102 <= reg68;
          reg103 <= (($signed(wire58[(1'h0):(1'h0)]) ?
              (~^((~&reg97) ?
                  {reg100} : (reg87 ?
                      wire75 : wire60))) : ($unsigned(reg68[(2'h2):(1'h1)]) > reg80[(1'h1):(1'h1)])) * (reg69 ?
              wire57 : $signed($unsigned((reg72 ? reg81 : reg74)))));
          reg104 <= reg103;
          reg105 <= wire76[(2'h2):(2'h2)];
        end
      else
        begin
          reg102 <= $unsigned(reg88);
          if (reg96)
            begin
              reg103 <= ($unsigned($unsigned(((wire77 ? reg97 : (8'ha3)) ?
                  reg71[(4'h8):(3'h5)] : (reg101 * reg66)))) >> {wire56[(4'hb):(4'h8)]});
            end
          else
            begin
              reg103 <= (((reg73[(2'h3):(2'h2)] ?
                      (&(reg94 ?
                          reg88 : reg82)) : reg86[(4'h8):(4'h8)]) ~^ $unsigned($unsigned(wire77))) ?
                  $unsigned(($unsigned($unsigned(wire60)) ?
                      ($signed((8'hb5)) ~^ $signed(wire76)) : ($unsigned(reg86) >= ((7'h44) ?
                          wire58 : reg69)))) : (~^$signed({wire75,
                      $unsigned(reg84)})));
              reg104 <= $unsigned($unsigned({$signed((reg67 ? reg89 : reg87)),
                  reg100[(1'h1):(1'h1)]}));
              reg105 <= ((|(~(~^(~reg92)))) ?
                  $signed((^~{$signed(wire59)})) : (reg90 << (((reg89 > wire64) < ((8'ha9) ?
                      (8'hb7) : (8'h9d))) <= wire63)));
              reg106 <= (~$unsigned(reg70));
            end
        end
    end
  assign wire107 = wire76;
  always
    @(posedge clk) begin
      reg108 <= $unsigned(($unsigned(((wire77 << reg101) <<< {reg72})) ?
          (~^wire77) : {reg94}));
      reg109 <= $signed($signed(((reg79 ?
          $unsigned(reg99) : $unsigned(reg101)) | {$unsigned((8'haf))})));
      reg110 <= ($unsigned(wire63[(2'h2):(1'h1)]) ?
          (~&$unsigned(($unsigned(reg65) ?
              reg96[(3'h5):(1'h0)] : reg70))) : $unsigned(reg104[(4'hc):(4'ha)]));
      reg111 <= ((^~((8'hbb) <= $unsigned((^reg110)))) ?
          (-(reg70 + ($unsigned(reg104) <= (~|(8'hb3))))) : (8'haf));
      if ({{{$signed((wire57 ? reg79 : reg92)), $signed($signed(reg67))}},
          $signed($signed((8'hbc)))})
        begin
          if (((8'ha6) ?
              reg102[(3'h5):(3'h5)] : (-(reg100[(1'h1):(1'h1)] ?
                  (8'haa) : ({reg81} > $unsigned((8'ha5)))))))
            begin
              reg112 <= {$unsigned(reg66),
                  ({$unsigned(wire60)} || (((reg91 ?
                      (8'h9e) : reg70) < $signed((8'haa))) ~^ {$unsigned((8'ha3)),
                      (|(8'hbf))}))};
              reg113 <= reg96;
            end
          else
            begin
              reg112 <= ($unsigned($signed(reg74[(3'h5):(2'h2)])) ?
                  $signed((~{$unsigned(reg101)})) : (~&(^~$unsigned((reg84 ?
                      reg87 : wire64)))));
            end
          reg114 <= ($signed(wire62[(3'h6):(1'h1)]) ?
              reg66 : reg110[(1'h1):(1'h0)]);
          reg115 <= $unsigned($unsigned(reg91[(4'hd):(3'h7)]));
          reg116 <= ($unsigned(($unsigned((reg103 ? (7'h42) : wire59)) ?
              (^~{(7'h43)}) : $unsigned((reg79 >= wire58)))) >>> {($signed($signed(reg106)) ?
                  reg103[(1'h1):(1'h1)] : (wire61 ?
                      $unsigned(reg83) : (8'hb6))),
              $unsigned(((^~reg70) >> reg88[(5'h13):(2'h3)]))});
          reg117 <= ($unsigned(wire61[(1'h0):(1'h0)]) > (~^reg115[(1'h0):(1'h0)]));
        end
      else
        begin
          reg112 <= $unsigned((wire56[(4'ha):(3'h5)] >> $signed(((reg87 ?
                  reg97 : reg105) ?
              reg65 : (reg83 >>> (8'hb6))))));
          if ($signed((~^($unsigned((reg90 ?
              reg65 : (8'ha2))) || (+{wire107})))))
            begin
              reg113 <= ($signed(wire75[(5'h11):(4'he)]) ?
                  (~(reg73 >>> $unsigned((reg68 >>> reg88)))) : ($signed(reg111) ?
                      ((reg99 * ((8'ha0) < reg106)) ?
                          $unsigned($signed(reg113)) : (8'hb4)) : reg98));
              reg114 <= reg95[(1'h0):(1'h0)];
              reg115 <= {((8'hb6) - (+$signed((^reg71)))),
                  (((((8'ha1) ? wire56 : reg100) ?
                          reg115 : (!reg104)) + ((!reg70) || $signed(reg79))) ?
                      (($signed(reg74) ?
                              $signed(reg72) : ((8'hb7) >>> reg116)) ?
                          reg108[(3'h4):(2'h3)] : reg95) : (~|reg101))};
              reg116 <= ((~|((~|reg99[(4'hd):(4'hc)]) ?
                  (reg98 ?
                      $signed(reg97) : $signed(reg110)) : $signed((8'hbe)))) - (|$unsigned($unsigned($unsigned(reg106)))));
              reg117 <= reg70;
            end
          else
            begin
              reg113 <= $unsigned((($unsigned(wire76[(2'h3):(1'h0)]) ?
                  (((8'haf) ? reg105 : reg101) ?
                      wire59 : reg84) : ({reg95} ^~ $signed((8'hba)))) - ($unsigned(reg92[(4'he):(4'hc)]) | ($unsigned(wire107) ?
                  $unsigned(wire63) : reg113))));
              reg114 <= $signed($unsigned(wire56));
              reg115 <= (~((wire107[(5'h10):(4'hc)] ?
                  ($unsigned(reg86) ?
                      (|reg103) : $signed((8'hb7))) : $unsigned($unsigned(reg108))) ^ (^((wire77 && (8'ha0)) ^ ((8'hbb) >>> wire64)))));
              reg116 <= reg86;
            end
          if ((~(&($unsigned((reg73 ?
              reg71 : reg101)) < ($unsigned(reg81) >>> (-reg96))))))
            begin
              reg118 <= $signed(((~reg74) * ($unsigned(reg96[(3'h4):(1'h0)]) ?
                  $unsigned(reg92[(4'h8):(1'h1)]) : reg90[(1'h1):(1'h1)])));
            end
          else
            begin
              reg118 <= {(~^reg101[(2'h3):(2'h2)])};
              reg119 <= ((reg92[(4'hb):(3'h6)] >>> reg116[(3'h4):(1'h1)]) || $unsigned((reg96[(2'h2):(1'h1)] ~^ (wire64 ?
                  (8'ha9) : $unsigned(reg73)))));
              reg120 <= $unsigned((($unsigned((reg98 ?
                      wire57 : wire77)) >> wire59[(4'ha):(4'ha)]) ?
                  (-(|(reg106 | reg79))) : $signed({{(8'hb8), reg106},
                      (reg100 > (8'had))})));
            end
          if ($signed($signed(((8'h9e) ?
              {(reg93 ~^ reg72),
                  (reg90 ? reg97 : reg108)} : $unsigned((8'hbb))))))
            begin
              reg121 <= $signed($unsigned($signed($signed($unsigned(reg71)))));
              reg122 <= (($signed(reg113) || $unsigned((~reg116))) >= $signed((reg121 ?
                  reg81[(2'h2):(1'h1)] : ((reg105 ^ reg97) ?
                      (wire58 ? reg98 : (8'hb0)) : (~|reg88)))));
            end
          else
            begin
              reg121 <= (~|(~|$unsigned(reg94)));
              reg122 <= ($unsigned(((!reg88) <<< (^~$unsigned(reg84)))) <<< $unsigned({reg67[(3'h4):(2'h3)],
                  $signed((reg79 + reg86))}));
              reg123 <= $unsigned((reg65[(1'h0):(1'h0)] ?
                  ((!(reg100 * (8'h9d))) ~^ ($unsigned(wire57) << $signed(reg83))) : wire56));
            end
          if ($unsigned({({(wire64 == reg95)} & {$unsigned(reg108)})}))
            begin
              reg124 <= $unsigned($signed($signed($unsigned({reg115}))));
              reg125 <= {($unsigned((8'hbd)) ^ $unsigned($signed($signed(reg90)))),
                  reg124[(1'h1):(1'h0)]};
              reg126 <= $unsigned($signed(wire63[(1'h0):(1'h0)]));
            end
          else
            begin
              reg124 <= (reg100[(2'h2):(2'h2)] ?
                  (~((~^reg100[(1'h1):(1'h1)]) + (|$signed(wire61)))) : {(($unsigned(reg83) ^~ reg94[(2'h3):(1'h0)]) >= {$unsigned(reg99),
                          (wire59 ? reg81 : wire107)})});
              reg125 <= ((((reg69 * (reg119 < reg97)) ?
                      reg98 : (-(~|(8'ha6)))) && reg105) ?
                  $signed(reg84) : $signed(((reg99 | $unsigned(reg91)) ?
                      ($unsigned((8'hb7)) ?
                          reg103 : (reg97 ?
                              (8'had) : reg106)) : $signed((|reg87)))));
              reg126 <= (^~reg67);
              reg127 <= wire75;
            end
        end
    end
  assign wire128 = $unsigned($signed({(~&(reg95 >> reg80)), reg116}));
  assign wire129 = reg69;
  assign wire130 = (8'haa);
endmodule

module module6
#(parameter param51 = (&((^(!(~(8'hb1)))) >>> ({((8'ha2) ? (8'ha0) : (8'h9d))} ? (7'h42) : (~&((8'hb4) <<< (8'ha6)))))), 
parameter param52 = ({((~^(~|(7'h44))) ? param51 : (~&(!param51))), (((-param51) ? (+param51) : ((8'hac) != param51)) >> (+((8'h9e) <<< param51)))} * (|((|{param51, param51}) << (param51 - (param51 ? param51 : (8'hb8)))))))
(y, clk, wire11, wire10, wire9, wire8, wire7);
  output wire [(32'h1ba):(32'h0)] y;
  input wire [(1'h0):(1'h0)] clk;
  input wire signed [(4'ha):(1'h0)] wire11;
  input wire [(2'h2):(1'h0)] wire10;
  input wire [(3'h4):(1'h0)] wire9;
  input wire [(5'h13):(1'h0)] wire8;
  input wire [(5'h11):(1'h0)] wire7;
  wire signed [(3'h6):(1'h0)] wire50;
  wire signed [(5'h10):(1'h0)] wire38;
  wire signed [(5'h11):(1'h0)] wire28;
  wire signed [(5'h10):(1'h0)] wire27;
  wire [(5'h15):(1'h0)] wire26;
  wire [(5'h14):(1'h0)] wire25;
  wire signed [(4'ha):(1'h0)] wire24;
  wire [(5'h11):(1'h0)] wire23;
  wire [(4'he):(1'h0)] wire22;
  wire [(4'ha):(1'h0)] wire13;
  wire signed [(4'ha):(1'h0)] wire12;
  reg signed [(2'h2):(1'h0)] reg49 = (1'h0);
  reg [(3'h6):(1'h0)] reg48 = (1'h0);
  reg signed [(2'h3):(1'h0)] reg47 = (1'h0);
  reg signed [(3'h4):(1'h0)] reg46 = (1'h0);
  reg signed [(4'he):(1'h0)] reg45 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg44 = (1'h0);
  reg [(5'h11):(1'h0)] reg43 = (1'h0);
  reg signed [(5'h12):(1'h0)] reg42 = (1'h0);
  reg [(3'h6):(1'h0)] reg41 = (1'h0);
  reg [(4'hf):(1'h0)] reg40 = (1'h0);
  reg [(4'hf):(1'h0)] reg39 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg37 = (1'h0);
  reg signed [(4'ha):(1'h0)] reg36 = (1'h0);
  reg [(2'h3):(1'h0)] reg35 = (1'h0);
  reg [(4'ha):(1'h0)] reg34 = (1'h0);
  reg signed [(2'h2):(1'h0)] reg33 = (1'h0);
  reg signed [(4'h9):(1'h0)] reg32 = (1'h0);
  reg [(5'h15):(1'h0)] reg31 = (1'h0);
  reg [(4'hb):(1'h0)] reg30 = (1'h0);
  reg [(2'h2):(1'h0)] reg29 = (1'h0);
  reg signed [(5'h13):(1'h0)] reg21 = (1'h0);
  reg signed [(5'h11):(1'h0)] reg20 = (1'h0);
  reg signed [(4'hd):(1'h0)] reg19 = (1'h0);
  reg signed [(5'h11):(1'h0)] reg18 = (1'h0);
  reg [(3'h4):(1'h0)] reg17 = (1'h0);
  reg [(5'h11):(1'h0)] reg16 = (1'h0);
  reg [(4'ha):(1'h0)] reg15 = (1'h0);
  reg signed [(4'hf):(1'h0)] reg14 = (1'h0);
  assign y = {wire50,
                 wire38,
                 wire28,
                 wire27,
                 wire26,
                 wire25,
                 wire24,
                 wire23,
                 wire22,
                 wire13,
                 wire12,
                 reg49,
                 reg48,
                 reg47,
                 reg46,
                 reg45,
                 reg44,
                 reg43,
                 reg42,
                 reg41,
                 reg40,
                 reg39,
                 reg37,
                 reg36,
                 reg35,
                 reg34,
                 reg33,
                 reg32,
                 reg31,
                 reg30,
                 reg29,
                 reg21,
                 reg20,
                 reg19,
                 reg18,
                 reg17,
                 reg16,
                 reg15,
                 reg14,
                 (1'h0)};
  assign wire12 = $unsigned($unsigned(wire7[(4'hb):(2'h3)]));
  assign wire13 = wire10;
  always
    @(posedge clk) begin
      reg14 <= (&$unsigned((((!wire12) ?
          {wire10} : (wire12 ? wire13 : wire8)) - {(wire7 ? wire12 : wire10),
          (!wire8)})));
      reg15 <= (wire13[(4'h9):(1'h1)] ?
          ($unsigned(wire8) ?
              (!$signed((wire12 ?
                  (8'h9c) : wire13))) : ($signed(wire13[(1'h0):(1'h0)]) ^ $signed({reg14,
                  reg14}))) : (wire7[(5'h10):(4'h8)] | $signed(wire7)));
      if ((({wire13[(4'h8):(1'h1)], (+(wire11 ? wire11 : wire13))} ?
          wire8 : (~&(((8'hbe) | (8'had)) ?
              reg14 : $signed(wire10)))) ^~ (wire10 ?
          ($unsigned((8'hb2)) >= (8'ha2)) : $signed($unsigned({(8'h9f),
              (8'ha6)})))))
        begin
          reg16 <= (wire10 ?
              wire12[(2'h2):(1'h1)] : $signed((^~$signed((wire13 ?
                  wire11 : wire7)))));
          if (({reg15, (^~wire9[(2'h3):(1'h0)])} ?
              wire8[(5'h13):(3'h4)] : $signed({wire9})))
            begin
              reg17 <= (wire10 ?
                  ($unsigned((wire7 >= $unsigned(reg15))) ?
                      $unsigned((^~(reg16 << wire12))) : wire11) : wire8[(4'hf):(3'h4)]);
              reg18 <= (~(+$unsigned($unsigned($unsigned((8'hb2))))));
              reg19 <= $signed($unsigned($unsigned((8'h9e))));
            end
          else
            begin
              reg17 <= wire13[(4'h8):(1'h1)];
              reg18 <= (wire11 ? (8'ha3) : wire13);
            end
          if ({$unsigned(($unsigned((8'h9f)) ?
                  reg19 : $unsigned($signed(reg15))))})
            begin
              reg20 <= (8'h9c);
              reg21 <= $unsigned(((wire13[(2'h2):(2'h2)] ?
                  wire12 : {$signed((8'hb9))}) ~^ reg15[(2'h3):(1'h0)]));
            end
          else
            begin
              reg20 <= (!$signed(reg14));
            end
        end
      else
        begin
          reg16 <= (^{($signed((wire12 ^ wire8)) == ((reg18 <= wire7) ?
                  $unsigned(wire13) : (^~reg20))),
              ((((8'hb0) || reg21) != (!reg14)) ?
                  ((8'hb1) != $signed(wire11)) : (reg20[(4'hc):(2'h3)] - (8'hb7)))});
          reg17 <= reg21[(4'he):(4'he)];
        end
    end
  assign wire22 = wire7[(1'h1):(1'h1)];
  assign wire23 = wire11[(1'h0):(1'h0)];
  assign wire24 = (wire9 >= {$unsigned(wire23[(4'h9):(3'h6)])});
  assign wire25 = (|$unsigned($signed(((~reg14) ?
                      ((8'hbf) << reg21) : ((8'hb9) <<< reg21)))));
  assign wire26 = ((&$unsigned($signed((reg14 <= (8'hb9))))) ?
                      $unsigned((^~wire25[(5'h10):(4'hc)])) : $unsigned(($unsigned($signed(wire7)) ?
                          ((8'hb0) <<< $unsigned(wire12)) : {$unsigned(wire8)})));
  assign wire27 = reg21;
  assign wire28 = $signed(wire23[(3'h7):(1'h1)]);
  always
    @(posedge clk) begin
      reg29 <= reg18;
      reg30 <= $signed(wire25[(4'hb):(2'h3)]);
      if ((~&reg21[(2'h2):(1'h0)]))
        begin
          reg31 <= reg19;
          reg32 <= {{reg18[(2'h3):(2'h2)]}};
          reg33 <= {reg20,
              {((|(wire23 && reg20)) ? $unsigned((8'hbf)) : (8'hb5)),
                  $unsigned($unsigned(reg17))}};
          reg34 <= wire9[(1'h0):(1'h0)];
          reg35 <= reg19;
        end
      else
        begin
          reg31 <= reg16;
          if (reg14[(3'h6):(1'h1)])
            begin
              reg32 <= (reg32 ?
                  ($signed(reg18[(2'h2):(2'h2)]) <= $signed({$unsigned(wire8)})) : (~($signed($signed(reg31)) ^~ {$unsigned(reg18),
                      (~^reg32)})));
            end
          else
            begin
              reg32 <= (+$signed(wire8[(1'h1):(1'h1)]));
              reg33 <= {wire26, $signed($signed(wire7))};
            end
          reg34 <= $signed(($unsigned($signed((8'ha9))) == reg31[(2'h2):(1'h0)]));
          reg35 <= (((((8'hb3) ^~ $unsigned(wire23)) ?
              (reg33 < (8'hba)) : $signed($unsigned(wire12))) <= reg31) == $signed($signed(reg17)));
        end
      reg36 <= $signed((wire13[(3'h4):(1'h0)] ~^ $signed(($unsigned(reg34) ?
          (&reg34) : (wire26 & wire7)))));
      reg37 <= reg19[(3'h4):(1'h1)];
    end
  assign wire38 = {$unsigned((^$signed((wire11 ? reg34 : reg16)))),
                      (reg15[(4'h9):(3'h4)] ?
                          ((^(reg21 << wire24)) ?
                              {(8'hbd),
                                  reg34[(4'h8):(3'h5)]} : reg35[(2'h2):(2'h2)]) : $signed(((wire27 ?
                                  reg21 : wire12) ?
                              reg37 : (8'hb4))))};
  always
    @(posedge clk) begin
      reg39 <= $signed(($signed(($unsigned((8'ha4)) >= $signed(reg35))) >>> reg20));
      if (reg14[(2'h2):(2'h2)])
        begin
          if ($signed($signed($signed(($signed(reg36) ?
              $signed(reg16) : (wire13 ? reg31 : wire26))))))
            begin
              reg40 <= ($unsigned((wire26[(4'hf):(4'he)] * ($signed(reg37) || $signed(wire23)))) <= reg34);
              reg41 <= reg17;
              reg42 <= $unsigned({wire28[(2'h3):(2'h3)]});
            end
          else
            begin
              reg40 <= $signed((wire8[(3'h5):(2'h2)] ?
                  reg41 : ({{reg15, reg35}} < wire13[(3'h7):(2'h3)])));
              reg41 <= $signed({$signed(reg42[(1'h0):(1'h0)]), wire24});
              reg42 <= {$signed($signed(((^wire12) ?
                      (wire28 - wire11) : {reg32, (8'hbd)}))),
                  (^~wire24)};
              reg43 <= wire28[(4'hb):(4'hb)];
            end
          reg44 <= (wire23 ? (~^(&$signed($unsigned(wire38)))) : reg16);
          if ({((|$signed((reg19 <= (8'hbb)))) ?
                  ($signed($unsigned(reg44)) ?
                      $signed(((8'ha1) >>> (8'hb9))) : reg41) : $signed((+reg20[(1'h0):(1'h0)])))})
            begin
              reg45 <= $unsigned(reg19);
              reg46 <= $unsigned($unsigned((|$unsigned((wire28 ~^ wire9)))));
              reg47 <= $signed(((reg44 >> ($signed(wire25) ?
                      $signed((7'h41)) : (7'h43))) ?
                  (reg35 ?
                      ($signed(reg41) >= (reg19 ?
                          reg37 : wire9)) : (reg33[(1'h1):(1'h0)] * $unsigned((8'hb5)))) : ((|reg40[(4'h8):(1'h1)]) >= (reg18 ?
                      $signed(reg43) : $signed((8'hba))))));
              reg48 <= {$signed(wire11)};
            end
          else
            begin
              reg45 <= wire9[(3'h4):(2'h3)];
              reg46 <= reg32;
              reg47 <= (~^(~reg31[(5'h14):(1'h1)]));
              reg48 <= $signed({(((&wire26) ?
                      reg36 : wire28[(4'h9):(3'h4)]) >> (!$signed((8'h9e)))),
                  reg20[(3'h6):(2'h3)]});
              reg49 <= ($unsigned($signed(((reg42 ? reg19 : reg20) ?
                  wire7 : wire27))) ~^ $signed((^~reg39[(4'hd):(2'h2)])));
            end
        end
      else
        begin
          reg40 <= (-$unsigned((8'ha4)));
          reg41 <= (+(8'ha4));
        end
    end
  assign wire50 = reg47;
endmodule