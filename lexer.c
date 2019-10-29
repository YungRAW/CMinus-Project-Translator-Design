#include <stdio.h>
#include "lexer.h"

extern int yylex();


int main()
{
	int ntoken; //name token 
	ntoken = yylex();
	while (ntoken){
		printf("%d\n", ntoken);
		ntoken = yylex();
	}
	return 0;

}
