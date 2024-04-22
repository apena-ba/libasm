section .data
    my_text db "Hello world!",10,0
    debug_text db "debug",10,0

section .text
    global main

STDIN equ 0
STDOUT equ 1
STDERR equ 2

%macro debug 0
    mov rax, 1
    mov rdi, STDOUT
    mov rsi, debug_text
    mov rdx, 6
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
%endmacro

main:
    mov rax, my_text
    call ft_printSTR

    mov rax, 60
    mov rdi, 0
    syscall

ft_printSTR:
    push rax
    call ft_strlen

    mov rdx, rax
    mov rax, 1
    mov rdi, STDOUT
    pop rsi
    syscall
    ret

; rax input string to get the len
; rdx as 0 for the input
; rax output as string len
ft_strlen:
    mov rdx, 0
ft_strlenLoop:
    inc rax
    inc rdx
    mov cl, [rax]
    cmp cl, 0
    jne ft_strlenLoop

    mov rax, rdx
    ret
