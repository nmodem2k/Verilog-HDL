/*module TestSR;
 reg r;
 reg s;
 reg clk;
 wire q;
 wire qbar;
 sr_ff  flipflop(
 .s(s), 
 .r(r), 
 .clk(clk), 
 .q(q), 
 .qbar(qbar)
 );

 initial begin
 s = 0;
      r = 0;
      clk = 0;
  fork
  #2 s = 0;
  #2 r = 1;
  #4 s = 0;
  #4 r = 0;
  #6 s = 0;
  #6 r = 1;
  #8 s = 1;
  #8 r = 0;
  #10 s = 1;
  #10 r = 1;
  join
 end
always #1 clk =! clk;
end      
endmodule*/
module sr_ff(q,qbar,r,s,clk);
	output q,qbar;
	input r,s,clk;
	reg q,qbar;
	initial begin
	q=1'b0;
	qbar=1'b1;
	end
	always @(posedge clk)
	  begin
	  case({s,r})
		 {1'b0,1'b0}: begin q=q; qbar=qbar; end
		 {1'b0,1'b1}: begin q=1'b0; qbar=1'b1; end
		 {1'b1,1'b0}: begin q=1'b1; qbar=1'b0; end
		 {1'b1,1'b1}: begin q=1'bx; q=1'bx; end
	endcase
	end
endmodule