section .data
msg db "Hello, world!", 0x0a

section .text
global _start

_start:

mov rax, 1   ; On 64-bit Linux write() is system call 1
mov rdi, 1   ; Write to file descriptor 1 (stdout)
mov rsi, msg ; Address of the message to write
mov rdx, 14  ; 14 bytes to write
syscall      ; Make the system call

mov eax, 60  ; On 64-bit Linux exit() is system call 60
mov rdi, 0   ; Exit with status code 0
syscall      ; Make the system call
