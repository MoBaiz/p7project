module npc(pc4,ir,npc,branch);
  input[31:0] pc4,ir;
  input[3:0] branch;
  output[31:0]npc;
  wire[31:0] pc;
  
   assign pc=pc4-4;
   assign npc=(branch==1||branch==2||branch==3||branch==4||branch==5||branch==6)? pc+4+({{16{ir[15]}},ir[15:0]}<<2):   //bÀà
	           (branch==7||branch==8)? {pc[31:28],ir[25:0],2'b00}:pc4;     //jÀà

  endmodule