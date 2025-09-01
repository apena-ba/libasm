section .text
    global ft_strlen

ft_strlen:
    mov rax, -1             ; Initialize counter to -1

_loop:
    inc rax
    cmp byte[rdi + rax], 0  ; Compare 8-bits size starting from rdi + rax (string pointer + counter)
    jne _loop
    ret
