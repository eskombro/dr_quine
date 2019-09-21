%define PATH "Grace_kid.s"
%define OPT "w+"
%define MN _main

section .data
path: db PATH, 0
opt: db OPT, 0
str: db "%1$cdefine PATH %2$cGrace_kid.s%2$c%3$c%1$cdefine OPT %2$cw+%2$c%3$c%1$cdefine MN _main%3$c%3$csection .data%3$cpath: db PATH, 0%3$copt: db OPT, 0%3$cstr: db %2$c%4$s%2$c, 0%3$c%3$csection .text%3$cglobal MN%3$cextern _fopen%3$cextern _open%3$cextern _dprintf%3$c%3$cMN:%3$cpush rbp%3$cmov rbp, rsp%3$csub rsp, 16%3$clea rdi, [rel path]%3$clea rsi, [rel opt]%3$ccall _fopen%3$clea rdi, [rel path]%3$cmov rsi, 1%3$ccall _open%3$cmov rdi, rax%3$clea rsi, [rel str]%3$cmov rdx, 37%3$cmov rcx, 34%3$cmov r8, 10%3$clea r9, [rel str]%3$ccall _dprintf%3$cleave%3$cret%3$c", 0

section .text
global MN
extern _fopen
extern _open
extern _dprintf

MN:
push rbp
mov rbp, rsp
sub rsp, 16
lea rdi, [rel path]
lea rsi, [rel opt]
call _fopen
lea rdi, [rel path]
mov rsi, 1
call _open
mov rdi, rax
lea rsi, [rel str]
mov rdx, 37
mov rcx, 34
mov r8, 10
lea r9, [rel str]
call _dprintf
leave
ret
