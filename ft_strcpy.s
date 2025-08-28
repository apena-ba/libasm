section .text
    global ft_strcpy

ft_strcpy:
    ; rdi = dest
    ; rsi = src
    mov rax, rdi        ; save dest for return

ft_strcpyLoop:
    mov dl, [rsi]       ; load byte from src
    mov [rdi], dl       ; store in dest
    inc rsi
    inc rdi
    test dl, dl         ; check for null terminator
    jne ft_strcpyLoop

    ret
