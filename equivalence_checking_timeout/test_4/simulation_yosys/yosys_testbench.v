`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cmos.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_verific.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_yosys.v"
`include "syn_yosys.v"

module testbench  ;
  wire [(32'h238):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(4'hc):(1'h0)] wire0;
  reg [(4'hd):(1'h0)] wire1;
  reg signed [(4'hd):(1'h0)] wire2;
  reg signed [(3'h5):(1'h0)] wire3;
  reg signed [(5'h10):(1'h0)] wire4;
  top #() top1 (.y(y), .clk(clk), .wire0(wire0), .wire1(wire1), .wire2(wire2), .wire3(wire3), .wire4(wire4));
  initial
    begin
      clk = (1'h0);
      {wire0, wire1, wire2, wire3, wire4} = (1'h0);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h49c8a467f2d2427dbe9fd733293c81bb0aa701e2c1b9476dbae681db95e1f9c8);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h70d9aa395bcdb4f5d653c1fa8bc1336bc1502503e8a2ebe414797861185fdfe5);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h881b1a24848964d3fd0b81d8782895427a8c46f9560c24321594e26ee0f822ee);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h21a069238ea1082e73b6ae5e78d0e985de8c9521b4d10131372c924625bc939a);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hc7a22e47ddf8cc47c94b2f3a53c37035d03a8994e2d112106281a4c39759295a);
      #10 {wire0, wire1, wire2, wire3, wire4} = (252'hbb20415fc7380f3334180523b68e426279e9be6eadc8495bb106980f896778f);
      #10 {wire0, wire1, wire2, wire3, wire4} = (251'h4c435e96574b86ff90f7a0e9d659b6a183ff151827886f2352b8e1fcc435f34);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h46baf1f644c234a05ccf7f69a0b6c1e110d3dc2e9ba83cb6ceb14f0232a42774);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h46bcc2bc81adfb8ae4e0c3eba6cfc0913bfd64c2880fd622efca7a534a17a995);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hd19f8d84be110c4cd5029e931da6e6de6c19c11155f8eaef43b1acf3e163a492);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h40c6b97bc341ff99db69fbf64a35e6fefd2714add07d0f177ac6e6ff833e59cb);
      #10 {wire0, wire1, wire2, wire3, wire4} = (250'h3f964d4a18b846f0e15720b58556eca26105f590ffd39600dcd18f186e46796);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hc2e7915f090fe98ecdd400a75226813f2d6f6c9c5260c71fff69317ec1c4937d);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h488603e12da3b46306ddaeaf461107468be2a4b6d3b7753ce5a78337ddc72ddc);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hb5dbf5f983ffdc1c52f0d5a2d1ca33cdf9840412b054040b1aca2c116ef9dda7);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h66834cee9f248f89a7ca4b761c26ef9764e8ff1c61cf40df62f91d692b07ea92);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h5b9b4dfb331a583557aca79bf4183d587d8d20cc3be18f92b7ca2b09265df2f6);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h4f4f6ca5f84ef6536541c4ca68dd5e57451b6a574036be8c65b6badb620aed8b);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h219f9c0772d3ac5d5741347f00da7f97a80e8f6d6542705379e013f013ac1b84);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'heafa9831dd08ceab5e756ae987f9ce0c566c3e6e2b1c24fdb4d6d99f5d6ec116);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
