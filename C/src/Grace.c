#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#define STR "#include <stdio.h>%1$c#include <fcntl.h>%1$c#include <unistd.h>%1$c#define STR %2$c%4$s%2$c%1$c#define PATH %2$cGrace_kid.c%2$c%1$c#define MAIN int main(){int f; f = open(PATH, O_CREAT|O_WRONLY|O_TRUNC, S_IRWXU);if (f>0){dprintf(f,STR,10,34,32,STR);close(f);}return(0);}%1$c/*%1$c%3$4cYes%1$c*/%1$c%1$cMAIN%1$c"
#define PATH "Grace_kid.c"
#define MAIN int main(){int f; f = open(PATH, O_CREAT|O_WRONLY|O_TRUNC, S_IRWXU);if (f>0){dprintf(f,STR,10,34,32,STR);close(f);}return(0);}
/*
    Yes
*/

MAIN
