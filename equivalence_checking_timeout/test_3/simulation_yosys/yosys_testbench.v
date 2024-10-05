`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cmos.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_verific.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_yosys.v"
`include "syn_yosys.v"

module testbench  ;
  wire [(32'h1bd):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(5'h11):(1'h0)] wire3;
  reg [(5'h14):(1'h0)] wire2;
  reg signed [(5'h15):(1'h0)] wire1;
  reg [(5'h10):(1'h0)] wire0;
  top #() top1 (.y(y), .clk(clk), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  initial
    begin
      clk = (1'h0);
      {wire3, wire2, wire1, wire0} = (1'h0);
      #10 {wire3, wire2, wire1, wire0} = (256'hd8e5a1bf462a9ecd269433eac897483440543e577e605501e91cf7c5fefa49f4);
      #10 {wire3, wire2, wire1, wire0} = (256'h97c4db7f99b8fe45aa0e321f5f9050284f54c86570a5898b47c852e04869b553);
      #10 {wire3, wire2, wire1, wire0} = (253'h1b8a854d16d49b3ad21531c085e964ad98408a4bbf5108c4d9186724ffd48876);
      #10 {wire3, wire2, wire1, wire0} = (255'h7131e89bd7748ef65a08fb45544ad3090da4d3957c3c614c198049592f0bb218);
      #10 {wire3, wire2, wire1, wire0} = (255'h4f0824d059bd28a6c6423af2ed44f99982dfc200f9b124970cf4a04086ea97a4);
      #10 {wire3, wire2, wire1, wire0} = (253'h1f8f87c9a71b6af718cbd60c4502575cf95dc78c32e284a3aa4cceb5f52ef5b1);
      #10 {wire3, wire2, wire1, wire0} = (256'hdd1da1651d3297d06b28763064efe508f446bc7fd0bdbb4854940c6e453876d2);
      #10 {wire3, wire2, wire1, wire0} = (255'h5769a8249e6457a00b69f1951b93f91f794f28991d291ab2784f9b95e019f3b8);
      #10 {wire3, wire2, wire1, wire0} = (255'h61deb3ce12372c8f371830d62fb35027d3692f2736d504d5f7e2903eef0da7fc);
      #10 {wire3, wire2, wire1, wire0} = (256'had3b985a12c223e243d297574f1da74b08d8f9b2a3c677022ca8a296a1145554);
      #10 {wire3, wire2, wire1, wire0} = (256'headeaeab33c99d3092b1cfc9820babb12e50111fc59c8483db5b9253f4690252);
      #10 {wire3, wire2, wire1, wire0} = (252'hdcf2a78a132b1ee6f2b2fdf20c8143464da87c6a171deae4d066b3ece46a705);
      #10 {wire3, wire2, wire1, wire0} = (254'h276582cc101ce1a332f586c18c2df3ea2049f5c769936b5711f999d569981a52);
      #10 {wire3, wire2, wire1, wire0} = (255'h4681df4f80c3d5cb0b1d4cc3940bb96dba51044c2d0a1480e902ac7d126ffae3);
      #10 {wire3, wire2, wire1, wire0} = (251'h5f578fba06e785f0ba1a67362f5373300e9d36890c587ba03922912509ab2ac);
      #10 {wire3, wire2, wire1, wire0} = (256'hdad6caa8313ac4db490033ec82ffb12f7b287a52c46f92fc6a488d40809d01e3);
      #10 {wire3, wire2, wire1, wire0} = (255'h792fc11386d3e7e1b6b59e1a8d91f4bdc2cc1f91cfd8146f43e0ff7e53a0ffed);
      #10 {wire3, wire2, wire1, wire0} = (256'hb7232c24d71129e233fb9854f1dbfa6e1a90ac0f68976de7583f154e18a5d7af);
      #10 {wire3, wire2, wire1, wire0} = (256'ha9e231aa627d8f09c055930c71f20923fb519d7dae34af5a781aac02997d85bc);
      #10 {wire3, wire2, wire1, wire0} = (255'h54745b64577bdb33399ad932cfac010aa8d0e0858bb8fb6384f6d37f9e45919f);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
