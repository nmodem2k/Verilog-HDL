module testbench;
reg d0,d1,d2,d3,d4,d5,d6,d7;
wire a,b,c;
Encoder EA1(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6),.d7(d7),.a(a),.b(b),.c(c));
initial
begin
d0=1'b1; d1=1'b0; d2=1'b0; d3=1'b0; d4=1'b0; d5=1'b0; d6=1'b0; d7=1'b0;
#1000 d0=1'b0; d1=1'b1; d2=1'b0; d3=1'b0; d4=1'b0; d5=1'b0; d6=1'b0; d7=1'b0;
#200  d0=1'b0; d1=1'b0; d2=1'b1; d3=1'b0; d4=1'b0; d5=1'b0; d6=1'b0; d7=1'b0;
#1000 d0=1'b0; d1=1'b0; d2=1'b0; d3=1'b1; d4=1'b0; d5=1'b0; d6=1'b0; d7=1'b0;
#1000  d0=1'b0; d1=1'b0; d2=1'b0; d3=1'b0; d4=1'b1; d5=1'b0; d6=1'b0; d7=1'b0;
#1000  d0=1'b0; d1=1'b0; d2=1'b0; d3=1'b0; d4=1'b0; d5=1'b1; d6=1'b0; d7=1'b0;
#1000 d0=1'b0; d1=1'b0; d2=1'b0; d3=1'b0; d4=1'b0; d5=1'b0; d6=1'b1; d7=1'b0;
#1000 d0=1'b0; d1=1'b0; d2=1'b0; d3=1'b0; d4=1'b0; d5=1'b0; d6=1'b0; d7=1'b1;
end
endmodule
module Encoder(d0,d1,d2,d3,d4,d5,d6,d7,a,b,c);
	input d0,d1,d2,d3,d4,d5,d6,d7;
	output a,b,c;
	or(a,d4,d5,d6,d7);
	or(b,d2,d3,d6,d7);
	or(c,d1,d3,d5,d7);
endmodule
