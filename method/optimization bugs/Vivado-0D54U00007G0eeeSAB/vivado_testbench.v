`include "/home/data/cells_cmos.v"
`include "/home/data/cells_cyclone_v.v"
`include "/home/data/cells_verific.v"
`include "/home/data/cells_xilinx_7.v"
`include "/home/data/cells_yosys.v"
`include "syn_vivado.v"

module testbench  ;
  wire [(32'h237):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(2'h2):(1'h0)] wire0;
  reg signed [(5'h11):(1'h0)] wire1;
  reg [(5'h13):(1'h0)] wire2;
  reg [(5'h15):(1'h0)] wire3;
  reg signed [(3'h5):(1'h0)] wire4;
  top #() top1 (.y(y), .clk(clk), .wire0(wire0), .wire1(wire1), .wire2(wire2), .wire3(wire3), .wire4(wire4));
  initial
    begin
      clk = (1'h0);
      {wire0, wire1, wire2, wire3, wire4} = (1'h0);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h8bc269a43ce5e4781f248083ed1a932e03cd9b901c11d6b7fc1d895b14f61501);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'ha718d0901fa444b2d2198b91ae900c9928b3871af0725d5c2a8c3994d7ce219c);
      #10 {wire0, wire1, wire2, wire3, wire4} = (253'h10d8e15ffd29b5f8e3f7593326c6b5d70dcd641c49c14e915e1057e63b58fa81);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'he31952a6f26ead4dd326048402e6f78f7326e0fe483d6f6b7af8e9a618129fa0);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'heb9c2d342747270f43d1e38bccfc5135f1b720bb7e35439ed1c84cdd09c610cf);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hd6e8d9c170addfc513d4fc3b7e58de7be1cc691c0b6d6c377c1c20e72339c290);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h3e8db0fc706416092fc61ed301d8ef28e7ba221bcd347680f63f20b6cd49c2c6);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h98c2932d4388151fcd6aa361b0b9d34c44ba356dc437a4c5c04e7c525471f3de);
      #10 {wire0, wire1, wire2, wire3, wire4} = (255'h44a8dcbad985252c8e401e2157c7e53b4f5dc40ba9e812183351351b1a55bde6);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h8328dd343553ef7465cf0df061ca7d6373cefcb83b75f8c85175fea5b39ce50a);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hdb3f2abe0aee2bbaa13a5be6eda2ce4a872b8290dc7a5d8c55e5317caea69e30);
      #10 {wire0, wire1, wire2, wire3, wire4} = (252'h8e67a6fd9e21f892d5b776e6d0b51908dd78c513b5564107022adbc0fcce924);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'h89c956e2a3039e7a2eb0cfba60d8eac21ed1fb0140d10cf8492170fb882b30b0);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hb63d7447a4a87c19eb589e243330cfdb42d130e5c0517d511fc97ebf1a69cb07);
      #10 {wire0, wire1, wire2, wire3, wire4} = (252'ha94fb4a7a761e1967db1626a66780ef979b99b0daf01626e4d7cf9cadde501f);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'ha9cd55db343d4981bc18679ea226d5ab02323023d72c18f00b5c60c6950186bd);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h35a74053c2034b777cc78b309d39594839d6d98a68390cad5d3bfad225c0bc9e);
      #10 {wire0, wire1, wire2, wire3, wire4} = (254'h2e0aab21d944a01fc5b75268e0288e2259dcad38455c70dcf0be432cba408ddb);
      #10 {wire0, wire1, wire2, wire3, wire4} = (253'h1ea702c4ab1df621b82ca60265eac671c83652acdc8a68f426326b59ca76178d);
      #10 {wire0, wire1, wire2, wire3, wire4} = (256'hf572e81b06a0bf0dc7b11c7d3b9f9fcc33bf484d767dd433844d220bb5cb9c7e);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
