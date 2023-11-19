`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cmos.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_verific.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_yosys.v"
`include "syn_identity.v"

module testbench  ;
  wire [(32'h14f):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(3'h5):(1'h0)] wire3;
  reg [(4'he):(1'h0)] wire2;
  reg signed [(5'h18):(1'h0)] wire1;
  reg signed [(5'h19):(1'h0)] wire0;
  top #() top1 (.y(y), .clk(clk), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  initial
    begin
      clk = (1'h0);
      {wire3, wire2, wire1, wire0} = (1'h0);
      #10 {wire3, wire2, wire1, wire0} = (255'h67583e813d7b5521a14138425d42e866f7d6b6d9ba49c1cfe7524d174b747153);
      #10 {wire3, wire2, wire1, wire0} = (256'hf29f33632a883c5fb75b4c52a5ff5837b8a1b417a37b4264c6bf9250ee2a3fd1);
      #10 {wire3, wire2, wire1, wire0} = (254'h2ec47af1c9585f7c7be6e754d3dd13614086f900a74c75aad96400fa922437b9);
      #10 {wire3, wire2, wire1, wire0} = (252'hd1045a8204d924db12efe2a54f9ece9188b287a69bbd916857d7166f2622c31);
      #10 {wire3, wire2, wire1, wire0} = (256'hb6c7eff7b485023802edfefa2075cf0ea0c2eef3a35bea453ba0671d497098ff);
      #10 {wire3, wire2, wire1, wire0} = (256'hfba2a4ad6ad8ca16bdfd6ff5df6a0eaab43734dc517a9c247d868085f962c99c);
      #10 {wire3, wire2, wire1, wire0} = (255'h6bfc78c216bfe5e3537a58926a55856c36be79f58b2895c62a6fec1e4b5d7da5);
      #10 {wire3, wire2, wire1, wire0} = (255'h70041d05947a3753cdb8a55816ae72221383e8a2e2aef316e9f5c2af852fdcc9);
      #10 {wire3, wire2, wire1, wire0} = (256'hb04996849abeb9d2c5a83d4516fee067d34258ab9ae602e8c4644e30746004ff);
      #10 {wire3, wire2, wire1, wire0} = (256'h83047e992462114bc7b291cecc2bb545298e5844c604dc77c254f60976a95bde);
      #10 {wire3, wire2, wire1, wire0} = (256'hd6c8a8fd866aac28846049dcbd903c569c84e229b25e1fe788a9046f5820a9cf);
      #10 {wire3, wire2, wire1, wire0} = (254'h29c732f69013bb0e1995acec3de24fbf0f77e977a5dbe6feffb908ace0761770);
      #10 {wire3, wire2, wire1, wire0} = (256'hbc46969994e5961f3f55f89acbc81b4aeac15424a3601f647230d73ed1bc2b9e);
      #10 {wire3, wire2, wire1, wire0} = (255'h519f7ef5b824323bd9e74cdf95d582880c658ce9d4af6eb39e67af01709f5795);
      #10 {wire3, wire2, wire1, wire0} = (256'hcd73a50a349683324568e2673811607ed315c241a3c66cf6bfeb153566c165d8);
      #10 {wire3, wire2, wire1, wire0} = (254'h3d66d5303b2499f3896918394564842a9c131363faa260bfd3a57470c3ca62c0);
      #10 {wire3, wire2, wire1, wire0} = (256'hcdaf6e4a91e54715f58158e610af23404dc31d6b2198a70b48816ad0b90d40c0);
      #10 {wire3, wire2, wire1, wire0} = (256'hdae9ceb893bc37b96a1e91b50aba9badbe02a2aa8804808551a002876ca2750b);
      #10 {wire3, wire2, wire1, wire0} = (256'hff906d3d71716f1a21bb407f229b63d0821ce95e7b0fc1a2a898d7cb59608d52);
      #10 {wire3, wire2, wire1, wire0} = (255'h79d05af215591a022d7159d01e4aae0d1e679b643895a2268a611df1f4249b7a);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
