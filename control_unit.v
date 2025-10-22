module control_unit(
  input [6:0] opcode,
  output reg Branch, MemRead, MemtoReg,
  output reg [1:0] ALUOp,
  output reg MemWrite, ALUSrc, RegWrite
);
always @(*) begin
  case(opcode)
    7'b0110011: begin // R-type
      ALUSrc=0; MemtoReg=0; RegWrite=1;
      MemRead=0; MemWrite=0; Branch=0; ALUOp=2'b10;
    end
    7'b0000011: begin // LW
      ALUSrc=1; MemtoReg=1; RegWrite=1;
      MemRead=1; MemWrite=0; Branch=0; ALUOp=2'b00;
    end
    7'b0100011: begin // SW
      ALUSrc=1; MemtoReg=0; RegWrite=0;
      MemRead=0; MemWrite=1; Branch=0; ALUOp=2'b00;
    end
    7'b1100011: begin // BEQ
      ALUSrc=0; MemtoReg=0; RegWrite=0;
      MemRead=0; MemWrite=0; Branch=1; ALUOp=2'b01;
    end
    default: begin
      ALUSrc=0; MemtoReg=0; RegWrite=0;
      MemRead=0; MemWrite=0; Branch=0; ALUOp=2'b00;
    end
  endcase
end
endmodule
