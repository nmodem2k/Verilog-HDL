module testbench;
reg a,b;
wire d0,d1,d2,d3;
decoderstruct DE1(.a(a),.b(b),.d0(d0),.d1(d1),.d2(d2),.d3(d3));
initial
begin
a=1'b0; b=1'b0; 
#1000 a=1'b1; b=1'b0; 
#1000 a=1'b0; b=1'b1; 
#1000 a=1'b1; b=1'b1; 
end
endmodule
module decoderstruct(d0,d1,d2,d3,a,b);
	input a,b;
	output d0,d1,d2,d3;
	wire x,y;
	not(x,a);
	not(y,b);
	and(d0,x,y);
	and(d1,a,y);
	and(d2,b,x);
	and(d3,a,b);
	
endmodule
