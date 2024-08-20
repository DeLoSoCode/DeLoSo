`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cmos.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_verific.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_yosys.v"
`include "syn_yosys.v"

module testbench  ;
  wire [(32'h291):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg [(5'h11):(1'h0)] wire4;
  reg [(5'h15):(1'h0)] wire3;
  reg signed [(4'hd):(1'h0)] wire2;
  reg signed [(4'hb):(1'h0)] wire1;
  reg signed [(4'hb):(1'h0)] wire0;
  top #() top1 (.y(y), .clk(clk), .wire4(wire4), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  initial
    begin
      clk = (1'h0);
      {wire4, wire3, wire2, wire1, wire0} = (1'h0);
      #10 {wire4, wire3, wire2, wire1, wire0} = (254'h3ea89ff4bc133d0987241ce8157ca1fe860765d60e47e1e816781ec463e81aca);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hc231af544526502e0437aea940c89aeb8d3cbcbf89ed68548956c66b60c46691);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hba30fe330598fba7de80f0358adc2c09ca5eca4ae54b43f369e1010360cdbfc3);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hceb5c5716d54d85f760ce3b25f1391bf96aa437016790df03e01360f8333d346);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'h9cfb3f321f9c62136bfa145932f22d095cbec6be768f190e423bd407f6be72df);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h66c4ee1981748ab630ef57c2d5d08d6f00cf6f3d2c75dc187abfdea1dd102f2f);
      #10 {wire4, wire3, wire2, wire1, wire0} = (254'h2f62b08956e0afca07da9065e945018fc59b4a371027c256871b20b3de5f3ae5);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hade1640dffbc696b1865021a65f71c38f59e7700e507ab7c48705178d487003a);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hb859c3b26b94caa8b40ac5833ac6dd11d0310b29260863ec54faf2a0c7a74683);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hfdc037a96d3248e6ed8f3b39e0653282eec55feefcc25f987069e405e85a3329);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'had5c5dd963fdba31c4db07e0e6650ca6e0a8e9bd92c751ed8ec3eb06ee9f42d1);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'h814a376035ecc2f9a989220463880c5a35875b2536579479793db2825df288f1);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h5646a3e44637aaf7b1f9dc30eb3da98be1dcb143a988c893f8df4c6645ac6a86);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h793bdafc38b9528d7ccd74f87bd0be094b096bcf92dcf0d609d7a257f1152bd0);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'h97b48499a307f5fc5fde2fd1d461097dfd96f4dd1c79a7ecf9862893e8e5d346);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hbc4281a4d8fca4f7cc9e33f3f1261c29bf4e4331f09fcdef12c29c8a86625c6b);
      #10 {wire4, wire3, wire2, wire1, wire0} = (254'h3ed759016b795bcdd6272869fe741085ed95c0e7183a4bdf7113f20eaf49763d);
      #10 {wire4, wire3, wire2, wire1, wire0} = (254'h34e59c5c8bf7869320bbc9ef6d9a8d28dae53cde1a36e14bbd56711115c93bee);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h7533ec144b1ef09c1a645b00781e44f6e48637fe0fda3468f3955509d23cd53c);
      #10 {wire4, wire3, wire2, wire1, wire0} = (253'h1393779247f11f21e7b994ad661f3b189120a158cfcb49179a3fccccc3a29441);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
