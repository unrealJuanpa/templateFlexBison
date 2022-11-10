%{
    #include <stdio.h>
    #include <string.h>

    void yyerror(char *mensaje);
    int yylex();
%}

%union{
    char cadena[50];
}

%token <cadena>ENTERO
%token <cadena>EOL

%type <cadena> inicio

%%
inicio      :   ENTERO EOL           { strcpy($$, ""); strcat($$, $1); strcat($$, $2); printf("Sintaxis correcta!, contenido: %s\n", $$); }
            ;

%%

void yyerror(char *mensaje) {
    fprintf(stderr, "Error: %s\n", mensaje);
}

int main() {
    yyparse();
    return 0;
}
