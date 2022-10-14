; Description: Only for people who need coffee
global _start
_start:
    mov cx, nbCups   ; Prepare the cups
    call makeCoffees ;  Make coffees
makeCoffees:
    push cx;                ; Write down the number of cups in your head
    mov eax, 0x4            ; Press coffee mode
    mov ebx, 0x1            ; Select the outlet pressure.
    mov ecx, coffee         ; Define your coffee.
    mov edx, cupSize        ; Use the correct size coffee cup.
    int 0x80                ; The coffee machine brews the coffee.
    pop cx;                 ; Remember the number of cups
    dec cx;                 ; After drinking the cup of coffee, remove it
    cmp cx, 0               ; If there are still cups, 
    jne makeCoffees         ;  drink coffee again.
    mov eax, 0x1            ; Press the exit button
    int 0x80                ; The coffee machine turns off
section .data:
    coffee: db "☕"
    cupSize: equ $-coffee
    nbCups: equ 0x3FF