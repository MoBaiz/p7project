
module mult(D1,D2,HiLo,Op,Start,We,Busy,Hi,Lo,Clk,Rst);
input signed [31:0] D1,D2;
input HiLo,We,Clk,Rst,Start;
input[1:0] Op;
output[31:0] Hi,Lo;
output Busy;
reg Busy;
reg [31:0] Hi,Lo,rfhi,rflo;
reg[63:0] sum;
wire[32:0] unsigneda,unsignedb;
integer count; 
initial 
begin
Hi=0;
Lo=0;
end
assign unsigneda={1'b0,D1};
assign unsignedb={1'b0,D2};
always@(posedge Clk)
begin
 if(Start)
   case(Op)
     2'b00:
	   begin
	    count=5;
	    sum=unsigneda*unsignedb;
		 Busy=1;
		 rfhi=sum[63:32];
       rflo=sum[31:0];
	   end
	  2'b01:
	   begin
	    count=5;
	    sum=D1*D2;
		 Busy=1;
		 rfhi=sum[63:32];
       rflo=sum[31:0];
	   end
     2'b10: 
	   begin
	    count=10;
		 Busy=1;
	    rfhi=unsigneda % unsignedb;
		 rflo=unsigneda / unsignedb;
      end	  
     2'b11: 
	  begin
	    count=10;
		 Busy=1;
	    rfhi=D1 % D2;
		 rflo=D1 / D2;
     end
	endcase
 else if(count>1)
   begin
	Busy<=1;
	count<=count-1;
   end	
 else if(count==1)
  begin
  Busy<=0;
  count<=count-1;
  Hi<=rfhi;
  Lo<=rflo;
  end
 else if(We)
  begin
  case(HiLo)
  1'b0: Lo<=D1;
  1'b1: Hi<=D1;
  endcase
  end
 
  
end


endmodule
