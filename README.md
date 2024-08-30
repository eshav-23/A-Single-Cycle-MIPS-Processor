# A-Single-Cycle-MIPS-Processor
 A single cycle MIPS - 32 bits processor is designed and implemented in Verilog. for our single cycle implementation we use two seperate memories an ALU, some adders and lots of multiplexers.

## Installation

This Verilog code is implemented in XILINX Vivado.

## Usage

1. Clone the repository to your local machine:
    
    ```
    git clone <https://github.com/eshav-23/A-Single-Cycle-MIPS-Processor>
    
    ```
    
2. Open XILINX Vivado and create a new project.
3. Add the Verilog source files from the cloned repository to your project.
4. Synthesize and implement the design.

## FEATURES
1.Each instruction is fetched, decoded, executed, and the results are written back within a single clock cycle.
2.Branches are resolved within the same cycle, so there is no need for branch prediction or branch delay slots.
3.Since each instruction is completed within one cycle, there’s no need for forwarding, bypassing, or other hazard mitigation techniques seen in pipelined processors.
4.It is a good choice for simple and predictable systems but not for high-performance applications where pipelining and other optimizations are necessary.
