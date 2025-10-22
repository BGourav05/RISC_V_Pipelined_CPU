module hazard_detection(
  input [4:0] ID_EX_RD,
  input ID_EX_MemRead,
  input [4:0] IF_ID_RS1, IF_ID_RS2,
  output reg stall
);
always @(*) begin
  if (ID_EX_MemRead &&
     ((ID_EX_RD == IF_ID_RS1) || (ID_EX_RD == IF_ID_RS2)))
    stall = 1;
  else
    stall = 0;
end
endmodule
