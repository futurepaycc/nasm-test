section .text
	global _start

_start:
	mov edx,len
	mov ecx,msg
	mov ebx,1
	mov eax,4
	int 0x80

	mov eax,1
	int 0x80

section .data
	msg db 'Hello, world!,test', 0xa,0xd;这里的0xa应该是行结束符号,逗号是拼接的意思
	len equ $ - msg

