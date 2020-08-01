

module FS(A,B,C,sum,carry);
output sum,carry;
input A,B,C;

       
 
 assign sum = A ^ B ^ C;
 assign carry = (A & B) | ( B & C ) | ( C & A) ;


 
  
 
 endmodule
   
