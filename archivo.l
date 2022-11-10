%option noyywrap
%{
    #include "archivo.tab.h"    
%}

%% 
\n          { strcpy(yylval.cadena,yytext); return EOL;   }
[0-9]+      { strcpy(yylval.cadena,yytext); return ENTERO; }
.           {  }

%%
