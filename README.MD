### 参考1

>https://www.tutorialspoint.com/assembly_programming/

### 参考2
http://vdisk.weibo.com/s/EH0bs69z8Dk7

### 编译&运行
1. nasm -f elf hello.asm -o obj/hello.o
2. ld -m elf_i386 -o bin/hello obj/hello.o
3. ./hello
