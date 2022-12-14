%{
#undef yywrap
#define yywrap() 1	
void display(char[],int);
int flag;

%}

%%

[a-zA-Z]+ {

	int flag=1;
	display(yytext,flag);
	return 0;
}

[0-9]+ {
	int flag=0;
	display(yytext,flag);

}

.+ {
	int flag=-1;
	display(yytext,flag);
}

%%

void display(char a[],int flag)
{
	if(flag==1)
		printf("The given string: %s  is a word\n ",a);
	if(flag==0)
		printf("The given string: %s  is a number\n ",a);
	if(flag==-1)
		printf("The given string: %s  is combination of word and number\n ",a);

}	

int main()
{
	printf("Enter a string: \n");
	yylex();
}