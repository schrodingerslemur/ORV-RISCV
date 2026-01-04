# ORV layout and modules

## Registers
32 general purpose 32-bit registers (R0-R31). R0 is hardwired to zero.

Inputs:
- Register select (5-bits) x 2 (which to read/write)
- Register write enable (1-bit)
- Register write data (32-bits)
- Clock, Reset

Outputs:
- Register read data (32-bits) x 2

## ALU

Inputs:
- inA, inB
- Opcodes

Outputs:
- Out
- Condition Codes

## Memory

Inputs: 
- Address select 
- Read/write enable
- Clock, Reset

Inout:
- Read/write data

## FSM and Datapath
Includes everything
Including:
- Instruction parsing
- Interconnects between modules
- Exposing control/status points