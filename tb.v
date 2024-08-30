`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 21:55:31
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module t_mips;
    reg clock;

    mips test(clock);

    // Clock generation
    initial begin
        clock = 1'b0;
        forever begin
            #10 clock = ~clock;
        end
    end

    // Load the memory files and observe signals
    initial begin
        // Initialize instruction memory (instruction.mem)
        // You should replace these with the actual instructions for your test
        $readmemb("instruction.mem", test.instruction_mem.instr_memory);

        // Initialize data memory (data.mem)
        // You should replace these with the actual data for your test
        $readmemb("data.mem", test.data_mem.data_memory);

        // Initialize registers (registers.mem)
        // You should replace these with the actual register values for your test
        $readmemb("registers.mem", test.regs.registers);

        // Monitor signals for debugging
        $monitor("At time %t:", $time,
                 "\nPC: %h",
                 "\nInstruction: %h",
                 "\nRegister 1: %h, Register 2: %h",
                 "\nALU Result: %h, Zero: %b",
                 "\nData Memory Read: %h",
                 "\nNext PC: %h",
                 "\n------------------------------------------",
                 test.pc, 
                 test.instruction,
                 test.read_reg_1, test.read_reg_2, 
                 test.alu_result, test.zero,
                 test.read_data,
                 test.pc_next);
end
        // Stop the simulation after a certain amount of time
        initial 
        begin
        #1000 $finish;
    end
endmodule


