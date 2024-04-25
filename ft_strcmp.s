section .text
    global ft_strcmp

ft_strcmp:
    mov rax, rdi
    mov rbx, rsi
    mov rcx, 0

    mov cl, [rax]
    mov dl, [rbx]

    cmp cl, dl
    jne ft_strcmpEnd
ft_strcmpLoop:
    inc rax
    inc rbx
    mov cl, [rax]
    mov dl, [rbx]

    cmp cl, dl
    jne ft_strcmpEnd
    cmp cl, 0
    jne ft_strcmpLoop
ft_strcmpEnd:
    mov rax, 0
    sub cl, dl
    js negative_result
    mov al, cl
    ret

negative_result:
    XOR cl, 255
    add cl, 1
    mov al, cl
    neg rax
    ret