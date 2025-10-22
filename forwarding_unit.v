module forwarding_unit(
  input [4:0] EX_RS1, EX_RS2,
  input [4:0] MEM_RD, WB_RD,
  input MEM_RegWrite, WB_RegWrite,
  output reg [1:0] forwardA, forwardB
);
always @(*) begin
  forwardA = 2'b00;
  forwardB = 2'b00;

  if (MEM_RegWrite && MEM_RD != 0 && MEM_RD == EX_RS1)
    forwardA = 2'b10;
  if (MEM_RegWrite && MEM_RD != 0 && MEM_RD == EX_RS2)
    forwardB = 2'b10;
  if (WB_RegWrite && WB_RD != 0 && WB_RD == EX_RS1)
    forwardA = 2'b01;
  if (WB_RegWrite && WB_RD != 0 && WB_RD == EX_RS2)
    forwardB = 2'b01;
end
endmodule
