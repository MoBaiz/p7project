`timescale 100ps/1ps
module task_npc;
  wire[1:0] branch;
  wire[31:2] pc;
  assign branch=2'b00;
  assign pc='h00003000;
 npc times(CLK_I,RST_I,ADD_I,WE_I,DAT_I,DAT_O,IRQ);
 endmodule