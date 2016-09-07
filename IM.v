
module im_4k(addr,dout);
  input [11:2] addr;
  output [31:0] dout;
  reg [31:0] im[2047:0];
  initial
  begin
  $readmemh("code.txt",im);
  $readmemh("code_handler.txt",im,96,200);
  end
  assign dout=im[addr];
  
endmodule