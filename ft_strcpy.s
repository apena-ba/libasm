section .text
	global ft_strcpy

ft_strcpy:
	mov rax, rdi ; dest
    mov rbx, rsi ; src
	push rax
	mov dl, [rbx]
    mov [rax], dl
    mov cl, [rax]

ft_strcpyLoop:
    inc rax
    inc rbx
    mov dl, [rbx]
    mov [rax], dl
    mov cl, [rax]

    cmp cl, 0
    jne ft_strcpyLoop
ft_strcpyEnd:
	pop rax
	ret