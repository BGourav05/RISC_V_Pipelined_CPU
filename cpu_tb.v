`timescale 1ns/1ps
module cpu_tb();
reg clk;
initial begin
  clk = 0;
  forever #5 clk = ~clk;
end

cpu_top dut (.clk(clk));

initial begin
  $dumpfile("waveform.vcd");
  $dumpvars(0, cpu_tb);
  #300 $finish;
end
endmodule
