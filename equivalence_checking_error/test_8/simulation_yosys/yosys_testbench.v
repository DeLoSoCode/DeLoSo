`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cmos.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_verific.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_yosys.v"
`include "syn_yosys.v"

module testbench  ;
  wire [(32'h62):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(5'h12):(1'h0)] wire0;
  reg [(5'h14):(1'h0)] wire1;
  reg [(3'h6):(1'h0)] wire2;
  reg [(5'h15):(1'h0)] wire3;
  top #() top1 (.y(y), .clk(clk), .wire0(wire0), .wire1(wire1), .wire2(wire2), .wire3(wire3));
  initial
    begin
      clk = (1'h0);
      {wire0, wire1, wire2, wire3} = (1'h0);
      #10 {wire0, wire1, wire2, wire3} = (256'h86cf5facdbf32d50455d8208c068349ddb01c4487e9b07830b1c969ff0225260);
      #10 {wire0, wire1, wire2, wire3} = (250'h2f493d98e72fcbea69d89ccc79eef80ffcedf3cf6c5b13ed67016e73282d4e9);
      #10 {wire0, wire1, wire2, wire3} = (256'hfa5c00948d4066872e877a7814f3319ff03b5405157ab8ef834d9cd145019490);
      #10 {wire0, wire1, wire2, wire3} = (251'h7625f34a253a20c5d4eadd4bd41c0009f3733005f4c031625837c837a9acf3f);
      #10 {wire0, wire1, wire2, wire3} = (255'h48eed946dd997909e6660b9b06aba00a90750a295e5895ef9afee02e92e2908f);
      #10 {wire0, wire1, wire2, wire3} = (256'hde7dfd1dbe545a24f29a1bdd4a60df9e379aed6ca7c4162d4830249c2d3d07f0);
      #10 {wire0, wire1, wire2, wire3} = (247'h42ebc95ed3b89febffc40233ee96029fe43c4d6344efb5ff979ba8f429e90c);
      #10 {wire0, wire1, wire2, wire3} = (255'h4924e917c5cf0d6a0ba5ff6ef8c01404224f70f6d3f77675020797680f1f7ec6);
      #10 {wire0, wire1, wire2, wire3} = (256'hfd13ef98c3b2f4568d69a20324ae605385bf9a90f87215f967090569eb921e8e);
      #10 {wire0, wire1, wire2, wire3} = (250'h24e0f8ab0e6cb6bd176a32c524145f48d137c473ab7759a13cdf6492294b607);
      #10 {wire0, wire1, wire2, wire3} = (256'h8aff04b2b3609d5fa95971853c56488c5ecc168ffb00ad3fce4e28faea913c2e);
      #10 {wire0, wire1, wire2, wire3} = (256'hb6b1f06af3870a9b0d54fcc606b20a15d8d0b151df6f9c4f3169f81c408d72e9);
      #10 {wire0, wire1, wire2, wire3} = (256'hc17dc411791bdfa3854887363bae52026b12a485ade1bbaa5f0aac5ae4b9e251);
      #10 {wire0, wire1, wire2, wire3} = (256'h8132442b53bfc01f6b696fe0165ca0ba5df60faf10934f5997859af156ad4854);
      #10 {wire0, wire1, wire2, wire3} = (255'h43430c8189cc4c306cacce3cb9e5eb5199e0737390a6e562404c349abc4154c6);
      #10 {wire0, wire1, wire2, wire3} = (256'h8cddb6c5add53a55b4a2e871eceb752194291fe9ef0abe29e7423c54c012fad6);
      #10 {wire0, wire1, wire2, wire3} = (254'h213d40cabeeedae271e767dde0e5e02a3eb12e54598662314567dac042d50f78);
      #10 {wire0, wire1, wire2, wire3} = (256'h9e7d46383b12773ba65c4f784a03ec4215a6c095d487348b2cacc1e03233a9c5);
      #10 {wire0, wire1, wire2, wire3} = (256'h8f0651801a7d9197c82b24083a81c994e017f7f3dda825aacfd3b1a33b48495a);
      #10 {wire0, wire1, wire2, wire3} = (251'h6b0957bd24583182d3d60424403e6d359dfa488f8c9d93c0e0d62d429362ea6);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
