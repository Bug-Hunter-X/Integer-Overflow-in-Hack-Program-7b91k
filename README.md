# Integer Overflow in Hack Program

This repository contains a Hack program that demonstrates an integer overflow bug. The program compiles and runs without error, but it can produce incorrect results due to integer overflow if the input is too large.

The program consists of three functions: `foo`, `bar`, and `baz`.  Each function performs a simple arithmetic operation. However, the combination of these operations can lead to integer overflow if the input value exceeds the maximum representable integer value for Hack's integer type.  The `main` function calls `baz` with an input and prints the result.

## Bug Description
The bug is an integer overflow. The program may produce incorrect results if the input is sufficiently large. The issue arises from the lack of bounds checking or error handling within the arithmetic operations.

## Solution
The solution involves adding checks to prevent integer overflow. The updated program includes checks to ensure that intermediate results do not exceed the maximum or minimum representable integer value. If an overflow is detected, the program handles it gracefully, for example, by throwing an exception or returning a special error code.

## How to reproduce the bug:
1. Compile the `bug.hack` file.
2. Run the compiled program. 
3. Try different input values. You should be able to find an input which causes the bug. 

## How to see the solution:
1. Compile the `bugSolution.hack` file.
2. Run the compiled program.