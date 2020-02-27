/*Verilog HDL Prgram for Serial In Parallel Out Register*/
module SIPO ( din ,clk ,reset ,dout );
output dout ;
input din ;
wire din ;
input clk ;
wire clk ;
input reset ;
wire reset ;
reg [3:0]s;
reg [3:0]dout;
always @ (posedge (clk)) begin 
 if (reset)
  s <= 0;
 else begin
  s[3] <= din;
  s[2] <= s[3];
  s[1] <= s[2];
  s[0] <= s[1];
 end
assign dout = s;
end



 

endmodule
