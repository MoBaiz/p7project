module times(CLK_I,RST_I,ADD_I,WE_I,DAT_I,DAT_O,IRQ);
input CLK_I,RST_I,WE_I;
input[3:2] ADD_I;
input[31:0] DAT_I;
output[31:0] DAT_O;
output IRQ;
reg[31:0] CTRL,PRESET,state, nextstate,count;
reg IRQ;
initial
IRQ=0;
parameter IDLE_mod0=32'b1000;
parameter LOAD_mod0=32'b11000;                            //5bit:load on
parameter LOAD_mod1=32'b11010;
parameter CNTING_mod0=32'b1001;
parameter CNTING_mod1=32'b1011;
parameter INT=32'b101000;                                //6bit: interrupt                         
parameter clr=32'b0;
always @ (posedge CLK_I, posedge RST_I)
   begin
   if (RST_I) state <= clr;
   else if(WE_I&&ADD_I==0)
	 begin
    CTRL<=DAT_I;
    nextstate<=DAT_I;
	 end
   else if(WE_I&&ADD_I==1)
    begin
     PRESET<=DAT_I;
     nextstate<=LOAD_mod0;                  //触发0模式计数
     CTRL<=LOAD_mod0;
    end
   else if(WE_I&&ADD_I==2)
    begin
	  count<=DAT_I;
	end
   
   begin
   state<=nextstate;
   CTRL<=nextstate;
   end
   end

always@(posedge CLK_I or state or nextstate)
   begin
     case(state)
	 CNTING_mod1:
	              begin
		           if(count>1)
		              count<=count-1;
		           else if(count==1)
                      begin
							 count<=count-1;
					       nextstate<=LOAD_mod1;
					       CTRL<=nextstate;
					       end
		           end
     LOAD_mod1:
	              begin
				  count<=PRESET;
				  nextstate<=CNTING_mod1;
				  CTRL<=nextstate;
				  end
	 CNTING_mod0:
                  begin
		           if(count>1)
		              begin
						  count=count-1;
						  nextstate=CNTING_mod0;
						  CTRL<=nextstate;
						  end
		           else if(count==1)
                      begin
					  count=count-1;
					  nextstate=INT;
					  CTRL<=nextstate;
					  end
		          end	
	 INT:
                  begin
						 IRQ=1;
                   nextstate=IDLE_mod0;	
                   CTRL<=nextstate;				   
                  end				  
	 IDLE_mod0:
	             begin
			       nextstate=clr; 
                CTRL<=nextstate;				   
				 end
	 LOAD_mod0:
	             begin
				  count=PRESET;
				  nextstate=CNTING_mod0;
				  CTRL<=nextstate;
				  IRQ=0;
				    end
     endcase
   end 
   mux_3_32bit outputsel(.a(CTRL),.b(PRESET),.c(count),.sel(DAT_O),.op(ADD_I));
   endmodule