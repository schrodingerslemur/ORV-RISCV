// ## ALU

// Inputs:
// - inA, inB
// - Opcodes, funct3, funct7

// Outputs:
// - Out
// - Condition Codes

module alu #(
    parameter int WIDTH = 32
)
(
    input  logic [WIDTH-1:0] inA, inB,
    input  opcode_t opcode,
    input  funct3_t funct3,
    input  funct7_t funct7,

    output cc_t condCodes
);

    
endmodule: alu
