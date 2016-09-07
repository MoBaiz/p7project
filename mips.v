`define op 31:26
`define rs 25:21
`define rt 20:16
`define rd 15:11
`define funt 5:0

module mips(clk,rst,aluout_m,wdsel,CPUrd,memwrite_m,HWInt);
input clk,rst;
input[5:0] HWInt;
output[31:0] aluout_m,wdsel;
output memwrite_m;
input[31:0] CPUrd;
wire[31:0] pc,pc4,pc4_d,pc4_e,pc4_m,pc4_w,npc,jrrd1,jnpc,ir_f,ir_d,ir_e,ir_m,ir_w,m4,aluout,aluout_w,aluout_m,rd1,rd1_e,rd1in,rd2in,
rd2,rd2_e,rd2_m,alua,alub,bsel,din,compa,compb,ext_d,ext_e,result,dout,dout_w;
wire[4:0] a3sel,a3sel_e,a3sel_m,a3sel_w;
wire[3:0] branch;
wire[4:0] aluop,aluop_e;
wire[1:0] pcsel,bypasspc_d,bypassa_d,bypassb_d,bypassa_e,bypassb_e,regdst,regdst_m,regdst_e,memtoreg,memtoreg_e,memtoreg_m,memtoreg_w;
wire if_iden,if_idclr,pcen,bypassb_m,alusrc,alusrc_e,extop,regwrite,regwrite_e,regwrite_m,regwrite_w,memwrite,br;                                               
wire[31:0] stopnpc,pcnpc;
wire line2;
wire[3:0] be;
wire[31:0] wdsel,cp0out,aluout_sel,EPC,cp0in,cpfoard;
wire cp0we,gprwe,IntReq,cp0foard,line;
wire seladdr,exlclr,exlclr_d;
wire[1:0] epcsel,epcsel_e,epcsel_m;
stoppc STOPPC(.intreq(IntReq),.epc(EPC),.eret(exlclr_d),.npc(stopnpc),.pcselop(line2));
mux_2_32bit npcsel(.a(npc),.b(stopnpc),.sel(pcnpc),.op(line2));
pc PC(.npc(pcnpc),.pc(pc),.reset(rst),.clk(clk),.en(pcen),.HWInt(IntReq));
mux_3_32bit pcmux(.a(pc4),.b(jrrd1),.c(jnpc),.sel(npc),.op(pcsel));
pc4 pcadder(.pc(pc),.pc4(pc4));
im_4k im(.addr(pc[11:2]),.dout(ir_f));



IF_ID Dlevel(.ir_f(ir_f),.pc4_f(pc4),.ir_d(ir_d),.pc4_d(pc4_d),.en(if_iden),.clk(clk),.clr(if_idclr),.HWInt(IntReq));
control ctrl(.ir_d(ir_d),.funt(ir_d[`funt]),.opcode(ir_d[`op]),.regdst(regdst),.alusrc(alusrc),.memtoreg(memtoreg),.REGwrite(regwrite),
.memwrite(memwrite),.extop(extop),.aluop(aluop),.branch(branch));
mux_3_32bit jrfoward(.a(rd1),.b(aluout_m),.c(m4),.sel(jrrd1),.op(bypasspc_d));
GPR gpr(.A1(ir_d[`rs]),.A2(ir_d[`rt]),.A3(a3sel_w),.WE(regwrite_w),.WD(m4),.RD1(rd1),.RD2(rd2),.clk(clk),.reset(rst));
ext expender(.a(ir_d[15:0]),.b(ext_d),.op(extop));
npc npc_unit(.pc4(pc4_d),.ir(ir_d),.npc(jnpc),.branch(branch));
mux_3_32bit compAmux(.a(rd1),.b(aluout_m),.c(m4),.sel(compa),.op(bypassa_d));
mux_3_32bit compBmux(.a(rd2),.b(aluout_m),.c(m4),.sel(compb),.op(bypassb_d));
CMP compare(.a(compa),.b(compb),.op(branch),.br(br));
pcsignal pcselect(.br(br),.branch(branch),.pcsel(pcsel));
eret eret_d(.ir_w(ir_d),.exlclr(exlclr_d));


wire start,hilo,mdwrite,mdread,busy,s,mf;
wire[1:0] mdop;
wire[31:0] hi,lo,hilosel,ALUa,calout;
ID_EX Elevel(.epcsel_d(pcsel),.memwrite_d(memwrite),.regwrite_d(regwrite),.memtoreg_d(memtoreg),.aluop_d(aluop),.alusrc_d(alusrc),
.regdst_d(regdst),.ir_d(ir_d),.pc4_d(pc4_d),.rd1_d(compa),.rd2_d(compb),.ext_d(ext_d),
.regwrite_e(regwrite_e),.memtoreg_e(memtoreg_e),.aluop_e(aluop_e),.alusrc_e(alusrc_e),.regdst_e(regdst_e),
.ir_e(ir_e),.pc4_e(pc4_e),.rd1_e(rd1_e),.rd2_e(rd2_e),.ext_e(ext_e),.clr(id_exclr),.clk(clk),.memwrite_e(memwrite_e),.HWInt(IntReq),.epcsel_e(epcsel_e));
mux_3_32bit alu_amux(.a(rd1_e),.b(aluout_m),.c(m4),.sel(alua),.op(bypassa_e));
mux_3_32bit alu_bmux(.a(rd2_e),.b(aluout_m),.c(m4),.sel(bsel),.op(bypassb_e));
mux_2_32bit b_sel(.a(bsel),.b(ext_e),.sel(alub),.op(alusrc_e));
SllDecoder sllDecoder(.ir_e(ir_e),.op(s));
mux_2_32bit sselect(.a(alua),.b({{27{1'b0}},ir_e[10:6]}),.sel(ALUa),.op(s));
ALU alu(.ALUop(aluop_e),.a(ALUa),.b(alub),.result(result));
MDctrl mdctrl(.ir_e(ir_e),.hilo(hilo),.op(mdop),.start(start),.mdwe(mdwrite),.mdread(mdread),.mf(mf));
mult mult_div(.D1(alua),.D2(alub),.HiLo(hilo),.Op(mdop),.Start(start),.We(mdwrite),.Busy(busy),.Hi(hi),.Lo(lo),.Clk(clk),.Rst(rst));
mux_2_32bit hilosignal(.a(hi),.b(lo),.sel(hilosel),.op(mdread));
mux_2_32bit MdorAlu(.a(result),.b(hilosel),.sel(calout),.op(mf));
mux_3_5bit aluA3sel(.a(ir_e[`rt]),.b(ir_e[`rd]),.c(31),.sel(a3sel),.op(regdst_e));


wire[31:0] finepc;
wire dmwe;
IE_MEM Mlevel(.epcsel_e(epcsel_e),.a3sel_e(a3sel),.ir_e(ir_e),.pc4_e(pc4_e),.aluout_e(calout),.rd2_e(bsel),.regwrite_e(regwrite_e),
.memtoreg_e(memtoreg_e),.memwrite_e(memwrite_e),.ir_m(ir_m),.pc4_m(pc4_m),.aluout_m(aluout_m),.rd2_m(rd2_m),
.regwrite_m(regwrite_m),.memtoreg_m(memtoreg_m),.memwrite_m(memwrite_m),.clk(clk),.a3sel_m(a3sel_m),.clr(IntReq),.epcsel_m(epcsel_m)); 
BEext beexpender(.ir_m(ir_m),.A(aluout_m[1:0]),.BE(be));
mux_2_32bit dminsel(.a(rd2_m),.b(m4),.sel(wdsel),.op(bypassb_m));
DMwesel dmwesel(.aluout_m(aluout_m),.memwrite(memwrite_m),.dmwe(dmwe));
dm_8k DM(.A(aluout_m[14:2]),.BE(be),.WD(wdsel),.RD(dout),.We(dmwe),.Clk(clk));
cp0decode CP0decoder(.IR_M(ir_m),.CP0WE(cp0we),.GPRWE(gprwe));
mux_2_32bit Cp0foard(.a(rd2_m),.b(m4),.sel(cp0in),.op(cp0foard));
mux_2_32bit Epcsel(.a(pc4_m),.b(pc4_w),.sel(finepc),.op(epcsel_m==2));
cp0 CP0rf(.mf(ir_m[`rd]),.mt(ir_m[`rd]),.Din(cp0in),.PC(finepc),.HWInt(HWInt),.We(cp0we),.EXLClr(exlclr),.clk(clk),.rst(rst),.IntReq(IntReq),.EPC(EPC),.Dout(cp0out));
mux_2_32bit gprrdsel(.a(aluout_m),.b(cp0out),.sel(aluout_sel),.op(gprwe));
mux_2_1bit regwrite_sel(.a(regwrite_m),.b(gprwe),.sel(line),.op(gprwe));

wire[31:0] dout_wex;
wire[2:0] DmExop;
wire[31:0] dm_out;

MEM_WB Wlevel(.a3sel_m(a3sel_m),.regwrite_m(line),.memtoreg_m(memtoreg_m),.ir_m(ir_m),.pc4_m(pc4_m),.aluout_m(aluout_sel),.dm_m(dout),
.regwrite_w(regwrite_w),.memtoreg_w(memtoreg_w),.ir_w(ir_w),.pc4_w(pc4_w),.aluout_w(aluout_w),.clk(clk),.a3sel_w(a3sel_w),.dm_w(dout_w),.clr(IntReq));
Doutexop_Decoedr doutex_decoder(.ir_w(ir_w),.op(DmExop));
DataExt DataExpender(.A(aluout_w[1:0]),.Din(dout_w),.Op(DmExop),.DOut(dout_wex));
mux_3_32bit rfwDselmux(.a(aluout_w),.b(dout_wex),.c(pc4_w+4),.sel(dm_out),.op(memtoreg_w));
ADDRsel addrdecoder(.addr(aluout_w),.we(memtoreg_w),.op(seladdr));
mux_2_32bit lwsel(.a(dm_out),.b(CPUrd),.sel(m4),.op(seladdr));
eret eret_w(.ir_w(ir_w),.exlclr(exlclr));
hazard hazard_unit(.ir_f(ir_f),.ir_d(ir_d),.ir_e(ir_e),.ir_m(ir_m),.ir_w(ir_w),.bypasspc_d(bypasspc_d),.bypassa_d(bypassa_d),
.bypassb_d(bypassb_d),.bypassa_e(bypassa_e),.bypassb_e(bypassb_e),.bypassb_m(bypassb_m),.pcen(pcen),.if_iden(if_iden),
.if_idclr(if_idclr),.id_exclr(id_exclr),.branch(branch),.jr(jr),.clk(clk),.pcsel(pcsel),.busy(busy),.start(start),.cp0foard(cp0foard));

endmodule

