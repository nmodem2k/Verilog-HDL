/*module testbench;
reg A,B;
wire sum,carry;
mux_using_if mux(.din_0(din_0), .din_1(din_1), .din_2(din_2), .din_3(din_3) , .sel_0(sel_0), .sel_1(sel_1), .mux_out(mux_out));
initial
begin
din_0=1'b1; din_1=1'b0; din_2=1'b0;din_3=0'b0;sel_0=1'b0;sel_1=1'b0;
#1000 
din_0=1'b0; din_1=1'b1; din_2=1'b0;din_3=1'b0;sel_0=1'b0;sel_1=1'b1; 

#2000
din_0=1'b0; din_1=1'b0; din_2=1'b0;din_3=1'b0;sel_0=1'b0;sel_1=1'b0;

#1000 
din_0=1'b0; din_1=1'b0; din_2=1'b0;din_3=1'b0;sel_0=1'b0;sel_1=1'b0; 

#1000 
din_0=1'b0; din_1=1'b0; din_2=1'b0;din_3=1'b0;sel_0=1'b0;sel_1=1'b0; 

#1000 
din_0=1'b0; din_1=1'b0; din_2=1'b0;din_3=1'b0;sel_0=1'b0;sel_1=1'b0; 

#1000 
din_0=1'b0; din_1=1'b0; din_2=1'b0;din_3=1'b0;sel_0=1'b0;sel_1=1'b0; 

#1000
din_0=1'b0; din_1=1'b0; din_2=1'b0;din_3=1'b0;sel_0=1'b0;sel_1=1'b0; 

end
endmodule*/

module  mux_using_if(din_0,din_1,din_2,din_3 ,din_4,din_5,din_6,din_7,din_8,din_9,din_10,din_11,din_12,din_13,din_14,din_15,sel_0,sel_1,sel_2,sel_3,mux_out_0,mux_out_1,mux_out_2, mux_out_3,f_mux_out);
input din_0, din_1,din_2,din_3 ,din_4,din_5,din_6,din_7,din_8,din_9,din_10,din_11,din_12,din_13,din_14,din_15,sel_0,sel_1,sel_2,sel_3;
output  mux_out_0,mux_out_1,mux_out_2,mux_out_3,f_mux_out;
reg  mux_out_0,mux_out_1,mux_out_2,mux_out_3,f_mux_out;
always @ (sel_0 or sel_1 or din_0 or din_1 or din_2 or din_3)
begin : MUX0
  if (sel_0 == 1'b0&sel_1 == 1'b0) begin
      mux_out_0 = din_0;
  end else if(sel_0 == 1'b0&sel_1 == 1'b1)begin
      mux_out_0 = din_1 ;
  end  else if(sel_0 == 1'b1&sel_1 == 1'b0)begin
      mux_out_0 = din_2 ;
  end 
   else if(sel_0 == 1'b1&sel_1 == 1'b1)begin
      mux_out_0 = din_3 ;
  end 
end
always @ (sel_0 or sel_1 or din_4 or din_5 or din_6 or din_7)
begin : MUX1
  if (sel_0 == 1'b0&sel_1 == 1'b0) begin
      mux_out_1 = din_4;
  end else if(sel_0 == 1'b0&sel_1 == 1'b1)begin
      mux_out_1= din_5 ;
  end  else if(sel_0 == 1'b1&sel_1 == 1'b0)begin
      mux_out_1 = din_6 ;
  end 
   else if(sel_0 == 1'b1&sel_1 == 1'b1)begin
      mux_out_1 = din_7 ;
  end 
end
always @ (sel_0 or sel_1 or din_8 or din_9 or din_10 or din_11)
begin : MUX2
  if (sel_0 == 1'b0&sel_1 == 1'b0) begin
      mux_out_2 = din_8;
  end else if(sel_0 == 1'b0&sel_1 == 1'b1)begin
      mux_out_2 = din_9;
  end  else if(sel_0 == 1'b1&sel_1 == 1'b0)begin
      mux_out_2 = din_10 ;
  end 
   else if(sel_0 == 1'b1&sel_1 == 1'b1)begin
      mux_out_2 = din_11 ;
  end 
end
always @ (sel_0 or sel_1 or din_12 or din_13 or din_14 or din_15)
begin : MUX3
  if (sel_0 == 1'b0&sel_1 == 1'b0) begin
      mux_out_3 = din_12;
  end else if(sel_0 == 1'b0&sel_1 == 1'b1)begin
      mux_out_3 = din_13 ;
  end  else if(sel_0 == 1'b1&sel_1 == 1'b0)begin
      mux_out_3 = din_14 ;
  end 
   else if(sel_0 == 1'b1&sel_1 == 1'b1)begin
      mux_out_3 = din_15 ;
  end 
end
always @ (sel_2 or sel_3 or mux_out_0 or mux_out_1 or mux_out_2 or mux_out_3)
begin : MUX
  if (sel_2 == 1'b0&sel_3 == 1'b0) begin
      f_mux_out = mux_out_0;
  end else if(sel_2 == 1'b0&sel_3 == 1'b1)begin
     f_mux_out =mux_out_1;
  end  else if(sel_2 == 1'b1&sel_3 == 1'b0)begin
      f_mux_out = mux_out_2;
  end 
   else if(sel_2 == 1'b1&sel_3 == 1'b1)begin
      f_mux_out = mux_out_3;
  end 
end
endmodule 