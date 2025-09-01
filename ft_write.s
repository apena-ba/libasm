section .text
    global ft_write
    extern __errno_location

ft_write:
    mov rax, 1              ; Syscall number for sys_write
    syscall
    cmp rax, 0
    jl _error               ; Check if error happened
	ret

_error:
    neg rax                 ; Make the rax positive
    mov rdx, rax            ; Save rax, as it holds the error value returned by write()
    call __errno_location wrt ..plt
    mov [rax], rdx          ; rax holds the address of errno, we access it and write the error value
    mov rax, -1
    ret