section .text
    global _start

_start:
    mov edx,len
    mov ecx,msg
    mov ebx,1
    mov eax,4
    int 0x80

    mov edx,9
    mov ecx,s2
    mov ebx,1
    mov eax,4
    int 0x80

    mov edx,1   ;d->长度
    mov ecx,s3  ;c->内容
    mov ebx,1   ;b->文件(stdout)
    mov eax,4   ;a->系统调用(write)
    int 0x80    ;执行调用

    mov eax,1   ;a->系统调用(exit)
    int 0x80    ;执行调用

section .data
    msg db 'Displaying 9 stars',0xa
    len equ $ - msg
    s2 times 9 db '*'
    s3 db 0xa
