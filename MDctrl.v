`define div   6'b011010
`define divu  6'b011011
`define mult  6'b011000
`define multu 6'b011001
`define mfhi  6'b010000
`define mflo  6'b010010
`define mthi  6'b010001
`define mtlo  6'b010011
`define zero  6'b000000
`define funt 5:0
module MDctrl(ir_e,hilo,op,start,mdwe,mdread,mf);
input[31:0] ir_e;
output hilo,mdwe,mdread,start,mf;
output[1:0] op;
wire[5:0] funt;
assign funt=(ir_e[31:26]==`zero)?ir_e[`funt]:6'b111111;
assign hilo=(funt==`mthi)?1:0;
assign mdwe=((funt==`mthi)||(funt==`mtlo))?1:0;
assign mdread=(funt==`mflo)?1:0;
assign start=(funt==`div||funt==`divu||funt==`mult||funt==`multu)?1:0;
assign mf=(funt==`mfhi||funt==`mflo)?1:0;
assign op=(funt==`multu)?0:
          (funt==`mult)?1:
			 (funt==`divu)?2:
			 (funt==`div)?3:0;




endmodule
