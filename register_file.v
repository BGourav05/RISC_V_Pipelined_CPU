module register_file(
  input clk, RegWrite,
  input [4:0] RS1, RS2, RD,
  input [31:0] WriteData,
  output [31:0] ReadData1, ReadData2
);
reg [31:0] registers [0:31];

assign ReadData1 = registers[RS1];
assign ReadData2 = registers[RS2];

always @(posedge clk)
  if (RegWrite) registers[RD] <= WriteData;
endmodule
