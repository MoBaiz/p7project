module gpr_test;
 reg clk;
  reg rst;
  initial
  begin
    #0   clk=0;
         rst=1;
    #1 rst=0;
  end
  always #1 clk=~clk;

GPR gprtb(2,5,6,1,123,,,clk,rst);
    
endmodule
