
`include "/home/zou/cells_cmos.v"
`include "/home/zou/cells_cyclone_v.v"
`include "/home/zou/cells_verific.v"
`include "/home/zou/cells_xilinx_7.v"
`include "/home/zou/cells_yosys.v"
`include "syn_yosys.v"

module testbench  ;
  wire [(32'hb1):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(5'h15):(1'h0)] wire0;
  reg [(4'he):(1'h0)] wire1;
  reg signed [(5'h11):(1'h0)] wire2;
  reg signed [(4'hd):(1'h0)] wire3;
  reg [(4'hf):(1'h0)] wire4;
  top top1 (.y(y), .clk(clk), .wire0(wire0), .wire1(wire1), .wire2(wire2), .wire3(wire3), .wire4(wire4));
  initial
    begin
      clk = (1'h0);
      {wire0, wire1, wire2, wire3, wire4} = (1'h0);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hae7695b21be474136031d5d44a3a61890f61a16c1c3581e4dff83210eca37c70);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h35cca6ffce500d8339a0cc6113a9a15773d6a3583df02420c57b52602b19f8f7);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h976ac4e9fd37a20bf2e63e201dc908a4d702544f5f427bba98757ce021d74580);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h55d1817496cb92d29187a26ae0c762295f72a9e8f10bec8f3e651ea81307cf0a);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h69fe6983df1fa9218464777dce5c0806d3146fa933cbab501d6bb9f00c72957e);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h9c2b992d71bd2c7cb3b44cb2897e75a1c996120900c434b5251f4e2d93f7f525);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h49237558ceb891d2ccb8ab4733f51427dec1024c1a8e8389aaf8c8eb4d82c8d1);
      #10 {wire0, wire1, wire2, wire3, wire4} = (253'h143beca5f9f546e68bef572c741640c253d68d19d8afb49a22357207eb0415cd);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h23cd18c7f443979b8027d715cf32b64f84616cabbdedab158421551e6be98ec3);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hb521ec3a3efd1bb0198070e1f14f74dff4ce232ead80e3d3705ca62f2f751148);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h53e2e59a91845c0526f68870406dc734457e96683e966a2432c1469baed6e916);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h66398276212005447f2b0b16d327c6715019f5599f5e5a4f371d92cfc31653be);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h684ecb9fb67d6eecc25a32c62524222d15c69c3a8d18035e0a465fe8089c1cde);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h54273a87b6dd67c7b1b5a213f84d4e348f35aa06f9a2d1ab3554486520813c82);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h61854f8610e2bf390ecc1d197b7f5257ad51e958c5d1f3238707a9482a6f1424);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h71df3b76dceb3cbcc471e478b0c3d5737fe86e71597a28c960e7483e79f9e9ac);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hda931b1ec91cbce2f4bf35d0ea9155e3d6c200e43fbe5f787e084140f0d9f991);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'he11b762eb4c588afe1bd145f70dc7da3d76de8b0e73369e30a182800687726b4);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h7ea44d53c0e9cd8f81b03a44969e6b7daf1f097183e1e402964b605e700c3bf2);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'haf841a234bd07118c89e1b74fde7fa773218a7cd00ecfc7514a721f93ccc13d8);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h34538572ff608b3366a9b025ee5bcd3f80320b7befa88f7df771fde56c1b25a7);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
