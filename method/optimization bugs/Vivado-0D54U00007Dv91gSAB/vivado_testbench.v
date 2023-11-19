`include "/home/zou/.cabal/data/cells_cmos.v"
`include "/home/zou/.cabal/data/cells_cyclone_v.v"
`include "/home/zou/.cabal/data/cells_verific.v"
`include "/home/zou/.cabal/data/cells_xilinx_7.v"
`include "/home/zou/.cabal/data/cells_yosys.v"
`include "syn_vivado.v"

module testbench  ;
  wire [(32'h1e7):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(5'h10):(1'h0)] wire0;
  reg [(5'h11):(1'h0)] wire1;
  reg signed [(4'h8):(1'h0)] wire2;
  reg [(5'h14):(1'h0)] wire3;
  top #() top1 (.y(y), .clk(clk), .wire0(wire0), .wire1(wire1), .wire2(wire2), .wire3(wire3));
  initial
    begin
      clk = (1'h0);
      {wire0, wire1, wire2, wire3} = (1'h0);
      #10 {wire0, wire1, wire2, wire3} = (256'h93a205535e048a7b341a1aa74183e600c253862c9dd097a872b97292bd016d65);
      #10 {wire0, wire1, wire2, wire3} = (254'h29a39473b2f3dea6fbd3539a366a14d2b51aab345ecbdc27d64bf9c85510cb9f);
      #10 {wire0, wire1, wire2, wire3} = (256'ha802ff184c5affa30bd7319be99d5f2257a20a2fc704c30e0d692adae1498891);
      #10 {wire0, wire1, wire2, wire3} = (256'h90a9b4487e7ea636301703c6b9bb66d0607a769f7e25039de1f53d0bdd883f2a);
      #10 {wire0, wire1, wire2, wire3} = (256'hd9d8149b5ce3fef4dbc89d685087adbe4288d59633ebc9b4cf88fceebb7f4b1d);
      #10 {wire0, wire1, wire2, wire3} = (250'h2855206ca5102a0c690d0745ac0e74409bbe97af9c2c148f503046dd0fa4210);
      #10 {wire0, wire1, wire2, wire3} = (256'haaab8ade7d0db0ac29235aef3cdfbfcf5deddaeeda21a97a4c66b78bec8a9905);
      #10 {wire0, wire1, wire2, wire3} = (256'hb0f75083580ee294215d199dd881b7f06ccfd044351dbc3606295fe8984a7c66);
      #10 {wire0, wire1, wire2, wire3} = (256'h9aa325c240aa150e39e719a3d456cd46e585a8ee128e1cb9c71c435ab209f193);
      #10 {wire0, wire1, wire2, wire3} = (255'h5f67241e9e45135b72c3aea322b33a56c1eb622aa2ffd84a5c08159d4534174e);
      #10 {wire0, wire1, wire2, wire3} = (254'h3b3ea81a7d6902ad7bead5b5ab7c499bc93944901ba0302d9479fc0a115212d9);
      #10 {wire0, wire1, wire2, wire3} = (256'h8681ae80abb41904a5905d43f57430e0d2bd60c59f8c786384c9fa75d2f0f5b4);
      #10 {wire0, wire1, wire2, wire3} = (253'h1cdde27e2432df0b6ee1c95dedadea2cb4fb572ce939244255eae9c736f0870d);
      #10 {wire0, wire1, wire2, wire3} = (256'head1536af1d4aaead00e484cdbfcc91fcad38145aed168e9ac8a4770c62e62ae);
      #10 {wire0, wire1, wire2, wire3} = (256'h8b2248766697003bec3b3e2ed2ed220ed962cd74075129a0b930107e205b2171);
      #10 {wire0, wire1, wire2, wire3} = (255'h4fa862e332d5318e061286129369cfe0d91253e23a86cc18633d22da16c02d87);
      #10 {wire0, wire1, wire2, wire3} = (255'h78faf74025c3c14b918b9b759202d19d0c2d278afc3bde07dab63fd3806c8353);
      #10 {wire0, wire1, wire2, wire3} = (253'h1abd4a7bb4dd5c2b9d7ecc82e2912c328b970b7d53345be90231679219eae9b2);
      #10 {wire0, wire1, wire2, wire3} = (255'h4c32c11e92383269f9cfbf20d4937521f9f1809a1aa48071f9bcf1598a3994e0);
      #10 {wire0, wire1, wire2, wire3} = (256'hd031bc3fda6a2929b9085eb75f3b93a96050e3c46cf1d0d684a25569cca4e1d8);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
