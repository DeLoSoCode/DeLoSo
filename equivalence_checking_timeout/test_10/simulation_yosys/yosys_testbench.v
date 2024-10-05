`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cmos.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_verific.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/store/ghc-8.6.5/verismith-1.0.0.2-4d02a18e1a33c2009e8c000d5563cd3eb2a4a18f6a8f62a8773f5397f8c259ec/share/data/cells_yosys.v"
`include "syn_yosys.v"

module testbench  ;
  wire [(32'hfe):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(4'ha):(1'h0)] wire4;
  reg signed [(5'h13):(1'h0)] wire3;
  reg signed [(4'hb):(1'h0)] wire2;
  reg signed [(4'ha):(1'h0)] wire1;
  reg [(4'hd):(1'h0)] wire0;
  top #() top1 (.y(y), .clk(clk), .wire4(wire4), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  initial
    begin
      clk = (1'h0);
      {wire4, wire3, wire2, wire1, wire0} = (1'h0);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h7b20c227fe33a89765209ebeb5facc1405f6165c888d3b2cecdaa226dce087fc);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h53f1bde75bd39f99a7506364da0f17327d238b463b354f1bf4558006844b59c9);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'he437275b2de5e2054fe5867d6cd8b62d0224767a686bdcbc3d74ec4306df67a3);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'h9b97e338c788e37b0d7e3b7a069536a0dd0a39e85edad50323b2f079784e8f40);
      #10 {wire4, wire3, wire2, wire1, wire0} = (254'h393651e923ec523171ee792a6e959373ac558f255e47d87604f094fbfc18aea3);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hba48146c3f2fb6970b0e40c94acb41e7a60607d01d60e2a5e760b930d8cef22b);
      #10 {wire4, wire3, wire2, wire1, wire0} = (254'h3c79e90665683e1c184ef1aab98fbcd83028b1ad0af02e6b4d3415f3bf970063);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h5d0d0b4fc4ee8d1ebe01245deb373ca4ed8931366c139e977dade2669411d602);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hdefae5b342be4a96e743170f12df92aad0dc3a35169abb0a02bbbbfdeb46a96a);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h6139531ae6f5b2b901e07956fcfe6fb67ba6e4717b4b0b88a169d0a04843b423);
      #10 {wire4, wire3, wire2, wire1, wire0} = (254'h35e3f3f61470cc2048c2d0dd04786cf526d7ac04296388e3a67b56310c667894);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hb0b567bb1dcd28b90a35cd555727e89bd750cab5d724e06c109285560d6af551);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h7f6a257193afaf4e4e28089e10b971759d6c9c9af386e3b415538a35dc23abf3);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hbdd018219b329be5a0ab3a9d6338c086cbf0a3a82fdf509f99ce4e45a64f72d8);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h46e62d879c0c50bc8169a0466c586d13573d03fcd2755d775d9379ac3e407d9c);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hd53c193b5d77bfdb03b668f70aca431572e9917350f99bc5c1c07b9df8fe442b);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h70123391e9ab5dbb1eab53fa53952bae063beaf15c680afaa73111937aa182dc);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h69c11f1fbbc45f4cfa66b70ca06fea4073cc928f55d7f4c7cffa2f715e2da25e);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h667d23a70d42c117e1f678316efef60472bf9dedf7c7cf26c787d11b3a685600);
      #10 {wire4, wire3, wire2, wire1, wire0} = (254'h34e347afef932255579ebba916db34a05552a28e17a67165229d0ba663bd2399);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
