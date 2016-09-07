module IE_MEM(epcsel_e,a3sel_e,ir_e,pc4_e,aluout_e,rd2_e,regwrite_e,memtoreg_e,memwrite_e,ir_m,pc4_m,aluout_m,rd2_m,regwrite_m,memtoreg_m,memwrite_m,clk,a3sel_m,clr,epcsel_m);   //jalµÄÎ»ÖÃ
input[31:0] ir_e,pc4_e,aluout_e,rd2_e;
input[1:0]  memtoreg_e,epcsel_e;
input clr;
input regwrite_e,memwrite_e,clk;
output[31:0] ir_m,pc4_m,aluout_m,rd2_m;
output[1:0]  memtoreg_m,epcsel_m;
output regwrite_m,memwrite_m;
reg[31:0] ir_m,pc4_m,aluout_m,rd2_m;
reg[1:0]  memtoreg_m,epcsel_m;
reg regwrite_m,memwrite_m;
input[4:0] a3sel_e;
output[4:0] a3sel_m;
reg[4:0]a3sel_m;
always@(posedge clk)
begin
case(clr)
1'b0:
      begin
         ir_m<=ir_e;
         pc4_m<=pc4_e;
         aluout_m<=aluout_e;
         rd2_m<=rd2_e;
         memtoreg_m<=memtoreg_e;
         regwrite_m<=regwrite_e;
         memwrite_m<=memwrite_e;
         a3sel_m<=a3sel_e;
			epcsel_m<=epcsel_e;
       end
1'b1:
      begin
		   ir_m<=0;
         pc4_m<=0;
         aluout_m<=0;
         rd2_m<=0;
         memtoreg_m<=0;
         regwrite_m<=0;
         memwrite_m<=0;
         a3sel_m<=0;
			epcsel_m<=0;
		end
endcase
end
endmodule
