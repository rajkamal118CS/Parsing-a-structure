%{
#include<stdio.h>
#include "y.tab.h"
%}
%%
int|float|char return BUILTIN;
"[" return L;
"]" return R;
[0-9]* return NUM;
struct return STRUCT;
"{" return LEFT;
"}" return RIGHT;
"," return COMMA;
";" return SC;
[a-zA-Z]+[a-zA-Z0-9]* return ID;
"\n" ;
%%
