`resetall
`timescale 1ns/10ps
module bitstream_shift_register ( 
  input   wire    [1:0]      din,
  input   wire               clk,  
  input   wire               rst,  
  output  wire    [11:0]     dout
  );
  reg [11:0]  dout_r;
  initial dout_r = 12'b0;
  assign dout = dout_r;
  // First check to see if reset is 0 and if yes, then reset register   
  // If no, then check to see if the shift register is enabled  
  // If no => maintain previous output. If yes, then shift based on the requested direction
  always @ (posedge clk)  // Triggered on the rising edge of the 40 MHz clock
  if (!rst)  dout_r <= 0;  
  else       dout_r <= {din, dout_r[11:2]};   //shift to right direction [1]
endmodule  
