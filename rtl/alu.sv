module alu #(
    parameter int WIDTH = 32
)
(
    input  logic [WIDTH-1:0] inA, inB,
    input  opcode_t opcode,
    input  funct3_t funct3,
    input  funct7_t funct7,

    output cc_t condCodes
    output logic [WIDTH-1:0] out
);

    case (opcode)

    endcase
endmodule: alu
