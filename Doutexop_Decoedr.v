`define lb 6'b100000
`define lbu 6'b100100
`define lh  6'b100001
`define lhu 6'b100101
`define op 31:26
module Doutexop_Decoedr(ir_w,op);
input[31:0] ir_w;
output[2:0] op;
assign op=(ir_w[`op]==`lbu)?3'b001:
          (ir_w[`op]==`lb)?3'b010:
			 (ir_w[`op]==`lhu)?3'b011:
			 (ir_w[`op]==`lh)?3'b100:3'b000;

endmodule
