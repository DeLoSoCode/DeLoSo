`include "./data/cells_cmos.v"
`include "./data/cells_cyclone_v.v"
`include "./data/cells_verific.v"
`include "./data/cells_xilinx_7.v"
`include "./data/cells_yosys.v"
`include "syn_vivado.v"

module testbench  ;
  wire [(32'h175):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(5'h12):(1'h0)] wire4;
  reg [(4'ha):(1'h0)] wire3;
  reg signed [(5'h15):(1'h0)] wire2;
  reg [(2'h2):(1'h0)] wire1;
  reg [(3'h6):(1'h0)] wire0;
  top top1 (.y(y), .clk(clk), .wire4(wire4), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  initial
    begin
      clk = (1'h0);
      {wire4, wire3, wire2, wire1, wire0} = (1'h0);
      #10 {wire4, wire3, wire2, wire1, wire0} = (253'h149d6478887c07bf638ed7489609d21a1771e6cd98b2036b1e43b5345d829a5d);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h531a16d4397ca2ae95d713ce32fbd3b66a1a6ec83a705b0bc8666fc57e21fdf9);
      #10 {wire4, wire3, wire2, wire1, wire0} = (252'hbfb4108ab77dc6f48802921fa45c0d8de306c7febf4ec589eb2eab8eb5467f8);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h4ed9c70da82f4ef5073bdcef761126295cc3388e8afff3cb3eee4a87d0208571);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h4cc24e2beb5d6b3e7b50f8f1fdcaa5fbed471bb0440dd467147adb5531749e96);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h78d19fdd12c1833c5c9af64c157d37d169254130513e6917be08178d50fa53f9);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'he555f7a11d4a3215a8eb3cda0dcf725636423060ded9675ac655ed4da53f2a05);
      #10 {wire4, wire3, wire2, wire1, wire0} = (253'h186a363cc693117da042b061138c1b9fc07efab2a46f832d136ac792ed0b9745);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h4b0e880df1e7f0998b4e395a32050fcfd6a5b57615d0b7e7ee3b8e3adc61dc66);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hb7db0fa9e0efdd3433d99dfe4e9e1d411ebe4a4167de010cdcdb21d7a09c50b5);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'h9283b9b621ab0c99ab4f3d7741aff853d1b5456e7deab96c8c0e412c290d58f6);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h7ab2937138d1444939520ade83861b22d27a1a7e513698d24f8e4ae411984de0);
      #10 {wire4, wire3, wire2, wire1, wire0} = (254'h27bc3685738f6159b2b756ee6be24ba250b6dcac53906823e92b8badb92cf773);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'h8bc6b24e75846873e0b46801b288c3f40b52683aae7b8a8d6f82c444a34c6026);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hbfecb723c1e522664d15a89c8ba9311ca9bb23a0df1ee350a8cfd950927e5706);
      #10 {wire4, wire3, wire2, wire1, wire0} = (256'hde031004ad2316165f9c8062b7dba409643896b5fe849da245f7ebcccca68fe9);
      #10 {wire4, wire3, wire2, wire1, wire0} = (254'h30feda56f31bb21659efdd4551bd9c5cf03aa67b34858efdf86d3d329391e2d7);
      #10 {wire4, wire3, wire2, wire1, wire0} = (254'h388e1c72a93d8d483ba666b818daa34e691c8d7ebf44a657a2984ffa98d33596);
      #10 {wire4, wire3, wire2, wire1, wire0} = (252'h8a07e16848126221c29bb47d241cfd696c4ded23c77a67b0a83b640f3aa857b);
      #10 {wire4, wire3, wire2, wire1, wire0} = (254'h273014e141acd9df99958c1729446f3ff97faa916d84416e19fd8932b38355a1);
      #10 {wire4, wire3, wire2, wire1, wire0} = (255'h6d9693f92791444b556128b61290d9d08a5fd841e562044a067a7ef239496c2a);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
