section .text
    global ft_read
    extern __errno_location

ft_read:
    mov rax, 0              ; Syscall number for sys_read
    syscall
    cmp rax, 0
    jl _error               ; Check if error happened
	ret

_error:
    neg rax                 ; Make the rax positive
    mov rdx, rax            ; Save rax, as it holds the error value returned by read()
    call __errno_location wrt ..plt
    mov [rax], rdx          ; rax holds the address of errno, we access it and write the error value
    mov rax, -1
    ret