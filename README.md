# cd_project


 lex lexer.l           # Generates lex.yy.c
 
yacc -d parser.y      # Generates y.tab.c and y.tab.h

cc y.tab.c lex.yy.c -o parser -lfl  # Compiles both together

./parser < input.c    # Run your parser
