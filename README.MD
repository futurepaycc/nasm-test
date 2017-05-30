### 参考——菜鸟教程

>https://www.tutorialspoint.com/assembly_programming/

### 参考——中/英文文档
>http://vdisk.weibo.com/s/EH0bs69z8Dk7

>http://www.nasm.us/doc/nasmdoc0.html

### 编译&运行
1. nasm -f elf hello.asm -o obj/hello.o
2. ld -m elf_i386 -o bin/hello obj/hello.o
3. ./hello
