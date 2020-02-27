module testbench;
reg a,b;
wire d0,d1,d2,d3;
decodergate DE2(.a(a),.b(b),.d0(d0),.d1(d1),.d2(d2),.d3(d3));
initial
begin
a=1'b0; b=1'b0; 
#1000 a=1'b1; b=1'b0; 
#1000  a=1'b0; b=1'b1; 
#1000 a=1'b1; b=1'b1; 
end
endmodule
module decodergate(d0,d1,d2,d3,a,b);
	input a,b;
	output d0,d1,d2,d3;
	assign d0=(~a)&(~b);
   assign d1=(~a)&(b);
	assign d2=(a)&(~b);
	assign d3=a&b;
	
	
endmodule
