
module IF_ID(ir_f,pc4_f,ir_d,pc4_d,en,clk,clr,HWInt);
input[31:0] ir_f,pc4_f;
output[31:0] ir_d,pc4_d;
input en,clk,clr,HWInt;
reg[31:0] rf1,rf2;
always@(posedge clk)
  begin

  case(clr||HWInt)
   1'b0:
     begin
	    if(en==1)
	     begin
	     rf1<=ir_f;
	     rf2<=pc4_f;
	     end
	    else
        begin	  
	     rf1<=ir_d;
	     rf2<=pc4_d;
	    end
     end
  1'b1:
  begin
     rf1<=0;
	  rf2<=0;
  end
  endcase
  end
assign pc4_d=rf2;
assign ir_d=rf1;
endmodule
