module pcsignal(br,branch,pcsel);
input br;
input[3:0] branch;
output [1:0] pcsel;
assign pcsel=(br==1)?2:
       (branch==4'b0111||branch==4'b1000)?2:  //j,jal
		 (branch==4'b1001||branch==4'b1010)?1:0;  //jalr,jr

endmodule
