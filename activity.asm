section .data
    a dd 5          ; initialized variable
    b dd 10         ; initialized variable
    result dd 0     ; will hold result of XOR
    test_result dd 0 ; will hold result of TEST

section .text
    global _start

_start:
    ; XOR example: prove xor with self = 0
    mov eax, [a]       ; eax = a
    xor eax, eax       ; eax = eax XOR eax -> 0
    mov [result], eax  ; store result

    ; TEST example: check if b is odd or even
    mov ebx, [b]       ; ebx = b
    test ebx, 1        ; test LSB (1 if odd, 0 if even)
    setnz cl           ; cl = 1 if b is odd, else 0
    movzx ecx, cl
    mov [test_result], ecx ; store result

    ; exit program
    mov eax, 1
    int 0x80
