// ## Registers
// 32 general purpose 32-bit registers (R0-R31). R0 is hardwired to zero.

// Inputs:
// - Register select (5-bits) x 3 (which to read/write) (rd, rs1, rs2)
// - Register write enable (1-bit)
// - Register write data (32-bits)
// - Clock, Reset

// Outputs:
// - Register read data (32-bits) x 2

module registers #(
    parameter int WIDTH = 32
) (
    input  logic [4:0] sel_rd, sel_rs1, sel_rs2,
    input  logic wr_en,
    input  logic [WIDTH-1:0] wr_data,
    input  logic clock, reset,

    output logic [WIDTH-1:0] rs1_data, rs2_data
);

    logic [WIDTH-1:0] regFile [32];

    always_ff @(posedge clock, posedge reset) begin
        if (reset)
            regFile <= '0;
        else if (wr_en)
            regFile[sel_rd] <= wr_data;
    end

    assign rs1_data = regFile[sel_rs1];
    assign rs2_data = regFile[sel_rs2];

endmodule: registers
