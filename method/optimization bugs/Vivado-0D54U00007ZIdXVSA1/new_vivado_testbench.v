`include "./data/cells_cmos.v"
`include "./data/cells_cyclone_v.v"
`include "./data/cells_verific.v"
`include "./data/cells_xilinx_7.v"
`include "./data/cells_yosys.v"
`include "new_syn_vivado.v"

module testbench  ;
  wire [(32'h7e):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg [(5'h14):(1'h0)] wire0;
  reg signed [(4'hf):(1'h0)] wire1;
  reg signed [(4'hc):(1'h0)] wire2;
  reg signed [(4'ha):(1'h0)] wire3;
  reg signed [(5'h12):(1'h0)] wire4;
  top top1 (.y(y), .clk(clk), .wire0(wire0), .wire1(wire1), .wire2(wire2), .wire3(wire3), .wire4(wire4));
  initial
    begin
      clk = (1'h0);
      {wire0, wire1, wire2, wire3, wire4} = (1'h0);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'ha2bef45d873362ebea5142d891d9a3d0e9089b7a858c21bcf77cffc7cd96c708);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h4017f7d46c6e0e374656f0d367a4ca456a694cf58406ff1f22a444ea2a262391);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h7e7ba67db9b19429bc6fae8dd2c88a62fb53e8894a0914a6fdf8f09bace3b1a7);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h5b387c3a936f82892fceb3635f8b14000f82e416f601d3b0b5150af5c33b53e6);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hc3a5af2a559ebdd3a8a85919f8b587683773da77b1dbcbcffef30ce417008e7c);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h97cc7cb04e35e99bd81be34a20462c7705cdb7430b6790aaf0e5ee8ddaf136a2);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h988cf3ea6a79209b7cc68a7cdcd5fa0d94ebc4c479cdf2debf75e6c0e0722a5d);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'he01acc5bf447d563f2275d935e09979f3b232dc049c31fe57d510052c17c12d3);
      #10 {wire0, wire1, wire2, wire3, wire4} = (249'h12011c3dab875bc01de2cb634c47ecd8e8a6bbfe5f67ece701e746afbca8408);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h2585db4cedb20c3ad6ccc4b57751155150bdc5799a479e8bb6f61d2f91416b8c);
      #10 {wire0, wire1, wire2, wire3, wire4} = (253'h19bb942da7fc22113596735b4a09de62cefc2d32c78825e992f1058c79c4e129);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h9d662d04d5002370298a4df505e12156866bcf2e080d8da39c811765c9a60871);
      #10 {wire0, wire1, wire2, wire3, wire4} = (253'h14fa0f4c7712d7409b58cd858401d513538d2c5ef42eba6fbf119dd4802b5de8);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h4fd64275ed788974df4355f324c9470c21c237179b079e62e87635e0c307d663);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hb1a76d31b7a813dcea01da4448b6fa0e2576868def12e3987b153b9e9ec72b01);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hc8f49b0a412ec90b186c5af2d1b9432967eaf2684c8f9d7626dcca98fb9c6fe2);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h5fa788854e72ac66dec5a1b28b714108a811d5c150a6eeeeddae0c622e5f1cfb);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h363b2b2fec77b75a635176d5125eb5bc1d4def9e489b105eec1e8c94dd800c67);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h6a07ca02c0fb3b12544d34206beaf1cf200c3c97144d8b1a625b8bda02f3c621);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hc194f4f1ca802b43c2003b90f87cf08e69eaf0de1717bc34aa0d39d50c33b37d);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h21b9aee965294c251e65e4bdc9554b705072e4551d5fc3d5ffba141c24995598);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%h", y);
endmodule
