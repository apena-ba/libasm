section .text
    global ft_strcmp

ft_strcmp:
    mov rcx, -1             ; Initialize counter to -1
    mov rax, 0              ; Clean rax & rdx
    mov rdx, 0

_loop:
    inc rcx
    mov al, byte[rdi + rcx] ; Save *s1 into al
    mov dl, byte[rsi + rcx] ; Save *s2 into dl
    
    cmp al, 0               ; If we find \0 in s1, exit
    je _exit
    
    cmp dl, 0               ; If we find \0 in s2, exit
    je _exit
    
    cmp al, dl              ; If the chars are the same, keep looping
    je _loop

_exit:
    sub rax, rdx            ; Difference of chars stored in rax
    ret