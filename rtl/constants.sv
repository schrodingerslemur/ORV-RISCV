typedef enum logic [6:0] {
    // TODO: separate by type (S, J, etc)
    LUI = 7'b0110111,
    AUIPC = 7'b0010111,
    J = 7'b1101111,
    B = 7'b1100011,
    L = 7'b0000011,
    S = 7'b0100011,
    I = 7'b0010011,
    R = 7'b0110011
} opcode_t;

typedef enum logic [2:0] {
    BEQ_FUNCT3   = 3'b000,
    BNE_FUNCT3   = 3'b001,
    BLT_FUNCT3   = 3'b100,
    BGE_FUNCT3   = 3'b101,
    BLTU_FUNCT3  = 3'b110,
    BGEU_FUNCT3  = 3'b111,
    LB_FUNCT3    = 3'b000,
    LH_FUNCT3    = 3'b001,
    LW_FUNCT3    = 3'b010,
    LBU_FUNCT3   = 3'b100,
    LHU_FUNCT3   = 3'b101,
    SB_FUNCT3    = 3'b000,
    SH_FUNCT3    = 3'b001,
    SW_FUNCT3    = 3'b010,
    ADDI_FUNCT3  = 3'b000,
    SLTI_FUNCT3  = 3'b010,
    SLTIU_FUNCT3 = 3'b011,
    XORI_FUNCT3  = 3'b100,
    ORI_FUNCT3   = 3'b110,
    ANDI_FUNCT3  = 3'b111,
    SLLI_FUNCT3  = 3'b001,
    SRLI_SRAI_FUNCT3 = 3'b101,
    ADD_SUB_FUNCT3   = 3'b000,
    SLL_FUNCT3      = 3'b001,
    SLT_FUNCT3      = 3'b010,
    SLTU_FUNCT3     = 3'b011,
    XOR_FUNCT3      = 3'b100,
    SRL_SRA_FUNCT3  = 3'b101,
    OR_FUNCT3       = 3'b110,
    AND_FUNCT3      = 3'b111
} funct3_t;

typedef enum logic [6:0] {
    SLLI_FUNCT7 = 7'b0000000,
    SRLI_FUNCT7 = 7'b0000000,
    SRAI_FUNCT7 = 7'b0100000,
    ADD_FUNCT7  = 7'b0000000,
    SUB_FUNCT7  = 7'b0100000,
    SLL_FUNCT7  = 7'b0000000,
    SLT_FUNCT7  = 7'b0000000,
    SLTU_FUNCT7 = 7'b0000000,
    XOR_FUNCT7  = 7'b0000000,
    SRL_FUNCT7  = 7'b0000000,
    SRA_FUNCT7  = 7'b0100000,
    OR_FUNCT7   = 7'b0000000,
    AND_FUNCT7  = 7'b0000000
} funct7_t;

typedef enum logic {
    ZERO_CC = 1'b1,
    NO_ZERO_CC = 1'b0
} zero_cc_t;

typedef enum logic {
    NEG_CC = 1'b1;
    NO_NEG_CC = 1'b0;
} neg_cc_t;

typedef enum logic {
    CARRY_CC = 1'b1,
    NO_CARRY_CC = 1'b0
} carry_cc_t;

typedef enum logic {
    OVER_CC = 1'b1,
    NO_OVER_CC = 1'b0
} over_cc_t;

typedef struct packed {
    zero_cc_t z;
    neg_cc_t n;
    carry_cc_t c;
    over_cc_t v;
} cc_t;
