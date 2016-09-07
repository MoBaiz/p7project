module cp0(mf,mt,Din,PC,HWInt,We,EXLClr,clk,rst,IntReq,EPC,Dout);
input[4:0] mf,mt;
input[31:0] Din,PC;
input[5:0] HWInt;
input clk,rst,We,EXLClr;
output[31:0] Dout,EPC;
output IntReq;
reg[31:0]EPC,PRID;
reg[15:10] im,hwint_pend;
reg exl,ie;
reg[31:0] sr;
assign IntReq=(((HWInt&im)&ie&!exl)==1)?1:0;
always@(posedge clk)
  begin
  if(We&&mt==12)
   begin
	{im,exl,ie}<={Din[15:10],Din[1],Din[0]};
	sr=Din;
	end
  else if(IntReq)
   exl<=1;
  else if(EXLClr)
   exl<=0;                           //sr
  else if(We&&mt==13)
   hwint_pend<=Din[15:10];
  else if(IntReq)
   EPC<=PC;
  else if(We&&mt==14)
   EPC<=Din;
  else if(We&&mt==15)
   PRID<=Din;
  end
 always@(IntReq)
 begin
 if(IntReq)
   EPC<=PC;
 end 
  assign Dout=(mf==12)?sr:
              (mf==13)?{16'b0,hwint_pend,10'b0}:
			  (mf==14)?EPC:
			  (mf==15)?PRID:0;

endmodule
