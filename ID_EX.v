module ID_EX(epcsel_d,memwrite_d,regwrite_d,memtoreg_d,aluop_d,alusrc_d,regdst_d,ir_d,pc4_d,rd1_d,rd2_d,ext_d,regwrite_e,memtoreg_e,aluop_e,alusrc_e,regdst_e,ir_e,pc4_e,rd1_e,rd2_e,ext_e,clr,clk,memwrite_e,HWInt,epcsel_e);
input[4:0] aluop_d;
input[1:0] regdst_d,memtoreg_d,epcsel_d;
input regwrite_d,alusrc_d,clr,clk,memwrite_d,HWInt;
input[31:0] ir_d,pc4_d,rd1_d,rd2_d,ext_d;
output[4:0] aluop_e;
output[1:0] regdst_e,memtoreg_e,epcsel_e;
output regwrite_e,alusrc_e,memwrite_e;
output[31:0] ir_e,pc4_e,rd1_e,rd2_e,ext_e;
reg[4:0] aluop_e;
reg[1:0] regdst_e,memtoreg_e,epcsel_e;
reg regwrite_e,alusrc_e,memwrite_e;
reg[31:0] ir_e,pc4_e,rd1_e,rd2_e,ext_e;

always@(posedge clk)
begin
    case(clr||HWInt)
	 1'b0:
	 begin
	 aluop_e<=aluop_d;
    regdst_e<=regdst_d;
	 memtoreg_e<=memtoreg_d;
    regwrite_e<=regwrite_d;
    alusrc_e<=alusrc_d;
    ir_e<=ir_d;
    pc4_e<=pc4_d;
    rd1_e<=rd1_d;
    rd2_e<=rd2_d;
    ext_e<=ext_d;
	 memwrite_e<=memwrite_d;
	 epcsel_e<=epcsel_d;
	 end
	 1'b1:
	 begin
	 aluop_e<=0;
    regdst_e<=0;
	 memtoreg_e<=0;
    regwrite_e<=0;
    alusrc_e<=0;
    ir_e<=0;
    pc4_e<=0;
    rd1_e<=0;
    rd2_e<=0;
    ext_e<=0;
	 memwrite_e<=0;
	 epcsel_e<=0;
	 end
	 endcase
end
endmodule
