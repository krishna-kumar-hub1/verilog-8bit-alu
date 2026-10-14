# 8-Bit ALU Design Using Verilog HDL

## Overview
This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs arithmetic, bitwise logical, and shift operations on two 8-bit inputs.

## Features
- 8-bit input operands: A and B
- 8-bit output result
- 3-bit operation selector
- Carry flag for addition
- Zero flag to indicate a zero result
- Combinational logic design
- Testbench-based functional verification

## Supported Operations

| ALU_Sel | Operation | Description |
|---|---|---|
| 000 | Addition | A + B |
| 001 | Subtraction | A - B |
| 010 | AND | A & B |
| 011 | OR | A \| B |
| 100 | XOR | A ^ B |
| 101 | NOT | ~A |
| 110 | Left Shift | A << 1 |
| 111 | Right Shift | A >> 1 |

## Module Interface
- `A[7:0]`: First input operand
- `B[7:0]`: Second input operand
- `ALU_Sel[2:0]`: Operation selector
- `Result[7:0]`: Operation result
- `Carry`: Carry-out flag for addition
- `Zero`: High when the 8-bit result equals zero

## Tools
- Verilog HDL
- Icarus Verilog or ModelSim/Questa
- GTKWave (optional, for waveform viewing)

## How to Simulate

Using Icarus Verilog:

1. Compile the design and testbench:
   `iverilog -o alu_sim alu_8bit.v tb_alu_8bit.v`

2. Run the simulation:
   `vvp alu_sim`

3. Review the console output and verify the expected results.

## Learning Outcomes
- Combinational logic design in Verilog
- Case-based operation selection
- Arithmetic and bitwise operators
- Carry and zero flag generation
- Functional verification using a testbench

## Future Improvements
- Subtraction borrow flag
- Signed arithmetic overflow flag
- Configurable shift amount
- Self-checking testbench
- FPGA synthesis and resource analysis

## Author
Krishna Kumar

## License
See the LICENSE file for details.
