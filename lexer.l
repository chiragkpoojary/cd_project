%{
#include "y.tab.h"
%}

%%
"int"           { return INT; }
"main"          { return MAIN; }
"return"        { return RETURN; }
"for"           { return FOR; }
"("             { return LPAREN; }
")"             { return RPAREN; }
"{"             { return LBRACE; }
"}"             { return RBRACE; }
";"             { return SEMICOLON; }
"="             { return ASSIGN; }
"<"             { return LT; }
"++"            { return PLUSPLUS; }
"+"             { return PLUS; }
[0-9]+          { return NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]* { return IDENTIFIER; }
[ \t\r\n]+      { /* ignore whitespace */ }
.               { return yytext[0]; }
%%
