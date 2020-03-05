module ring_counter (C, CLR, Q); 
input C, CLR; 
output [3:0] Q; 
reg [3:0] tmp; 

  always @(posedge C or posedge CLR )
	
    begin 
      if (CLR) 
        tmp = 4'b0001; 
      else 
		
			if(tmp == 4'b1000)
			tmp = 4'b0001;
			else
         tmp = tmp<<1; 
		  
      end 
  assign Q = tmp;
	
endmodule 