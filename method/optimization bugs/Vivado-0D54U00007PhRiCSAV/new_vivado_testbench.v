`include "./data/cells_cmos.v"
`include "./data/cells_cyclone_v.v"
`include "./data/cells_verific.v"
`include "./data/cells_xilinx_7.v"
`include "./data/cells_yosys.v"
`include "new_syn_vivado.v"

module testbench  ;
  wire [(32'h187):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(3'h6):(1'h0)] wire3;
  reg signed [(4'ha):(1'h0)] wire2;
  reg [(4'hf):(1'h0)] wire1;
  reg signed [(5'h14):(1'h0)] wire0;
  top #() top1 (.y(y), .clk(clk), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  initial
    begin
      clk = (1'h0);
      {wire3, wire2, wire1, wire0} = (1'h0);
      #10 {wire3, wire2, wire1, wire0} = (256'heec1e0891800894a848b67a8cc1d09b19748a4890286c6e39ee7ff9612e1e2af);
      #10 {wire3, wire2, wire1, wire0} = (256'hf82d5c626fd3d73423767a63aefcca5b39e8a2b10ee4bae2d28b15955b6cec2f);
      #10 {wire3, wire2, wire1, wire0} = (256'hcd0e023d20e1bcc29d1cfdeb5235691e23269cc7b5019747206ee1aa625b8454);
      #10 {wire3, wire2, wire1, wire0} = (256'h8ee00e1f50873ff66ae355a9a666092bbd147fdfd6c8acb944697cbb5e6bf0d1);
      #10 {wire3, wire2, wire1, wire0} = (256'h8c76e5b1e73a90096a66652bfae2ba2279e8f232094844c217ef61df0cb1646d);
      #10 {wire3, wire2, wire1, wire0} = (252'ha58b6679a61cde3ef9be3052048a2092e2942408ab04059fb947f5b817532cb);
      #10 {wire3, wire2, wire1, wire0} = (256'he56ee8badb4f558851776282db03abee2545c79741ccfde71ca96798c28ae611);
      #10 {wire3, wire2, wire1, wire0} = (255'h70466a3311b117aa9721ca1f47455f834df1bffd45254995bdfd645f258a1ae3);
      #10 {wire3, wire2, wire1, wire0} = (256'hff8b93171f14ac89f515b2c516f2fe9b67ca4afcd2c55fabc01fa8a55ff27c0a);
      #10 {wire3, wire2, wire1, wire0} = (256'ha22f3d5a1c6cd68c520e5c0364e0df32646bd2b17965946411ff53a2112a30d5);
      #10 {wire3, wire2, wire1, wire0} = (256'h81c72cbb237c864162efa0b4b9b0fcc712d6d3726b3508a26c4676ab92ba7c9d);
      #10 {wire3, wire2, wire1, wire0} = (255'h6617afc8a9c575f243fd31f3f3f21f302b624c5c78cb4630abc9408faf56afc8);
      #10 {wire3, wire2, wire1, wire0} = (256'h92b3538ba70c32a7c3aa82e34aa38411d272b553bfc1547fb5429ce04a5996b7);
      #10 {wire3, wire2, wire1, wire0} = (256'hfd3b512aebc3fa94d8b3502e2a6229927ee36ebc2e70615809a966b5056a838e);
      #10 {wire3, wire2, wire1, wire0} = (256'hec5e3f6eac6fcc2b0a9960453290ecfbd966aceb88eb297cff1eac0af0c310e1);
      #10 {wire3, wire2, wire1, wire0} = (256'hbf0118507c18986f4e231ba6bf8cf33807d18e1266767eba34451ace50b3cc84);
      #10 {wire3, wire2, wire1, wire0} = (256'hca808ef720fd71900da5d9aedb8f91032cd11201aa8df83cf69d2fb2686ccf31);
      #10 {wire3, wire2, wire1, wire0} = (255'h4140c0baee5732b38fd8dfb7fa4d9d4e0c31d4c82016b331227dc007811500a5);
      #10 {wire3, wire2, wire1, wire0} = (256'heea0d528b28735fd9f31d8b566090a9d0299aa5864ca8d10e0709b4a2c3e1921);
      #10 {wire3, wire2, wire1, wire0} = (253'h13201e0c7ab7fe85409481fd4e6d355219593c59eb3aa3f261d599282869b888);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
