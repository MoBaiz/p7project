module GPR(
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input WE,
    input [31:0] WD,
    output[31:0] RD1,
    output[31:0] RD2,
    input clk,input reset);
    reg[31:0] mem[0:31];
	 wire RD1_sel;
	 wire RD2_sel;
	 initial
	   begin
    mem[0]=0;mem[1]=0;mem[2]=0;mem[3]=0;mem[4]=0;mem[5]=0;mem[6]=0;mem[7]=0;
    mem[8]=0;mem[9]=0;mem[10]=0;mem[11]=0;mem[12]=0;mem[13]=0;mem[14]=0;mem[15]=0;
    mem[16]=0;mem[17]=0;mem[18]=0;mem[19]=0;mem[20]=0;mem[21]=0;mem[22]=0;mem[23]=0;
    mem[24]=0;mem[25]=0;mem[26]=0;mem[27]=0;mem[28]=0;mem[29]=0;mem[30]=0;mem[31]=0;
      end 
	 assign RD1_sel=(WE&&A1==A3&&A1!=0)?1:0;
	 assign RD2_sel=(WE&&A2==A3&&A2!=0)?1:0;

	 mux_2_32bit rd1(.a(mem[A1]),.b(WD),.sel(RD1),.op(RD1_sel));
	 mux_2_32bit rd2(.a(mem[A2]),.b(WD),.sel(RD2),.op(RD2_sel));		

	  always @ (posedge clk)
    begin	
     if(WE==1&&A3!=0)
	      begin
			mem[A3]<=WD;
			end
	 end
endmodule

