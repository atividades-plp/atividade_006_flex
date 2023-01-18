OPERATION                       ([ \r]_*[a-zA-Z](_|-)*([a-zA-Z0-9](_|-)*)*\;)
TYPE                            (int|float)
BREAKLINE                       ([\n\r\t])
VARIABLEDECLARATION             (((float|int)\ )?[a-zA-Z][a-zA-Z0-9]*\ *=\ *[a-zA-Z0-9]+\ *\;)
EXPRESSION                      ([a-zA-Z][a-zA-Z0-9]*\ *=\ *[a-zA-Z0-9]+\ *[+\-*/]\ *[a-zA-Z0-9]+\ *\;)

%%
{TYPE}{OPERATION}               printf("A variable declaration\n");
{VARIABLEDECLARATION}           printf("A declaration\n");
{EXPRESSION}                    printf("An expression\n");
{BREAKLINE}                     printf("A break line\n");
.                               printf("Invalid syntax\n");
%%

int main(int argc, char *argv[])
{
    if(argc < 2)
    {
        printf("Missing input file\n"); exit(-1);
    }
    yyin = fopen(argv[1], "r");
    yylex();
}