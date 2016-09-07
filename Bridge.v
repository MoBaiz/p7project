module Bridge(PrAddr,PrRD,PrWD,WeCPU,DEV_Addr,DEV_WD,DEV0_RD,DEV1_RD,We_Dev0,We_Dev1,IRQ0,IRQ1,HWInt);
input[31:0] PrAddr,PrWD,DEV1_RD,DEV0_RD;
input WeCPU,IRQ0,IRQ1;
input[5:0] HWInt;
output[31:0] PrRD,DEV_Addr,DEV_WD;
output We_Dev1,We_Dev0;
wire hitdev0,hitdev1;
assign hitdev0=(PrAddr[15:4]=='h7f0);
assign hitdev1=(PrAddr[15:4]=='h7f1);
assign PrRD=(hitdev0)?DEV0_RD:
            (hitdev1)?DEV1_RD:0;
assign We_Dev0=WeCPU&&hitdev0;
assign We_Dev1=WeCPU&&hitdev1;
assign DEV_Addr=(hitdev0)?PrAddr-'h7f00:
                (hitdev1)?PrAddr-'h7f10:0;
assign HWInt=(IRQ0&&!IRQ1)?6'b000001:
             (IRQ1&&!IRQ0)?6'b000010:
             (IRQ0&&IRQ1)?6'b000011:0;		
assign DEV_WD=PrWD;				 
endmodule

