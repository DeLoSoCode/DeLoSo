`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cmos.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_verific.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_yosys.v"
`include "syn_yosys.v"

module testbench  ;
  wire [(32'h87):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg [(4'hb):(1'h0)] wire0;
  reg [(5'h13):(1'h0)] wire1;
  reg signed [(5'h15):(1'h0)] wire2;
  reg [(5'h12):(1'h0)] wire3;
  reg signed [(5'h14):(1'h0)] wire4;
  top #() top1 (.y(y), .clk(clk), .wire0(wire0), .wire1(wire1), .wire2(wire2), .wire3(wire3), .wire4(wire4));
  initial
    begin
      clk = (1'h0);
      {wire0, wire1, wire2, wire3, wire4} = (1'h0);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h49cf835fc95f288fc17ee32a87cab2cc6950261c7df6b1c4310fbfb30b830ace);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hd753c48aad91469ba531214ba7ec7aa98c02bd60de31cb90a74c8f7f51ce57a1);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h2b7d5f1f935473df461097a116a15f8dce3c4766e633a734c4154bc24ee7279a);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h8f328c3c8eaf55dfebf27751c75726924a3e4fd9f0aa5d6aee69eab832878d3b);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hef0339b751187fff8a96a2d4920922663940d4b0022fed6415a6ecea91bc17d4);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h7802e7cc3268c63e0b5509e0347a7275147ff15ae9a4be4273f47d8ebf3ed6f5);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'ha1c52ace8bf9767f6395ed1e0585771feaaa55404347ad60783a6a97e0f263c9);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hb7ce75d8a0ef3faa5a8714b7836c0cc3afa3b48f7c5374fa6202b900cde23d3b);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hfdcad79c9570221bb11c1a1383f794097ca69320872ee2c45a5e8ab45f883252);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h422c8ccc7e4b04f53ee3944a81398c890481607bc9f88fd52b9b62ffe476e49f);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h37e1bf6681cb6c9f3c25afeb5a9c5100b520f46ba239d8ac5c574b02661a6ef9);
      #10 {wire0, wire1, wire2, wire3, wire4} = (253'h1106d746e4a3d82fffeb89a64e4dacbc808c06218a34a5f4a1b1a8dff4476e45);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h53056bc9af3453e0a27cbf40c1493dda751f4cfdd26d0e53ec954727a8a2288e);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hff965efee76d3c5b74d66cbc3bcf7874d3a63c8d26e99f6326a1bd63d1b805ee);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h2cd7b657490d97ce6b9448b0ebcee858417ee5c765472797324b214b735da1f2);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h6fb454cf920e64ddb74c947cdef0888d59ce7f9d0b1b8241d89328e698ed5bee);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h2a75539da2bc8237ef4c3c740deac196b3c3f8ce76e5b1473cdc7f79389e3529);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h223f0a369c033b50e1fc268edc0e1918c837cf346f5e1a00abf673bfd10ceccb);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h31d9b3949de9f593ee76b03ddc187a4c5f8a66c2ac5770c0f7c97eb070908ea6);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h59b73f84d5aeaf2f6db412e5e7a2dd82a3cb095c1a63367c62dc670d337fd208);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
