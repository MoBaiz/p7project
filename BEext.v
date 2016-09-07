`define sw 6'b101011
`define sh 6'b101001
`define sb 6'b101000
`define op 31:26
module BEext(ir_m,A,BE);
input[1:0] A;
input[31:0] ir_m;
output[3:0] BE;
assign BE=(ir_m[`op]==`sb&&A==2'b00)?4'b0001:
          (ir_m[`op]==`sb&&A==2'b01)?4'b0010:
          (ir_m[`op]==`sb&&A==2'b10)?4'b0100:
          (ir_m[`op]==`sb&&A==2'b11)?4'b1000:
			 (ir_m[`op]==`sw)?4'b1111:
			 (ir_m[`op]==`sh&&A==2'b10)?4'b1100:
			 (ir_m[`op]==`sh&&A==2'b11)?4'b1100:
			 (ir_m[`op]==`sh&&A==2'b00)?4'b0011:
			 (ir_m[`op]==`sh&&A==2'b01)?4'b0011:0;
endmodule
