;Yes
section .data
st: db ";Yes%1$csection .data%1$cst: db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$cglobal _main%1$cextern _printf%1$c%1$c_fun1:%1$ccall _printf%1$cleave%1$cret%1$c%1$c_main:%1$c;Yes%1$cpush rbp%1$cmov rbp, rsp%1$csub rsp, 16%1$clea rdi, [rel st]%1$cmov rsi, 10%1$cmov rdx, 34%1$clea rcx, [rel st]%1$cjmp _fun1%1$c", 0

section .text
global _main
extern _printf

_fun1:
call _printf
leave
ret

_main:
;Yes
push rbp
mov rbp, rsp
sub rsp, 16
lea rdi, [rel st]
mov rsi, 10
mov rdx, 34
lea rcx, [rel st]
jmp _fun1
