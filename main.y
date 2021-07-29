%{
#include<stdio.h>
%}
%token ID BUILTIN SC NL COMMA STRUCT LEFT RIGHT L R NUM
%%
start:STRUCT ID LEFT declare RIGHT {printf("valid\n");}
declare:BUILTIN varlist SC 
	|BUILTIN varlist SC declare
	|STRUCT ID LEFT declare RIGHT;
varlist:varlist COMMA ID
	|ID L NUM R
	|ID;
%%
void yyerror(const char *str){printf("error");}
int yywrap(){return 0;}
main(){yyparse();}
