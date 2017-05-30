section .data
    userMsg db 'Please enter a number: '
    lenUserMsg equ $ - userMsg
    dispMsg db 'You Have entered: '
    lenDispMsg equ $ - dispMsg

section .bss
    num resb 5 ;5个字节的变量，预定义

section .text
    global _start

_start:
    ;output userMsg
    mov eax,4
    mov ebx,1
    mov ecx,userMsg
    mov edx,lenUserMsg
    int 80h

    ;input 5 number
    mov eax,3
    mov ebx,2
    mov ecx,num
    mov edx,5
    int 80h

    ;output dispMsg
    mov eax,4
    mov ebx,1
    mov ecx,dispMsg
    mov edx,lenDispMsg
    int 80h    

    ;output the input number
    mov eax,4
    mov ebx,1
    mov ecx,num
    mov edx,5
    int 80h  

    ;exit
    mov eax,1
    mov ebx,0
    int 80h  