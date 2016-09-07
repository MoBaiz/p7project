`define sll 6'b000000
`define srl 6'b000010
`define sra 6'b000011
`define funt 5:0
`define zero 6'b000000
module SllDecoder(ir_e,op);
input[31:0] ir_e;
output op;
wire t1,t2;
assign t1=(ir_e[`funt]==`sll||ir_e[`funt]==`srl||ir_e[`funt]==`sra)?1:0;
assign t2=(ir_e[31:26]==`zero)?1:0;
assign op=(t1&&t2)?1:0;


endmodule
