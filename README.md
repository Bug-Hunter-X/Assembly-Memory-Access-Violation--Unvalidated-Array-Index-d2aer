# Assembly Memory Access Violation: Unvalidated Array Index

This repository demonstrates a common error in assembly programming: a memory access violation caused by an unvalidated array index.  The `bug.asm` file contains code that is vulnerable to this type of error, while `bugSolution.asm` shows how to mitigate the issue.

**Bug:** The core problem lies in the instruction `mov eax, [ebx + ecx*4 + 0x10]`. The calculation `ebx + ecx*4 + 0x10` determines the memory address to access. If `ecx` (the array index) is too large, this calculation can result in an address outside the allocated memory region, leading to a segmentation fault or other unpredictable behavior.

**Solution:**  The solution involves adding a check to ensure `ecx` is within the bounds of the array. This validation prevents the program from attempting to access memory outside the allocated space. The improved code is in `bugSolution.asm`.