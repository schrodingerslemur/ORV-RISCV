# ORV layout and modules

## Registers
32 general purpose 32-bit registers (R0-R31). R0 is hardwired to zero.

Inputs:
- Register select (5-bits)
- Register read/write (1-bit)
- Register enable (1-bit)
- Register write data (32-bits)

Outputs:
- Register read data (32-bits)

## ALU
