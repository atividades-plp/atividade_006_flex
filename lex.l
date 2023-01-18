DECLARACAO ([ \r]_*[a-zA-Z](_|-)*([a-zA-Z0-9](_|-)*)*\;)
TIPO (int|float)
%%

{TIPO}{DECLARACAO} printf("tipo certo\n");
.        printf(" ");
%%

int main()
{

yylex();

return 0;
}