
module MEM_WB(a3sel_m,regwrite_m,memtoreg_m,ir_m,pc4_m,aluout_m,dm_m,regwrite_w,memtoreg_w,ir_w,pc4_w,aluout_w,clk,a3sel_w,dm_w,clr);
input[31:0] ir_m,pc4_m,aluout_m,dm_m;
input[1:0] memtoreg_m;
input regwrite_m,clk,clr;
output[31:0] ir_w,pc4_w,aluout_w,dm_w;
output[1:0] memtoreg_w;
output regwrite_w;
reg[31:0] ir_w,pc4_w,aluout_w,dm_w;
reg[1:0] memtoreg_w;
reg regwrite_w;
input[4:0] a3sel_m;
output[4:0] a3sel_w;
reg[4:0]a3sel_w;
always@(posedge clk)
    case(clr)
	 1'b0:
	 begin
      ir_w<=ir_m;
      pc4_w<=pc4_m;
      aluout_w<=aluout_m;
      memtoreg_w<=memtoreg_m;
      regwrite_w<=regwrite_m;
      a3sel_w<=a3sel_m;
      dm_w<=dm_m;
    end
	 1'b1:
	 begin
      ir_w<=0;
      pc4_w<=0;
      aluout_w<=0;
      memtoreg_w<=0;
      regwrite_w<=0;
      a3sel_w<=0;
      dm_w<=0;
    end
	 endcase
endmodule
