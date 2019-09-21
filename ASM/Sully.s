section .bss
filename: resb 100
buffer: resb 200

section .text
global _main
extern _fopen
extern _open
extern _dprintf
extern _sprintf
extern _system

_main:
push rbp
mov rbp, rsp
sub rsp, 16
mov r13, 5
mov r14, r13
sub r14, 1

cmp r14, -2
jg execute
leave
ret

execute:
lea rdi, [rel filename]
lea rsi, [rel path]
mov rdx, r13
call _sprintf

lea rdi, [rel filename]
lea rsi, [rel opt]
call _fopen

lea rdi, [rel filename]
mov rsi, 1
call _open

mov r15, rax
mov rdi, r15
lea rsi, [rel str]
mov rdx, 10
mov rcx, r14
mov r8, 34
mov r9, 37
call _dprintf

mov rdi, r15
lea rsi, [rel str_fmt2]
lea rdx, [rel str]
mov rcx, 34
mov r8, 10
lea r9, [rel command]
call _dprintf

lea rdi, [rel buffer]
lea rsi, [rel command]
lea rdx, [rel filename]
mov rcx, r13
call _sprintf

lea rdi, [rel buffer]
call _system

leave
ret

section .data
path: db "Sully_%d.s", 0
opt: db "w+", 0
str_fmt2: db "%1$s%2$c, 0%3$ccommand: db %2$c%4$s%2$c, 0%3$c", 0
str: db "section .bss%1$cfilename: resb 100%1$cbuffer: resb 200%1$c%1$csection .text%1$cglobal _main%1$cextern _fopen%1$cextern _open%1$cextern _dprintf%1$cextern _sprintf%1$cextern _system%1$c%1$c_main:%1$cpush rbp%1$cmov rbp, rsp%1$csub rsp, 16%1$cmov r13, %2$d%1$cmov r14, r13%1$csub r14, 1%1$c%1$ccmp r14, -2%1$cjg execute%1$cleave%1$cret%1$c%1$cexecute:%1$clea rdi, [rel filename]%1$clea rsi, [rel path]%1$cmov rdx, r13%1$ccall _sprintf%1$c%1$clea rdi, [rel filename]%1$clea rsi, [rel opt]%1$ccall _fopen%1$c%1$clea rdi, [rel filename]%1$cmov rsi, 1%1$ccall _open%1$c%1$cmov r15, rax%1$cmov rdi, r15%1$clea rsi, [rel str]%1$cmov rdx, 10%1$cmov rcx, r14%1$cmov r8, 34%1$cmov r9, 37%1$ccall _dprintf%1$c%1$cmov rdi, r15%1$clea rsi, [rel str_fmt2]%1$clea rdx, [rel str]%1$cmov rcx, 34%1$cmov r8, 10%1$clea r9, [rel command]%1$ccall _dprintf%1$c%1$clea rdi, [rel buffer]%1$clea rsi, [rel command]%1$clea rdx, [rel filename]%1$cmov rcx, r13%1$ccall _sprintf%1$c%1$clea rdi, [rel buffer]%1$ccall _system%1$c%1$cleave%1$cret%1$c%1$csection .data%1$cpath: db %3$cSully_%4$cd.s%3$c, 0%1$copt: db %3$cw+%3$c, 0%1$cstr_fmt2: db %3$c%4$c1$s%4$c2$c, 0%4$c3$ccommand: db %4$c2$c%4$c4$s%4$c2$c, 0%4$c3$c%3$c, 0%1$cstr: db %3$c", 0
command: db "nasm -f macho64 %1$s -o Sully_%2$d.o && gcc Sully_%2$d.o -o Sully_%2$d && rm Sully_%2$d.o && ./Sully_%2$d", 0
