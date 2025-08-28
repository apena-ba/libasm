section .text
    global ft_strdup
    extern malloc
    extern ft_strlen
    extern ft_strcpy

ft_strdup:
    push rdi
    call ft_strlen
    mov rdi, rax
    inc rdi
    call malloc wrt ..plt
    pop rsi          ; original string
    mov rdi, rax     ; dest
    mov rsi, rsi     ; src
    call ft_strcpy
    ret
