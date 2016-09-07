module dm_8k(A,BE,WD,RD,We,Clk);
input[14:2] A;
input[3:0] BE;
input[31:0] WD;
input We,Clk;
output[31:0] RD;
reg[31:0] dm[0:2047];
integer i;
initial
 begin
     for(i=0;i<2047;i=i)
       begin
       dm[i]<=0;
       i=i+1;
       end
  end
always@(posedge Clk)
 begin
  if(We)
  case(BE)
  4'b1111:dm[A]<=WD;
  4'b1100:dm[A][31:16]<=WD[15:0];
  4'b0011:dm[A][15:0]<=WD[15:0];
  4'b0001:dm[A][7:0]<=WD[7:0]; 
  4'b0010:dm[A][15:8]<=WD[7:0]; 
  4'b0100:dm[A][23:16]<=WD[7:0]; 
  4'b1000:dm[A][31:24]<=WD[7:0]; 
  endcase
 end 
  assign RD=dm[A];

endmodule
