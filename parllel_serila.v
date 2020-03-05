module pisot_v;
reg clk;
reg reset;
reg load;
reg [3:0] din;
wire [3:0] dout;
parallel_in_serial_out uut (.clk(clk),.load(load),.reset(reset),.din(din),.dout(dout) );
initial begin
clk = 0;
reset = 0;
din = 0;
#5 reset=1'b1;
#5 reset=1'b0;
#10 load=1'b1;

#10 din=4'b1001;
#10 din=4'b1010;
#10 din=4'b1011;
#10 din=4'b1110;
#10 din=4'b1111;
#10 din=4'b0000;
end
always #5 clk = ~clk;
initial #150 $stop;
endmodule

module parallel_in_serial_out ( din ,clk ,reset ,load ,dout );

output dout ;
reg dout ;

input [3:0] din ;
wire [3:0] din ;
input clk ;
wire clk ;
input reset ;
wire reset ;
input load ;
wire load ;

reg [3:0]temp;

always @ (posedge (clk)) begin
 if (reset)
  temp <= 1;
 else if (load)
  temp <= din;
 else begin
  dout <= temp[3];
  temp <= {temp[2:0],1'b0};
 end
end

endmodule
