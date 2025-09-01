section .text
    global ft_strcpy

ft_strcpy:
    mov rax, rdi            ; Keep dest to return
    mov rcx, -1             ; Initialize counter to -1

_loop:
    inc rcx
    mov dl, [rsi + rcx]     ; Use the register dl to store the value
    mov [rdi + rcx], dl
    cmp dl, 0               ; If the char is not \0, keep looping
    jne _loop
    ret