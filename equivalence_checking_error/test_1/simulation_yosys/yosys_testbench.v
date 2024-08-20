`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cmos.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_verific.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_yosys.v"
`include "syn_yosys.v"

module testbench  ;
  wire [(32'h283):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(4'h9):(1'h0)] wire4;
  reg signed [(2'h3):(1'h0)] wire3;
  reg signed [(5'h11):(1'h0)] wire2;
  reg signed [(5'h15):(1'h0)] wire1;
  reg [(5'h15):(1'h0)] wire0;
  top #() top1 (.y(y), .clk(clk), .wire4(wire4), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  initial
    begin
      clk = (1'h0);
      {wire4, wire3, wire2, wire1, wire0} = (1'h0);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hb0da033ddf8db24dd7b3c320910d4f0ffb4040c410415bc8e3a69838ad6a31a2);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h758dc394bab4827adedb2ad048fe508d2d95ceb4a97ed0bd9b25e5ae232f00b8);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'he6cb00914effb67ebab3f8cbe311d0e982496a94a0bd479031a8bfa557d6a21a);
      #10 {wire4, wire3, wire2, wire1, wire0} = (254'h2351137a15a049a24c6304ad3b483718118ec5fd00d60b104fc8da40eee20cd8);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h5ff0b6dacc08d714453e07a322a8e3659f3ed611b4f391d3ca403bcd6ef551c7);
      #10 {wire4, wire3, wire2, wire1, wire0} = (254'h2be98e4e8214efe2f2e10ed5ebd74e0d9c72f1be4a2b52201de4bee54ef420e2);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'h8b21d04d74d650c2b3b342d041537fa03210a43960ae339a7d5e6cea9f4b4900);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h56b605cd44f882e301dad4b5c55364f7811fcecae254e7469c2e5ce7eac3b583);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h70de45eed32b4937081133fa2551133f3d4646f07900840761b20fd1f106e989);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h7058dc0ca97ad56cbfb8faa0e3368bab1dd7bd393e8ca9c1ef5be07818ec88cc);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hd45b8ca26841006682d6aa19ffe42b6f0e599683d61f85659fba5c2a4948a215);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hccec7064c84723bf9c65abe73c040487f1139f871541ba75dd913858f180883e);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hd8d07fcf90c0ae691154c31478123b95d78a5d032b855f2b0b3c68a063242fdf);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h4f773d6266736fd396d4549448dba65327e2c16f4d1d9b46944a113162cb30f3);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hf14dfdc73cafaf616e7690cb003662d5ed35f7271f19b0600e439c64a64be3f6);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'haa1a18800b4b04d2ccb200f82e7231e03d90a393286f18fdbfe15229aba58bca);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h720644ec82af7bc6993391f679226f78a8dd2f953c979c18fd61364e18e50aed);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hc7052a4fe798a72c0b1d26d534c7073e9ca2d0e468c534bc6468c72680d04971);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'h825d28cf6e22835e19d759026fdcf995be133ca2661c3d1e59bf96a98579467b);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'h9ddd4fa11c0c9ba1545a600e7408f292339701dcac119b9b8072cc59f75f8ac2);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
