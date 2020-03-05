module johnson_counter (C, CLR, Q); 
input C, CLR; 
output [3:0] Q; 
reg [3:0] tmp; 
reg [3:0] additive;
reg [1:0] toggler;
  always @(posedge C or posedge CLR )
	
    begin 
      if (CLR) 
		begin
        tmp = 4'b1000; 
		  additive=4'b0100;
		  toggler=2'b11;
		 end
      else 
		
			if(tmp == 4'b1111)
				toggler=2'b00;
				
			
			if(toggler==2'b11)
				begin
					tmp=tmp+additive;
					additive=additive>>1;
				end
			else
				if(tmp == 4'b0000)
				begin
				toggler=2'b11;
				tmp=4'b1000;
				additive=4'b0100;
				end
			else
				tmp=tmp>>1;
			  
			end 
		
  assign Q = tmp;
	
endmodule 