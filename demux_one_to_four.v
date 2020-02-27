module  demux_using_if(din,dout_0,dout_1,dout_2,dout_3,sel_0 ,sel_1 );
input din,sel_0 ,sel_1;
output dout_0,dout_1,dout_2,dout_3 ;
reg  dout_0,dout_1,dout_2,dout_3;
always @ (sel_0 or sel_1 or din)
begin : demux
dout_0=0;
dout_1=0;
dout_2=0;
dout_3=0;
  if (sel_0 == 1'b0&sel_1 == 1'b0) 
  begin
      dout_0 = din;
  end 
  else if(sel_0 == 1'b0&sel_1 == 1'b1)
  begin
      dout_1 = din;
  end  else if(sel_0 == 1'b1&sel_1 == 1'b0)begin
      dout_2 = din;
  end 
   else if(sel_0 == 1'b1&sel_1 == 1'b1)begin
      dout_3 = din;
  end 
  end
 endmodule