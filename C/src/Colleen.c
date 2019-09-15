#include <stdio.h>
/*
    Yes
*/
void func1(char *c){
printf(c,10,c,34,32);
}
int main(){
/*
    Yes
*/
char c[250] = "#include <stdio.h>%1$c/*%1$c%4$4cYes%1$c*/%1$cvoid func1(char *c){%1$cprintf(c,10,c,34,32);%1$c}%1$cint main(){%1$c/*%1$c%4$4cYes%1$c*/%1$cchar c[250] = %3$c%2$s%3$c;%1$cfunc1(c);%1$creturn(0);%1$c}%1$c";
func1(c);
return(0);
}
