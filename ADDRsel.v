module ADDRsel(addr,we,op);
input[31:0] addr;
input[1:0] we;
output op;
assign op=(($signed(addr)>='h7f00)&&we==1)?1:0;  //1´ú±ídm
endmodule
