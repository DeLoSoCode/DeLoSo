`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cmos.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_verific.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_yosys.v"
`include "syn_yosys.v"

module testbench  ;
  wire [(32'h97):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg [(5'h14):(1'h0)] wire0;
  reg [(3'h7):(1'h0)] wire1;
  reg [(4'hb):(1'h0)] wire2;
  reg signed [(5'h11):(1'h0)] wire3;
  reg signed [(5'h13):(1'h0)] wire4;
  top #() top1 (.y(y), .clk(clk), .wire0(wire0), .wire1(wire1), .wire2(wire2), .wire3(wire3), .wire4(wire4));
  initial
    begin
      clk = (1'h0);
      {wire0, wire1, wire2, wire3, wire4} = (1'h0);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h50d2ade5d366e4491e8c2c3f95038d99a8511c3cc6d4496e0a1e3fa00d9d6360);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h5e27ae161adf1c8794ad1d78e236fd0254a83e81f2856726d00fb0e895d92772);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h25f7b49f59ff0af8c5afd793150017371cefca3ba4ebff9b23c8deb9bdd8b6d1);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hbd925ca61f480f60d6a6f81529b011c86cdbadb6c5d7d0990ee9d1bcebe64ce0);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hcd897635aafdba00348b8072051ca989efddb35527cb166143ed43a31ad1e1bd);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hffcd278b739e5fe8c03a0e0f7c025a203bcd003746bf53d051109d3c9849d0e1);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hc84fbd6cd2733377750cb7ca8c101b2b67c33b6c1c9bd0d12f21140bccaeb25e);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hb3e7f036454268a572a1462a5c975d67d3a6faa6a0e457b18db2340fb4adc5e9);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h7e8dd8ec2e54206726c7fcea0346cafd6c95317f35a12b2ca66752d11968242c);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hff525100a96d94789aa8ee1b458cbf50b08e7ab0209f5209595e941524f2973b);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h4b03120a3f9a918302b4637f2595df936aa8742fdf2290aeabbce88fda549750);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h7bfa10fbc1023f577978abb2a67a2042b846ac839cc612eb6aa8ea3f26a326e5);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h33d7b2b220c5b6b410b9143af786ce956ea77816a1a96d228048239eef4f1297);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'ha8d10adcecabab43755e99d42a516f5758650758d5d1fba46e3fe6abbb17cfc3);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h97842dca3e426a5718eee936cc8a8d4bad08881457d2e3fd3d1967622c2fb805);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hc5e708a99eb067c3d45221a9c6f4de81f2234522d55a02fd8f42c45988cc37a6);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hcfcfc2aadab05986e0295d5b5b5ae8c332316779ca8b04d159f0b00e839f211f);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h6c59ba1a1c4281aec1885ff93f51c82438296bbac4cad7bea4690169fa69bb18);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h58ed5dcc15494c57467fa6e496ff400b0c8fd74d892c7e889a5240b1a7b3c3e0);
      #10 {wire0, wire1, wire2, wire3, wire4} = (252'hd6d1a1403c7f10728ed8cd8bf2dfa92b1304225be835a76eac4a998e4fdfc89);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
