`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cmos.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_verific.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_yosys.v"
`include "syn_yosys.v"

module testbench  ;
  wire [(32'h2f1):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg [(4'hc):(1'h0)] wire3;
  reg signed [(3'h5):(1'h0)] wire2;
  reg signed [(4'h9):(1'h0)] wire1;
  reg signed [(4'hf):(1'h0)] wire0;
  top #() top1 (.y(y), .clk(clk), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  initial
    begin
      clk = (1'h0);
      {wire3, wire2, wire1, wire0} = (1'h0);
      #10 {wire3, wire2, wire1, wire0} = (255'h58b246f5c65e9a7504401fc7e8da31940dc8529b4fc36831cdfc7b8a5e46d523);
      #10 {wire3, wire2, wire1, wire0} = (256'ha15a5b19aace043fb5bd1580e15ba8dd754bacbe7abcbae22e689e07b957b0e3);
      #10 {wire3, wire2, wire1, wire0} = (254'h3f24d4e0247e91ed62f8aa14b514b0ac9648253a5bfcabf54f1f6ee6c374426e);
      #10 {wire3, wire2, wire1, wire0} = (255'h56ae4ded181cabe677af61b354c1832e8ef00930356afaccb2b806ffe957106f);
      #10 {wire3, wire2, wire1, wire0} = (256'hfc75e8c0a3382450b1333f9049c013cd1205919c86046e048ab835684db5cd2a);
      #10 {wire3, wire2, wire1, wire0} = (256'hdfec1197e61f4416f186b050de0fede7454e67a58e2dc78831c7d97711f33013);
      #10 {wire3, wire2, wire1, wire0} = (255'h458246f311b287b2ccc23da57fe26bf98bd5cd55071a3e797377f3dd71374c0e);
      #10 {wire3, wire2, wire1, wire0} = (253'h19e3297e8d49a8c78c51da2d72e5ed0ce8feda85da3acba9ba4a8fa67cab2852);
      #10 {wire3, wire2, wire1, wire0} = (256'hdbdd68df8c97e89b9b3e3c04b4a6a46b279600c0ff82fa7d988615aece0b86ed);
      #10 {wire3, wire2, wire1, wire0} = (256'hb2306044c185f3efe7f5fbd6831d4470f1420fb1dd68e2cd11e4e81a3f8338ad);
      #10 {wire3, wire2, wire1, wire0} = (256'hfbd70ce0140c2d57bbb4db352542fb0633efd806ba4de2cc6691091b56e2bac5);
      #10 {wire3, wire2, wire1, wire0} = (256'haf54732a076345d5da49b78484680b0e1931323be7b1bb265f28f1841ac251a4);
      #10 {wire3, wire2, wire1, wire0} = (256'hbe99a7de63461580580d0535d59540a6664fe6c01e578e9dcf5749abc46efdee);
      #10 {wire3, wire2, wire1, wire0} = (256'hd0f72464611f6f0919a855bfddb00a6b8f6dd560462d5d9575028a11a343cd9a);
      #10 {wire3, wire2, wire1, wire0} = (255'h46a80d1c703bbe2cb668850e864a413ed5d77b7b4a746ed9aa010dc817840a00);
      #10 {wire3, wire2, wire1, wire0} = (253'h1fc4ed9f121eb7abcd72d44c769595d8d2f22c6390e7bf400b37dff59873e950);
      #10 {wire3, wire2, wire1, wire0} = (256'ha03dbc0b381290f462bbfae897ab9d31b3a72089fe036d30b21a142f6157189a);
      #10 {wire3, wire2, wire1, wire0} = (256'h83df103876c3362d1825a750e0c25710113dae74be2bf3f7914c3785a6331bb0);
      #10 {wire3, wire2, wire1, wire0} = (252'ha7fbe13727b6fa9ec24dd459378116fc3b784ddba81d65dfb191ecb0f52e517);
      #10 {wire3, wire2, wire1, wire0} = (256'ha83545319d23ed5203423e309573bafd234a56b6bce9cdc7d833dd9eb31e2811);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
