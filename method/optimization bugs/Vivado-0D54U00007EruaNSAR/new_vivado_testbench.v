`include "/home/zou/cells_cmos.v"
`include "/home/zou/cells_cyclone_v.v"
`include "/home/zou/cells_verific.v"
`include "/home/zou/cells_xilinx_7.v"
`include "/home/zou/cells_yosys.v"
`include "new_syn_vivado.v"

module testbench  ;
  wire [(32'hc5):(32'h0)] y;
  reg [(1'h0):(1'h0)] clk;
  reg signed [(5'h15):(1'h0)] wire3;
  reg signed [(5'h14):(1'h0)] wire2;
  reg [(5'h13):(1'h0)] wire1;
  reg signed [(4'he):(1'h0)] wire0;
  top #() top1 (.y(y), .clk(clk), .wire3(wire3), .wire2(wire2), .wire1(wire1), .wire0(wire0));
  initial
    begin
      clk = (1'h0);
      {wire3, wire2, wire1, wire0} = (1'h0);
      #10 {wire3, wire2, wire1, wire0} = (256'h8ec8afd49dade8c79a9fd9dbb3ad6f8968b72b9908fc6d86b3a65f942ad23a8e);
      #10 {wire3, wire2, wire1, wire0} = (255'h53e466eb71a02611ef9eb5613b7063b6bbaf93481e4247c9efcbc834e6d3c54a);
      #10 {wire3, wire2, wire1, wire0} = (255'h51a9caa17c8aa624a571617b780d3e6e14ab448d7d2e6ce7acf2c33fa439072d);
      #10 {wire3, wire2, wire1, wire0} = (256'he5068c6d073b81d787048fdd9ac02b6a162cd5c674bb22ef0557b6f13ae6724e);
      #10 {wire3, wire2, wire1, wire0} = (256'haa0da26391425606df432464a643ca7a4c4513cbf05bcbaddbffd6fbb0124032);
      #10 {wire3, wire2, wire1, wire0} = (256'hc9ce86362816b0d00c621cd6dfe8ba8785bfce536f129cb63bfa7d128860a74e);
      #10 {wire3, wire2, wire1, wire0} = (255'h7eed76a7549c7ec616e152253fec552e5bc3aec5b5e5b746c90f254843369d22);
      #10 {wire3, wire2, wire1, wire0} = (255'h69623c6ba624e7bad6d793b7609dc574a477524e8a89df6dc62ba27cdc0aa20c);
      #10 {wire3, wire2, wire1, wire0} = (254'h3bfce5dd7c6760ff1d35da38e41da7ae009f724efda12d9cb61de13bd5ca9a9b);
      #10 {wire3, wire2, wire1, wire0} = (256'h89a4c495d861fa683131a3e7a56682d397a2e8693405e47fb049a9c820a0d09a);
      #10 {wire3, wire2, wire1, wire0} = (256'hc58ef0835add1d5a477dcbe9d2d31683a998bb6ad7a11535b4b21c98bb259b11);
      #10 {wire3, wire2, wire1, wire0} = (256'hcd18c273a84a837e1d26261e8885dca703052db8024aea90b2d7788311d00ba1);
      #10 {wire3, wire2, wire1, wire0} = (256'ha9ac9fb12335dc32d1502f5a1f76d263de17fb3eb33958d7227a965877da10d1);
      #10 {wire3, wire2, wire1, wire0} = (256'h88183152060b6cc9f5057cde47a480d083674cbe0e7f96a478bb262b5152b553);
      #10 {wire3, wire2, wire1, wire0} = (256'hf095969ded4ef7882e16f28a088fe4425810308bf6364af246209f681fc4ff00);
      #10 {wire3, wire2, wire1, wire0} = (253'h1d5e2e13e04b2eb3539a0c45bd5f0e7924760bb7b5035a137ad8002bc8e08c5f);
      #10 {wire3, wire2, wire1, wire0} = (256'hf5b3aa429d08a5a12682aec740c7d9824cabac9520320fabaeb02d0a30992513);
      #10 {wire3, wire2, wire1, wire0} = (255'h7a0424099ccef72177fe80ed3f501fa28c2c241c836d22f9fed35f6477ac0493);
      #10 {wire3, wire2, wire1, wire0} = (255'h516ceed63612204fe477017d65edf37aa9a30ca026ea45cdd8e3fbc3c59ae967);
      #10 {wire3, wire2, wire1, wire0} = (256'h84faddcaae5a780aca69b9b5889b0a12994da6db266d917c5731b8cd8691ea52);
      #10 $finish;
    end
  always
    #5 clk = (~clk);
  always
    @(posedge clk) $strobe ("%b", y);
endmodule
