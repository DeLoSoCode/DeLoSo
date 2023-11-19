`include "./data/cells_cmos.v"
`include "./data/cells_cyclone_v.v"
`include "./data/cells_verific.v"
`include "./data/cells_xilinx_7.v"
`include "./data/cells_yosys.v"
`include "syn_vivado.v"

module testbench  ;
  wire [(32'h2e0):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg [(3'h7):(1'h0)] wire4;
  reg signed [(3'h4):(1'h0)] wire3;
  reg [(2'h2):(1'h0)] wire2;
  reg signed [(4'h8):(1'h0)] wire1;
  reg [(4'hb):(1'h0)] wire0;
  top top1 (.y(y), .clk(clk), .wire4(wire4), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  initial
    begin
      clk = (1'h0);
      {wire4, wire3, wire2, wire1, wire0} = (1'h0);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'ha0420ebf9e3b7179d66fcf3eb8b602e1d8dab1c027bdad56c9a15d81b77b8231);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h525bbb316205fe6990630b198688e9ead051c1a0e62b61b48cc5b90190549e0c);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h7f062c52e2df7e81cd9db7d4cfaae2d1cba3242d3cd9c307ed9c1c03bcea70e6);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'h8a67c0d713f33d45a0bef66d04d24ee11d9ed7615c83f946d8edd69bbdb46977);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'h9ff306929b03b81e8837dde8d00093b9968f1893aab22bc884aec009dfd45ed4);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'h939689824ddd3bb58f54d7d3fc8c3a27ffb743afa7c3c25d67c206816cf19a82);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hb3c5b3de5eedf2bbd4482d0ed18817d99da6f6986db121c0c5b05fb0f2ec86e3);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hb9868bb543aa1520def907d598c3b4d07a68dad933205617aab16ff34574feee);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'he58b9b814de1e2620963164552b27e223fca68c90433473e380f2694cb43cd3a);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hdb61b5e96bcd3d3d382295e6c3d73a43b94b31d928959e17464918a0d1763a01);
      #10 {wire4, wire3, wire2, wire1, wire0} = (250'h35050ccf6f463ba8f2052561b37d4c6b436721271601724c984b225b3e6cc16);
      #10 {wire4, wire3, wire2, wire1, wire0} = (253'h16a83ba0770d4bb1e6bd11d2344cd6a1788616dd639fd82fa54799fdc63a5102);
      #10 {wire4, wire3, wire2, wire1, wire0} = (253'h182a0139ebb84b1969c25225e61303128f14d095324ca8e104a6f583fd79bf9d);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'he6077f03a4ecfa6e3907e2c42db19ae8706a387075489834f007a45a0b7d3e04);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'he6a920536c8bf602165718dc2ec5c1b07c877ac3331069f6272cb48fd5e32fae);
      #10 {wire4, wire3, wire2, wire1, wire0} = (252'he989220df4e3233abf8dea1ca5310fb91f6d0a037ad8878c26b290b827fa57c);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hdd82c6bb88a2955540a9fb92b00a71faa9bce508b6d9399b812a8ab0bcc94fd0);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h6f150e498c8c10e20dc9cebfc8d0af643777ce1ed353aeeca81e389ba846f9c2);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h495e670d824b36f07dace06fae022369fb50dffa06e793a2a916f5ea624d35b8);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h646b5a641e1ff4873a6d96b1f85ef76ae4226e12d741aa33ad01aa3147c826b3);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h70e3cc1c20b580bc8d45d38dc5d5fca48b8ced31e00adc51b30039a77a93e68a);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%h", y);
endmodule
