section .text
    global ft_strlen

ft_strlen:
    mov rax, rdi
    mov rdx, 0
    mov cl, [rax]
    cmp cl, 0
    je ft_strlenEnd
ft_strlenLoop:
    inc rax
    inc rdx
    mov cl, [rax]
    cmp cl, 0
    jne ft_strlenLoop
ft_strlenEnd:
    mov rax, rdx
    ret
