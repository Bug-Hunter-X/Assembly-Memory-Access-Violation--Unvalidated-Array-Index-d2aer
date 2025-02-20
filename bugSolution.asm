section .data
array dw 10, 20, 30, 40, 50 ; Example array
arraySize dw 5 ; Size of the array

section .text
  global _start

_start:
  mov ebx, array ; Base address of the array
  mov ecx, 2 ; Array index (example)

  ;Check for index out of bounds
  cmp ecx, arraySize
  jge out_of_bounds
  ;Access array element
  mov ax, [ebx + ecx * 2] ; Access element at index ecx.  Note: 2 bytes per element (dw)
  ; ... process ax ...
  jmp end_program

out_of_bounds:
  ;Handle out of bounds error
  ; ... exit gracefully or report error ...

end_program:
  mov eax, 1 ; sys_exit
exit