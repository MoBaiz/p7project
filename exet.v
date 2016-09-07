`define eret 32'b01000010000000000000000000011000
module eret(ir_w,exlclr);
input[31:0] ir_w;
output exlclr;
assign exlclr=(ir_w==`eret)?1:0;
endmodule
