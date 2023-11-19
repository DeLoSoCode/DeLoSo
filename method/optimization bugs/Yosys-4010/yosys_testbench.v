`include "./data/cells_cmos.v"
`include "./data/cells_cyclone_v.v"
`include "./data/cells_verific.v"
`include "./data/cells_xilinx_7.v"
`include "./data/cells_yosys.v"
`include "syn_yosys.v"

module testbench  ;
  wire [(32'h451):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(5'h12):(1'h0)] wire3;
  reg signed [(3'h6):(1'h0)] wire2;
  reg signed [(3'h6):(1'h0)] wire1;
  reg signed [(4'h8):(1'h0)] wire0;
  top top1 (.y(y), .clk(clk), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  initial
    begin
      clk = (1'h0);
      {wire3, wire2, wire1, wire0} = (1'h0);
      #10 {wire3, wire2, wire1, wire0} = (256'h8b5fd66e18d3132dd4e41135d5e1d44f383af00670ddd0ea3ce48bfc90d7a46c);
      #10 {wire3, wire2, wire1, wire0} = (253'h1735811a345707e533aad830018f1677503e0ff47535f2edbb16d32e69d541ad);
      #10 {wire3, wire2, wire1, wire0} = (256'hbfa70927f6b86dc03e3a84369f4db26bb9f2f1c30980cb89355bf5b7c60bb6f0);
      #10 {wire3, wire2, wire1, wire0} = (256'h9e02273854335027a55f672a9db4abedff76dcafce29cef28443b54c81e82311);
      #10 {wire3, wire2, wire1, wire0} = (256'hab4fbaaf7ae57034b5ae90ffbebefe50b14d30a9bc3c6fe3be7d870d44948f03);
      #10 {wire3, wire2, wire1, wire0} = (256'ha6eb6bc955e9f3952d36389005ae9a772bd8f2cc4757168ac2ecb7b2b9378324);
      #10 {wire3, wire2, wire1, wire0} = (256'hfa9455fb4bae5d8f7e19fc40098d5dfb9f6ebf973ba8cae1b5f9b0cad8538308);
      #10 {wire3, wire2, wire1, wire0} = (255'h6f5baa232aaa52e15fbf4e69688ac3e2cd96fb517e69c37b347ae53509e0d65f);
      #10 {wire3, wire2, wire1, wire0} = (255'h611b766424d179c79f6ea575a7b763dd2ec53fac8dd8e31b975f391918fb0577);
      #10 {wire3, wire2, wire1, wire0} = (254'h36c92909bb387ce495294d523172331883616fe67b7436a3fb7da50de93d756d);
      #10 {wire3, wire2, wire1, wire0} = (256'h93cacc4466faae7d2a153e8a9acaa168ca393e8d3833d2dfa44d19d9794fc5d2);
      #10 {wire3, wire2, wire1, wire0} = (255'h732c43b44f03687bf63760ef1e7c18d411a8e25379a5957f288776df8c20d65c);
      #10 {wire3, wire2, wire1, wire0} = (251'h77952eb1aae2e706914a67c96b566dab41613dbca683673b2223287417ccc8c);
      #10 {wire3, wire2, wire1, wire0} = (254'h307bb7fbd52f26cddded21c7e5295c15a0c1b97f239e2cd9c35e71b9e8ccbfa9);
      #10 {wire3, wire2, wire1, wire0} = (256'hc96d22e0d79cb920d396c149728c25fbd42d0c07e819181d279cc0a98e49a88c);
      #10 {wire3, wire2, wire1, wire0} = (256'hc3321929ebba7fe748f24ba18c4ed5461d956882391034567696aaf0a628ccda);
      #10 {wire3, wire2, wire1, wire0} = (255'h7c8111fa30e06dc3b087c0b7d31aa8c4881139637121df682469593c891251dc);
      #10 {wire3, wire2, wire1, wire0} = (251'h73ed7fbdfe3d56f3fde5ab53b3a99ad890a4d5550887cc8a73133c92156acae);
      #10 {wire3, wire2, wire1, wire0} = (252'hb12fb97aba390c20e7d9a66347e6efea42c44f06d0c5119525611cabf5e1ce0);
      #10 {wire3, wire2, wire1, wire0} = (256'hdc8d2f8fbf5b411eeef2f34b10d8cbe2f629b84f77d8e445e27b09d6afdb5ca2);
      #10 {wire3, wire2, wire1, wire0} = (255'h648576165bc62fd5ad7e7859521d0d0deae179268dabb293af29af0696b36008);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
