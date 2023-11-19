`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cmos.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_verific.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_yosys.v"
`include "new_syn_vivado.v"

module testbench  ;
  wire [(32'h167):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(5'h11):(1'h0)] wire0;
  reg signed [(5'h10):(1'h0)] wire1;
  reg signed [(3'h4):(1'h0)] wire2;
  reg [(5'h12):(1'h0)] wire3;
  top #() top1 (.y(y), .clk(clk), .wire0(wire0), .wire1(wire1), .wire2(wire2), .wire3(wire3));
  initial
    begin
      clk = (1'h0);
      {wire0, wire1, wire2, wire3} = (1'h0);
      #10 {wire0, wire1, wire2, wire3} = (256'h8db141e12985760e076b96b3fcecfd4ba9fe08ce19b36697ffcbaaac3e031f74);
      #10 {wire0, wire1, wire2, wire3} = (256'h828e8b44c56e1977507876a3d194f0e2e1c6ba9b4285296e0e38ffdf15b3226d);
      #10 {wire0, wire1, wire2, wire3} = (256'hdecf2350fd766e8259f1b34efe887baa74e51a9128c318e0bfedffc6bf951bc1);
      #10 {wire0, wire1, wire2, wire3} = (256'haaefb508115e1f44fec2ee4957a923daaadae5e3b86393b95548d091d7129b15);
      #10 {wire0, wire1, wire2, wire3} = (251'h75995237d70297af2543e9d0e00cefd5212dc099047e6382a2f86d4cbe6c034);
      #10 {wire0, wire1, wire2, wire3} = (256'hae7765fc088bda52e378b2fd47bf4b7ecedc687edb142cc7f4e4d6a45f2733b2);
      #10 {wire0, wire1, wire2, wire3} = (256'hd0956855791e7fdbfc80eaab230b4946454c3954960edf1caa4dded2af3c1cde);
      #10 {wire0, wire1, wire2, wire3} = (256'hd2246e2f02bf343bd7af8f97982d420cd23f1086b4195eb70cae9e027f5e5f95);
      #10 {wire0, wire1, wire2, wire3} = (255'h4c6db746ee0ed26f1619a92594cd142c2d0ec2efee291954f403afbe7dc87634);
      #10 {wire0, wire1, wire2, wire3} = (254'h377b53f7f6101777631505fc34f2a39b3c1ba1fe27ec9cc4cc23f02eab457e06);
      #10 {wire0, wire1, wire2, wire3} = (256'hd0594622bd715dc49141e08bde66648c453eccee61a9fe352d9b4523fbdde9b2);
      #10 {wire0, wire1, wire2, wire3} = (254'h233ec5e7011c2591c4bb529fe191a1fae20c7dcb20e4161cd31b119b268651b8);
      #10 {wire0, wire1, wire2, wire3} = (255'h7249f51dac1e4b66483d6c23eae6397f8b2251e37d950b7c8b2d5d36038fd8fc);
      #10 {wire0, wire1, wire2, wire3} = (255'h6ead9bf9e5c6984d4c76545df7b7684cb5a5e002042efd31ee0a05aa55dbc286);
      #10 {wire0, wire1, wire2, wire3} = (254'h2353a1e7adcd880b7afe908c7e4e9dd9927e984321754a247b8aa46a51352ae7);
      #10 {wire0, wire1, wire2, wire3} = (255'h6e1eaa6d5904598dfe30ba8ba85a86cd4a269a77b01e1c0ae60477f6d57aa45f);
      #10 {wire0, wire1, wire2, wire3} = (254'h30a88b7f3d286e554f794dadde29133ac336e7620d29b8b4113b7b736fc80b8c);
      #10 {wire0, wire1, wire2, wire3} = (256'h85a1415b034243d8797d4c2968a8947161ad0bac4bdd482266930b2e988ba713);
      #10 {wire0, wire1, wire2, wire3} = (255'h7a9da772a677356fe2d7158f9f7b52fe8b84770e060fc6682e5964a69c50e578);
      #10 {wire0, wire1, wire2, wire3} = (256'hcb3ad4d46a1ff7c5cbacbcfd09a73df54dce50b79eba711ef3c07dfdf1540356);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
