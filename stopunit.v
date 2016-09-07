module stoppc(intreq,epc,eret,npc,pcselop);
input[31:0] epc;
input eret,intreq;
output[31:0] npc;
output pcselop;
assign npc=(intreq)?'h4180:
           (eret)?epc:0;
assign pcselop=(eret||intreq)?1:0;		   
endmodule
