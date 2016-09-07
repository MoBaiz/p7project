module ext(a,b,op);
  input[15:0] a;
  input op;
  output[31:0] b;
  reg[31:0] b;
  always @(op or a)
  begin
  case(op)
   1'b0: b={{16{1'b0}},a};
   1'b1: b={{16{a[15]}},a};
  endcase
  end
  endmodule
