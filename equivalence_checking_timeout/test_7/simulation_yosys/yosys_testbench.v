`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cmos.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_verific.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_yosys.v"
`include "syn_yosys.v"

module testbench  ;
  wire [(32'h227):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg [(4'h8):(1'h0)] wire0;
  reg signed [(5'h15):(1'h0)] wire1;
  reg signed [(5'h10):(1'h0)] wire2;
  reg [(4'ha):(1'h0)] wire3;
  reg [(4'hd):(1'h0)] wire4;
  top #() top1 (.y(y), .clk(clk), .wire0(wire0), .wire1(wire1), .wire2(wire2), .wire3(wire3), .wire4(wire4));
  initial
    begin
      clk = (1'h0);
      {wire0, wire1, wire2, wire3, wire4} = (1'h0);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hbd70f7d1649a79466d3619a1acef682034c932e215bae0118808e246051ab6c5);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hadfa2a4c32fc9df895c00113d9fa3c665a14c5cb65e81679c6e497962564c381);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h56c13bb1e8dac1c6a357b71e29d98bc934778195e098127bb854c10dd376ed99);
      #10 {wire0, wire1, wire2, wire3, wire4} = (253'h117282eead9a94f69e55be31b84a3f03f0a30a9d8e77005fa2d78a317e587127);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h4ebcd00de2558ba098b53b8284f4c8d0a090d299d344b1d3c50da2def167ad9b);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hdd34c1c3c1ae3db9fa05481c92119bb0d9fe20036e1358cda627b35e4a7ef437);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hd54d139682f37dd1b922e009c5d9f3743c60d138b693e53e7c49680da5c9f22e);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h4add94d79bc1f70581a75b2c8a510d1080339719decdb209649ce050f5053802);
      #10 {wire0, wire1, wire2, wire3, wire4} = (253'h1f91264bfe5b15396f083446d5e18475cfa289168b85b253a39ba2891f0866cb);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hee4e8d3908a580540171bcca29966cab32958db6f6e6adf5793fb3931d6006e2);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h622548a7495a1eb56d99f6f5109c38fc46148d2d9ea9cc20693f6d868bf14566);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hf23f3e10bfa3fba8b685b20d4506aacb6ac18c5b3e11e15e172ac879732005ec);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'ha64e6b56192c5aeff85381aedbdb036e682140363a8b31e06098801e7ac307b2);
      #10 {wire0, wire1, wire2, wire3, wire4} = (253'h15325eab0a6d6839372d8d9511d8ebef668e6870d5c1def2a0b0d2860832b4c5);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h29696bcc94c7c898c696d4714ea5b3f93a0b953578e0ad274ff4ac8fbb04a293);
      #10 {wire0, wire1, wire2, wire3, wire4} = (252'hb894cf00b11125b6da9a25d4b61f7c82b5579ba81cf047b92180dc3fb3e176e);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'haafaecf0719c2fc64a3f0889bb844c92415d6d3b567c0bee4b22c74b00410dd3);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h595562afff0dbee75ea7ce497eb29c7f3abdc362204d69d84e5f2bb58ae05b77);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h75940639f5384b79e7fae2d5a6f42cd90606c8e7449b7b64d505cd49ae1245e0);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h8ee17df775938fe1df8682f8c314d2869ac1e4851e76381156b3de8d236ec6eb);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
