%{
%}

%%
^[aeiouAEIOU].[a-zA-Z]* {
	printf("The given word is a vowel\n");
}
.* {
	printf("The given word is not a vowel\n");
}
%%
int main()
{
	printf("Enter a word to check vowel or not:\n");
	yylex();
	return 0;
}
int yywrap()
{
	return 1;
}
