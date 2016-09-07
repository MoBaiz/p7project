module DMwesel(aluout_m,memwrite,dmwe);
input [31:0] aluout_m;
input memwrite;
output dmwe;
assign dmwe=(aluout_m<'h7f00&&memwrite)?1:0;
endmodule