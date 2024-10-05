`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cmos.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_verific.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_yosys.v"
`include "syn_yosys.v"

module testbench  ;
  wire [(32'h25c):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg [(4'hc):(1'h0)] wire0;
  reg signed [(5'h11):(1'h0)] wire1;
  reg [(5'h14):(1'h0)] wire2;
  reg signed [(3'h4):(1'h0)] wire3;
  top #() top1 (.y(y), .clk(clk), .wire0(wire0), .wire1(wire1), .wire2(wire2), .wire3(wire3));
  initial
    begin
      clk = (1'h0);
      {wire0, wire1, wire2, wire3} = (1'h0);
      #10 {wire0, wire1, wire2, wire3} = (255'h729042712bb0e91ba304b23567913892ed4f2dc649ad849e77b4bdac5c08a7d8);
      #10 {wire0, wire1, wire2, wire3} = (256'hdfcbaecf79916cd9d3beb552088cd3aa811ad53d3a8844f9e2d691fa5dfa3d0d);
      #10 {wire0, wire1, wire2, wire3} = (256'hddd8985b9230b15bb33f29a57aa88ed275826aef184afceef3f00513ce83a415);
      #10 {wire0, wire1, wire2, wire3} = (248'ha5f9d4199855ca5ee24a52360ec751a6c843bc9630bea45f9d07536eecae43);
      #10 {wire0, wire1, wire2, wire3} = (254'h21b3394f167b6576980b4a12d72cc61632291e543900a02b21660642dab342a9);
      #10 {wire0, wire1, wire2, wire3} = (255'h4cb5137178e3890862b25edb88f12f2ee9f74d4ea58752f3b1057ef49c08640b);
      #10 {wire0, wire1, wire2, wire3} = (255'h5fbbbee6dfdcfe815a9710cdf628fd8e30de7b14919c532b60d8d09387047540);
      #10 {wire0, wire1, wire2, wire3} = (255'h45a1586745fd2e064d605e9cea75ee4252583f68fd311e3e5053a76b0b4e51b1);
      #10 {wire0, wire1, wire2, wire3} = (254'h32c7f156af599478e22dbafd53feb79429b10ba24a115f789004ab3049580570);
      #10 {wire0, wire1, wire2, wire3} = (256'hefc06129dc048bef226e9b5646c20a1dd818cbe1ede3ffd724ea4c75f83fda8b);
      #10 {wire0, wire1, wire2, wire3} = (256'h918259aa64850b0fe965a0852faa9a34e63c4ef4f1e9740c9623e6d5a266d5b8);
      #10 {wire0, wire1, wire2, wire3} = (256'he8cbd506f34c73ec56e07f9062b9b3d9c0a228249e2340bf971cc8b2168bcab1);
      #10 {wire0, wire1, wire2, wire3} = (256'h861b14ecb6d895b7e75803b98c1f96d78a883584be5168d7ddb50cead7ae76da);
      #10 {wire0, wire1, wire2, wire3} = (255'h6567e5dcbc15431c2495b1cffe17956e5f05df87545dd08464f41e424365f8a1);
      #10 {wire0, wire1, wire2, wire3} = (255'h6d0ec0e6bcdf6c33a03192f890ca84b1194cc0b6465474fd7b126c0b20213bc5);
      #10 {wire0, wire1, wire2, wire3} = (255'h7528a1b552eede1e805b40678ea0ba28153065cfbbc4649eb5a7bc9f1394d19e);
      #10 {wire0, wire1, wire2, wire3} = (256'heba33edd4c907e8a0958d1bb0bd8e5dd2824af4aff6a17e0c7112838ece4446a);
      #10 {wire0, wire1, wire2, wire3} = (253'h16c54a3719732df5d62fd1d272bd94ff107b1c213fbd299581038dd59a078433);
      #10 {wire0, wire1, wire2, wire3} = (256'hbd552cfdff418a9bc9be6b9065c633a4d9c9baa2701d8f4bbb7b4978a3e06aa3);
      #10 {wire0, wire1, wire2, wire3} = (253'h115fdb86e16361ba51a741a5e99a9a31c4bfaa6682d1b252b0d5c12b3f2c7a44);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
