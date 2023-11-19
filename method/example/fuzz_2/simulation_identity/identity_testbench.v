`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cmos.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_verific.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_yosys.v"
`include "syn_identity.v"

module testbench  ;
  wire [(32'h5d1):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg [(5'h18):(1'h0)] wire4;
  reg [(4'h8):(1'h0)] wire3;
  reg signed [(5'h15):(1'h0)] wire2;
  reg signed [(5'h19):(1'h0)] wire1;
  reg [(5'h14):(1'h0)] wire0;
  top #() top1 (.y(y), .clk(clk), .wire4(wire4), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  initial
    begin
      clk = (1'h0);
      {wire4, wire3, wire2, wire1, wire0} = (1'h0);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hff2ee51d2b396b831955974efd764f4672e5601073646ee43e97b2d17aaf0e0d);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'ha59714b0b6d66ac52e8eeff17e4e4abf7b7c5840cb60c5a74257daf064ff6441);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hb78bd76af894653a225be5347cd68739c4af18ffe834bc01c81dbbfd54d80647);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hcf5c5a1cb21a96959f87ad9048734047562b7bd5f104d721a7d65eac2437e53a);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hf3661fdb5da404ff6e6a88d41ce8064ff54addd78aa45eeb40a638578246463f);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'h85cc6054cb042557898e153a495a53c9667b724c31a63eaa3713bf4290f46eff);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hecc79d542f35717554b782d40115343b53a1fc736c92b8a611dd5faa1d5955a2);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hd4c3161e7b0d90e151d46c16d48c751e74ed5ec75cb784b345f5c8cc6de671cd);
      #10 {wire4, wire3, wire2, wire1, wire0} = (253'h107f1b3dd257fb5ecf458a5c07c1dfd3956d1754f82c81af3ea5db475f40fb77);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hafc6d576f6cc95477782e86e43d45b8ec49cb1329375714e95c5660b7b811ba3);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hdaf3d02365b32c658abcbfdad0d307a2ec9d94902809b0f78365d4ea252432fd);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hc9f335e1ae3e388b028c250e016ebeeb319c7f28a6573bfaf73440b09ec618a7);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h4a8df420c3f35c86385faf66c3d2b41b1bbe8872f6166facf325a42147766bb6);
      #10 {wire4, wire3, wire2, wire1, wire0} = (250'h3d84e20177f66b172569a6661c72e7ef1be16045855c28089598930a9e50b10);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'h8c8e71462813b6ac103cd994bd4a061b5a1b86513eca8c65974c5fee6c3aeb17);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hef9c10fab00f3228b79d9aec2910b12b26840df62685c6f79c4f13a149b589f5);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hfc2a3c54278eee69af8a755d66c68b1c1899e5e31c6ecaa42240ef8b9d4e8f0b);
      #10 {wire4, wire3, wire2, wire1, wire0} = (253'h1096b960a5ab705075ff3f3a2827bdedac0ed83a2287faeb179e26ff03872662);
      #10 {wire4, wire3, wire2, wire1, wire0} = (253'h1b25094b428966163d69ad50a32add99550e953b000bde7ba7d5d24000e6b2e3);
      #10 {wire4, wire3, wire2, wire1, wire0} = (253'h12dfd60ec1920023c561b19a3f3e9fe2cab2be7c180e632b7ea72230fd348622);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
