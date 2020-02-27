
module FS(A,B,C,diff,borrow);
output diff,borrow;
input A,B,C;

  wire   w_1;
  wire   w_2;
  wire   w_3;
       
 
 assign diff = A ^ B ^ C;
 assign borrow =(~ A) & (B | C) | (B & C);


 
  endmodule
   