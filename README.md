# Assembly Logical Instructions Lab

This repository contains assembly language exercises focused on logical instructions such as `XOR` and `TEST`. The tasks demonstrate how these instructions work at the register and memory level, using NASM syntax for the x86 architecture.

## Objectives

- Show that XOR-ing a register or variable with itself sets it to 0.
- Implement a scenario using the TEST instruction and observe its effect.
- Step through code execution and watch how logical instructions affect variable values.

## Files

- `activity.asm` – Main code to run
- `CISC -211 #8.pdf` - Flowchart
- `7challenges.md` - Challenges through this activity
  
## Usage

1. Assemble and link with debug symbols:
    ```
    nasm -f elf32 -g -F dwarf activity.asm -o activity.o
    ld -m elf_i386 activity.o -o activity
    ```

2. Debug with GDB:
    ```
    gdb ./activity
    ```

3. Use GDB commands to step through instructions and observe variables/registers.

## Learning Outcomes

- Practice using XOR and TEST instructions in assembly.
- Understand how logical instructions alter registers and memory.
- Gain experience with low-level debugging using GDB.

---
