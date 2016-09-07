module GPRforward(A1,A2,A3,RD1,RD2,WD,RD1_out,RD2_out);
input[4:0] A1,A2,A3;
input[31:0] RD1,RD2,WD;
output[31:0] RD1_out,RD2_out;

assign RD1_sel=(A1==A3&&A1!=0)?1:0;
assign RD2_sel=(A1==A3&&A1!=0)?1:0;

mux_2_32bit rd1m(.a(RD1),.b(WD),.sel(RD1_out),.op(RD1_sel));
mux_2_32bit rd2m(.a(RD2),.b(WD),.sel(RD2_out),.op(RD2_sel));
endmodule
