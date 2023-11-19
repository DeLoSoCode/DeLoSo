`include "/home/zou/cells_cmos.v"
`include "/home/zou/cells_cyclone_v.v"
`include "/home/zou/cells_verific.v"
`include "/home/zou/cells_xilinx_7.v"
`include "/home/zou/cells_yosys.v"
`include "syn_yosys.v"

module testbench  ;
  wire [(32'h361):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(5'h10):(1'h0)] wire0;
  reg [(4'hb):(1'h0)] wire1;
  reg signed [(5'h11):(1'h0)] wire2;
  reg [(5'h13):(1'h0)] wire3;
  reg [(5'h11):(1'h0)] wire4;
  top #() top1 (.y(y), .clk(clk), .wire0(wire0), .wire1(wire1), .wire2(wire2), .wire3(wire3), .wire4(wire4));
  initial
    begin
      clk = (1'h0);
      {wire0, wire1, wire2, wire3, wire4} = (1'h0);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h31453ad28c3603e23b529501452295db804946a5120ad1c7f6ec01daf37d2525);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h4879672c4b77dbfe2dcd30a9448fe296e70285c82578b2da963c8021812024af);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h213ba3424b52074e2b1f88763e144763c7d7699e234530d1de7f890a14ac1075);
      #10 {wire0, wire1, wire2, wire3, wire4} = (252'hf012887255d5c071f47dfdfb6612e1ec07e0e9c645d1c45a4d4d9d5b7bdbdfb);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hd1191e54910fbf8f761f2af95d90d23bf38f247e2f4b3c6735a0667801b166b7);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hc302a74969f5ea0426d556ee0d8ccb75c2f1b61b81e78ea14ecdfbe70034b25e);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h2db2989e69d41dbf96d4a3f145e919e1986db146fe331048c8f020da603929b6);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hb4652532a62dc5caead448acb768c91033b1feebb9c90f2a8542695b3db26de7);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h8dec0059aad5f2ba3a8f3d99ac25a9eacad4ddb620f5e33aecf2671be5b49e8f);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h3999149bbf588fc2ee460609ca2759c7a440d567551fb47985b72478da40e567);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h3b27028ed360f3cae09b45f3806c114a33ad4b6706a97154ee5752a2f2ce75df);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h25957d821ef2a5100c3b38ea47c2deac9f1d68f3f2ac50c93175341112e211a2);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hff8a00ddb4f2a432d3f6ff8c1fd087070f7f40c1a4046c5d17f6fe265c097da7);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hbc744ecd2d615e3204114721bbab7dc9ae154ce874e0a5994be6393ff67613fb);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h8f92030e3c41f21a68877d8cf93cb22cb7de9dc745f5aa36b847c674a33ab360);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h9cb228a31dd1f7c5143fa5faa612e9e004e5c680bdff405da219d2941638b3b4);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'he399c846211f1e33b09b38234645a31be8de6357057acde924c5538e0a9c09ac);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hfced99aad434d30d1de12033d0bee3123d6c2ae71c3869f88e491f8369e99241);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h99edcad6dde44ff7132104530d488a7a6d406b355e4b8b666ed7fef7e565fab4);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h2f7cc407bcacfaf3dd8d0b88cd2cf0302bc822e42cf972d347da9c65afd6c308);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
