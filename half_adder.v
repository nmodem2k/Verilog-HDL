module testbench;
reg A,B;
wire sum,carry;
half_adder FA1(.A(A), .B(B),  .sum(sum), .carry(carry));
initial
begin
A=1'b0; B=1'b0; B=1'b0;
#1000 A=1'b0; B=1'b0;
#200 A=1'b0; B=1'b1; 
#1000 A=1'b0; B=1'b1; 
#1000 A=1'b1; B=1'b0; 
#1000 A=1'b1; B=1'b0; 
#1000 A=1'b1; B=1'b1; 
#1000 A="1"; B="1"; 
end
endmodule

module half_adder(A,B,sum,carry);
input A,B;
output sum,carry;
assign sum=A^B;
assign carry=A&B;

endmodule