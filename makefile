flex lexer.l
bison -d parser.y

gcc main.c parser.tab.c lex.yy.c AST.c -g -o Output


