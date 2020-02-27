
/*t_flipflop(using d_flipflop)
 module d2t(
    output q,
    output qbar,
    input t,
	 input tbar;
    input clk
    );
wire x,y;
assign tbar=~t
and a1(x,t,qbar);
and a2(y,tbar,q);
not a4(qbar,q);

d_ff a3(q,qbar,y,x,clk);
endmodule*/

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