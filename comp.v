module CMP(a,b,op,br);
input signed[31:0] a,b;
input[3:0] op;
output  br;
assign br=(op==4'b0001&&a==b)?1:     //beq
          (op==4'b0010&&a>=0)?1:     //bgez
			 (op==4'b0011&&a>0)?1:    //bgtz
			 (op==4'b0100&&a<=0)?1:    //blez
			 (op==4'b0101&&a<0)?1:    //bltz
			 (op==4'b0110&&a!=b)?1:0;  //bne
endmodule
