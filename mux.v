module mux_2_32bit(a,b,sel,op);
  input[31:0] a;
  input[31:0] b;
  output[31:0] sel;
  input op;
  reg[31:0] sel;
  always@ (op or a or b)
  begin
  case(op)
    1'b0: sel=a;
    1'b1: sel=b;
	  default: sel=a;
  endcase
  end
endmodule

module mux_3_32bit(a,b,c,sel,op);
  input[31:0] a;
  input[31:0] b;
  input[31:0] c;
  output[31:0] sel;
  input[1:0] op;
  reg[31:0] sel;
  always@ (op or a or b or c)
  begin
  case(op)
    'b00: sel=a;
    'b01: sel=b;
    'b10: sel=c;
	 default: sel=a;
  endcase
  end
endmodule
module mux_4_32bit(a,b,c,d,sel,op);
  input[31:0] a;
  input[31:0] b;
  input[31:0] c;
  input[31:0] d;
  output[31:0] sel;
  input[1:0] op;
  reg[31:0] sel;
  always@ (op or a or b or c or d)
  begin
  case(op)
    'b00: sel=a;
    'b01: sel=b;
    'b10: sel=c;
	 'b11:sel=d;
	 default: sel=a;
  endcase
  end
endmodule

module mux_3_5bit(a,b,c,sel,op);
  input[4:0] a;
  input[4:0] b;
  input[4:0] c;
  output[4:0] sel;
  input[1:0] op;
   reg[4:0] sel;
   always@ (op or a or b or c)
  begin
  case(op)
    'b00: sel=a;
    'b01: sel=b;
    'b10: sel=c;
	  default: sel=a;
  endcase
  end
 endmodule
 
module mux_2_5bit(a,b,sel,op);
  input[4:0] a;
  input[4:0] b;
  output[4:0] sel;
  input op;
  reg[4:0] sel;
  always@ (op or a or b)
  begin
  case(op)
    1'b0: sel=a;
    1'b1: sel=b;
	  default: sel=a;
  endcase
  end
endmodule
module mux_2_1bit(a,b,sel,op);
  input a;
  input b;
  output sel;
  input op;
  reg sel;
  always@ (op or a or b)
  begin
  case(op)
    1'b0: sel=a;
    1'b1: sel=b;
	  default: sel=a;
  endcase
  end
endmodule