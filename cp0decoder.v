`define mfc0 11'b01000000000
`define mtc0 11'b01000000100
module cp0decode(IR_M,CP0WE,GPRWE);
input[31:0] IR_M;
output CP0WE,GPRWE;
assign CP0WE=(IR_M[31:21]==`mtc0)?1:0;
assign GPRWE=(IR_M[31:21]==`mfc0)?1:0;
endmodule
