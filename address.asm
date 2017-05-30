section .text
    global _start

_start:
    ;output name
    mov edx,lenName ;length
    mov ecx,name ;content
    mov ebx,1 ;file stdout
    mov eax,4 ;syscall no,write
    int 80h

    mov [name],dword 'Nuha' ;dword -> 4 bytes,注意这里的取地址方式

    mov edx,lenName ;length
    mov ecx,name ;content
    mov ebx,1 ;file stdout
    mov eax,4 ;syscall no,write
    int 80h

    mov eax,1
    mov ebx,0
    int 80h    

section .data
    name db 'Zara Ali ',0xa
    lenName equ $ - name
