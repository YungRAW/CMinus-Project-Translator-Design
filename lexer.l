%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "lexer.h"
%}
 
%%
 
"if" {return IF;}
"else" {return ELSE;}
"return" {return RETURN;}
"while" {return WHILE;}
"=" {return ASSIGN;}
 
"int" {return INT;}
"void" {return VOID;}
 
"(" {return LBracket;}
")" {return RBracket;}
"{" {return LBrace;}
"}" {return RBrace;}
"\\" {return Quote;}
"[" {return LSB;}
"]" {return RSB;}
"," {return COMMA;}
";" {return SEMI;}
"\n" {}
 
"-" {return MINUS;}
"+" {return PLUS;}
"*" {return MULTI;}
"/" {return DIV;}
"|" {return OR;}
"&" {return AND;}
 
">" {return B;}
"<" {return S;}
">=" {return BE;}
"<=" {return SE;}
"==" {return EQ;}
"!=" {return NE;}
"||" {return COR;}
"&&" {return CAND;}
 
[0-9]+ {printf ("NUM:%d\n",atoi(yytext)); return NUM;}
[a-zA-Z][a-zA-Z]* {printf("ID: %s\n",yytext); return ID;}
[ \t]*
. {printf("Unknown character: %c\n", yytext[0]);}
%%


 
int yywrap() {
   return 1;
}