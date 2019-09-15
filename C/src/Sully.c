#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
int main(){
int i = 5;
if (i >= 0){
int f;
char path[20];
sprintf(path, "Sully_%d.c", i);
i--;
f = open(path,O_CREAT|O_WRONLY|O_TRUNC, S_IRWXU);
char src[500] = "#include <stdio.h>%1$c#include <fcntl.h>%1$c#include <unistd.h>%1$c#include <stdlib.h>%1$cint main(){%1$cint i = %2$d;%1$cif (i >= 0){%1$cint f;%1$cchar path[20];%1$csprintf(path, %3$cSully_%%d.c%3$c, i);%1$ci--;%1$cf = open(path,O_CREAT|O_WRONLY|O_TRUNC, S_IRWXU);%1$cchar src[5000] = %3$c%4$s%3$c;%1$cdprintf(f,src,10,i,34,src);%1$cchar cmd[100];%1$csprintf(cmd, %3$cgcc -Wall -Werror -Werror -o Sully_%%1$d Sully_%%1$d.c && ./Sully_%%1$d%3$c, i+1);%1$csystem(cmd);%1$cclose(f);%1$c}%1$c}%1$c";
dprintf(f,src,10,i,34,src);
char cmd[100];
sprintf(cmd, "gcc -Wall -Werror -Werror -o Sully_%1$d Sully_%1$d.c && ./Sully_%1$d", i+1);
system(cmd);
close(f);
}
}
