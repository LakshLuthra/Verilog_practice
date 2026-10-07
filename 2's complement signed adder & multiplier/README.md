# 2's Complement Signed Adder and Multiplier

## Overview

This experiment focuses on designing and simulating signed arithmetic circuits using 2's complement representation in Verilog HDL.

## Experiment Description

The experiment begins with the design of an n-bit signed adder for adding two signed operands. It then introduces explicit sign extension, where the operands are extended to n+1 bits before addition to preserve their sign and allow the results to be examined at a wider bit width.

The experiment also includes the design and simulation of an n-bit signed multiplier. The multiplier produces a 2n-bit signed product so that the complete multiplication result can be represented.

Different positive and negative input combinations are used during simulation to verify the arithmetic operations. The experiment also demonstrates how signed data representation, sign extension, and operand/result widths affect arithmetic operations in Verilog.