module p7(clk,rst);
input clk,rst;
wire[31:0] PrAddr,PrRD,PrWD,DEV_WD,DEV0_RD,DEV1_RD;
wire we,We_Dev0,We_Dev1,IRQ0,IRQ1;
wire [31:0] DEV_Addr;
wire [5:0] HWInt;
mips cpu(.clk(clk),.rst(rst),.aluout_m(PrAddr),.wdsel(PrWD),.CPUrd(PrRD),.memwrite_m(we),.HWInt(HWInt));
Bridge bridge(.PrAddr(PrAddr),.PrRD(PrRD),.PrWD(PrWD),.WeCPU(we),.DEV_Addr(DEV_Addr),.DEV_WD(DEV_WD),.DEV0_RD(DEV0_RD),.DEV1_RD(DEV1_RD),.We_Dev0(We_Dev0),.We_Dev1(We_Dev1),.IRQ0(IRQ0),.IRQ1(IRQ1),.HWInt(HWInt));
times time0(.CLK_I(clk),.RST_I(rst),.ADD_I(DEV_Addr[3:2]),.WE_I(We_Dev0),.DAT_I(DEV_WD),.DAT_O(DEV0_RD),.IRQ(IRQ0));
times time1(.CLK_I(clk),.RST_I(rst),.ADD_I(DEV_Addr[3:2]),.WE_I(We_Dev1),.DAT_I(DEV_WD),.DAT_O(DEV1_RD),.IRQ(IRQ1));
endmodule
