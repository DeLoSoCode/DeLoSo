`include "/home/zpy/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-209c700996e0364035dc376779c9a02a857a32eabe970cba2e506d10050c4ae2/share/data/cells_cmos.v"
`include "/home/zpy/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-209c700996e0364035dc376779c9a02a857a32eabe970cba2e506d10050c4ae2/share/data/cells_cyclone_v.v"
`include "/home/zpy/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-209c700996e0364035dc376779c9a02a857a32eabe970cba2e506d10050c4ae2/share/data/cells_verific.v"
`include "/home/zpy/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-209c700996e0364035dc376779c9a02a857a32eabe970cba2e506d10050c4ae2/share/data/cells_xilinx_7.v"
`include "/home/zpy/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-209c700996e0364035dc376779c9a02a857a32eabe970cba2e506d10050c4ae2/share/data/cells_yosys.v"
`include "new_syn_vivado.v"

module testbench  ;
  wire [(32'h101):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(3'h7):(1'h0)] wire3;
  reg [(4'ha):(1'h0)] wire2;
  reg [(5'h15):(1'h0)] wire1;
  reg signed [(4'hf):(1'h0)] wire0;
  top #() top1 (.y(y), .clk(clk), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  initial
    begin
      clk = (1'h0);
      {wire3, wire2, wire1, wire0} = (1'h0);
      #10 {wire3, wire2, wire1, wire0} = (253'h19c47bbf0773ab79227cd369b06770f788cafa4518c8484be2ecfdb13cd3b502);
      #10 {wire3, wire2, wire1, wire0} = (255'h47fb080d6d08e8d478f5341587e7343a9de90d3fec2d1e341b67392565b897a2);
      #10 {wire3, wire2, wire1, wire0} = (252'ha982e1614ef86ef2c2559ffa57bdd7c68b993b9f8d472ad22aa78fa55827ad2);
      #10 {wire3, wire2, wire1, wire0} = (253'h159bc5bf8b43b03f6bd66c01282e92206d60b8c8183f6161adb4d636ade3172e);
      #10 {wire3, wire2, wire1, wire0} = (251'h69f52868663f25c4e3889b8d502b799c6b74b3e746e5a47cab9b45bed8b8fc0);
      #10 {wire3, wire2, wire1, wire0} = (256'hf1ce2320238fbb84cdd81a96ee8c778b389adcdc12bf1beb1fd4ad5d14f3e59c);
      #10 {wire3, wire2, wire1, wire0} = (256'hc392408b07117c25959370b01ed74ced48001c0f9cfb42ae7ce489ebb63461e5);
      #10 {wire3, wire2, wire1, wire0} = (256'hcf8835f291f7475978e3e760e81a3485d279d067f56e983e80f64357e4ba0f57);
      #10 {wire3, wire2, wire1, wire0} = (253'h1bbaf2a6ca4b4beccef059f3c2a66608efb376cdec5ea3c44c37c5b5f4e5c023);
      #10 {wire3, wire2, wire1, wire0} = (255'h70893750880e2a15eef9b3e6f85416638e5980a34e2ab949e58a3e794a4ca37f);
      #10 {wire3, wire2, wire1, wire0} = (255'h6e183435e6a2dbd7c939194f4ddef191b3b7f3c80c1a23d3403c2910fdcc221b);
      #10 {wire3, wire2, wire1, wire0} = (252'hcbd62fea82ddb9f5f2b3d3da60adaf904f81bf0349fc55003919c7ad4f6c0a2);
      #10 {wire3, wire2, wire1, wire0} = (256'he58fb13dd81c1e0953f9ac476058843b3789c028a82e68e05a7afe582ee8fbcb);
      #10 {wire3, wire2, wire1, wire0} = (256'hb5014ce6d7d9b3be543c51954572cae1e41100eb4a884bd0db082b26c56bbd02);
      #10 {wire3, wire2, wire1, wire0} = (256'hbed50f3c2fd6500163f1c6ee556756433862f751da731b689668789fee97f25e);
      #10 {wire3, wire2, wire1, wire0} = (256'he0f6a384f2c19d0eb6b00c6599be03ade23d444704dfcf73e4b9935c7ee0cc3a);
      #10 {wire3, wire2, wire1, wire0} = (256'hbe45f0a20b5b2a4bd218ba95832df55ddb72eed9aae39b40edd85929e1b226f1);
      #10 {wire3, wire2, wire1, wire0} = (253'h12eb12a26b0271c7138af871536c5b09d88e4a75dad72c8d6ca6386e342d4c0b);
      #10 {wire3, wire2, wire1, wire0} = (254'h3d77f9a45c3d96e7f2611a14256d920e15038deb74974b101482de68d30a70b4);
      #10 {wire3, wire2, wire1, wire0} = (251'h52b42035d5166033aee5fb90159986ffd3ff0131ec68491b21a18f0a339420b);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
