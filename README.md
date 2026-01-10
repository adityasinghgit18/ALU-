Arithmetic Logic Unit (ALU)
 Overview

This repository contains the design and implementation of an Arithmetic Logic Unit (ALU) developed as part of a Chip Design Workshop with guidance from the IEEE Student Branch.

The ALU is a fundamental digital block used in processors to perform arithmetic and logical operations. This project focuses on a clean, synthesizable Verilog design with simulation-based verification.

 Features

N-bit combinational ALU (default: 4-bit)

Supported arithmetic and logical operations:

Addition

Subtraction

AND

OR

XOR

Zero flag generation

Modular and easily extendable design

Fully synthesizable HDL code

 Supported Operations
Opcode	Operation
000	ADD
001	SUB
010	AND
011	OR
100	XOR
 Inputs and Outputs
Inputs

A [N-1:0] – Operand A

B [N-1:0] – Operand B

OP [2:0] – Operation select

Outputs

RESULT [N-1:0] – ALU result

ZERO – Asserted when RESULT equals zero

 Tools & Technologies

HDL: Verilog

Simulation: ModelSim / Vivado Simulator

Version Control: Git & GitHub
