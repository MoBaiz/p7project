   
module pc(npc,pc,reset,clk,en,HWInt);
  input[31:0] npc;
  input reset,HWInt;
  input clk,en;
  output[31:0] pc;
  reg[31:0] rf;
   always@(posedge clk or negedge en)
 begin
  if(en==0)
  rf<=rf;
  else if(en==1)
  rf<=npc;
  else if(reset)
  rf<='h00003000;
 end
 assign pc=rf;
 endmodule    