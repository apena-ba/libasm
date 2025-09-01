section .text
    global ft_strdup
    extern ft_strlen
    extern ft_strcpy
    extern malloc
    extern __errno_location

ft_strdup:
    push rdi            ; Push str address to the stack
    call ft_strlen

    mov rdi, rax        ; Get the lenght of str + 1 to call malloc
    inc rdi
    call malloc wrt ..plt
    
    cmp rax, 0          ; Jump to error if malloc returns null
    je _error
    
    pop rsi             ; Pop str address into src for strcpy
    mov rdi, rax        ; Move the address returned by malloc into dest for strcpy
    call ft_strcpy
    ret

_error:
    pop rdi             ; Clean the stack before exit
    call __errno_location wrt ..plt
    mov dword[rax], 12  ; Load ENOMEM (12) into errno address returned by errno_location
    mov rax, 0          ; Set the return value to NULL
    ret