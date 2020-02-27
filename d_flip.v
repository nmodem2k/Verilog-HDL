//testbench t_flipflop
/*module Testd;
  reg S;
 reg R;
 reg clk;
 
 wire Q;
 wire Qbar;
 d_ff d_flipflop(
 .d(d),  
 .clk(clk), 
 .Q(Q), 
 .Qbar(Qbar)
 );
 initial begin
 d = 0;
 clk = 0;
  fork
  #2 d = 0;
  
  #4 d = 0;

  #6 d = 0;
  
  #8 d = 1;
 
  #10 d = 1;
 
  join
 end
always #1 clk =! clk;
     
endmodule */
module d_ff(q,qbar,d,clk);
	output q,qbar;
	input d,clk;
	reg q,qbar;
	initial begin
	q=1'b0;
	qbar=1'b1;
	end
	always @(posedge clk)
	  begin
	  case({d})
		 {1'b0}: begin q=qbar; qbar=q; end
		 {1'b1}: begin q=1'b1; qbar=1'b0; end
	
	endcase
	end
endmodule