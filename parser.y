%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
%}

%token INT MAIN RETURN FOR IDENTIFIER NUMBER
%token LPAREN RPAREN LBRACE RBRACE SEMICOLON ASSIGN LT PLUS PLUSPLUS

%%
program:
    INT MAIN LPAREN RPAREN LBRACE stmt_list RBRACE { printf("success\n"); }
;

stmt_list:
    declaration
    for_loop
    return_stmt
;

declaration:
    INT IDENTIFIER ASSIGN NUMBER SEMICOLON
;

for_loop:
    FOR LPAREN INT IDENTIFIER ASSIGN NUMBER SEMICOLON IDENTIFIER LT NUMBER SEMICOLON IDENTIFIER PLUSPLUS RPAREN LBRACE assignment SEMICOLON RBRACE
;

assignment:
    IDENTIFIER ASSIGN IDENTIFIER PLUS IDENTIFIER
;

return_stmt:
    RETURN NUMBER SEMICOLON
;
%%
void yyerror(char *msg) {
    printf("Syntax error: %s\n", msg);
    exit(1);
}

int main() {
    yyparse();
    return 0;
}
