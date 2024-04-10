section .data
	msg DB "Hello world" ,  10
	msgLen equ $-msg


section .text
global _start
_start:
	mov eax,4
	mov ebx,1
	mov ecx, msg
	mov edx, msgLen
	INT 0x80
	mov eax, 1
 	mov ebx, 1
	INT 0x80
