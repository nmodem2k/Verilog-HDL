

module FS(A,B,C,diff,borrow);
output diff,borrow;
input A,B,C;

  wire   w_1;
  wire   w_2;
  wire   w_3;
       
 
 assign diff<= A xor B xor C;
 assign borrow =(not A) and (B or C)) or (B and C);


 
  
 
 endmodule
   