section .data
msg db "Hello, world!", 0x0a

section .text
global _start

_start:

mov eax, 4   ; On 32-bit Linux write() is system call 4
mov ebx, 1   ; Write to file descriptor 1 (stdout)
mov ecx, msg ; Address of the message to write
mov edx, 14  ; 14 bytes to write
int 0x80     ; Make the system call

mov eax, 1   ; On 32-bit Linux exit() is system call 1
mov ebx, 0   ; Exit with status code 0
int 0x80     ; Make the system call
