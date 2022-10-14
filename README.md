# i-need-coffee
Small project to get acquainted with the asm x86 language.
![i-need-coffee](https://raw.githubusercontent.com/GuillaumeMCK/i-need-coffee/main/img/capture.png)
## How to build
```bash
$ nasm -f elf32 makeCoffees.asm # Compile the assembly code
$ ld -m elf_i386 -s -o makeCoffees makeCoffees.o # Link the object file
```
## How to run
```bash
$ chmod +x makeCoffees # Make the executable file executable
$ ./makeCoffees # Run the executable file
```
