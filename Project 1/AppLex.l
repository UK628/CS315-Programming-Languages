%option main
alphabetic [A-Za-z_$]
digit [0-9]
sign [+-]
anyChar [./n]
alphanumeric ({alphabetic}|{digit})
%%
\/\/(.)+ printf("COMMENT");
\"(.)*\" printf("TEXT");
if printf("IF");
else printf("ELSE");
loop printf("LOOP");
true printf("BOOL_TRUE");
false printf("BOOL_FALSE");
string printf("STRING");
bool printf("BOOLEAN");
int printf("INT");
float printf ("FLOAT");
list printf ("LIST");
obj printf ("OBJECT");
void printf ("VOID");
func printf ("FUNCTION");
static printf ("STATIC");
return printf ("RETURN");
connectToURL printf("CONNECT_TO_URL");
getTime printf("GET_TIME");
getInput printf("GET_INPUT");
sendInput printf("SEND_INPUT");
print printf("PRINT");
length printf("LENGTH");
\=\= printf("IS_EQUAL_OP");
\!\= printf("IS_NOT_EQUAL_OP");
\> printf("GREATER_OP");
\>\= printf("GREATER_OR_EQUAL_OP");
\<\= printf("LESS_OR_EQUAL_OP");
\< printf ("LESS_OP");
\= printf ("ASSIGN_OP");
\+ printf ("ADD_OP");
\- printf ("SUB_OP");
\* printf ("MUL_OP");
\/ printf ("DIV_OP");
\& printf ("AND_OP");
\| printf ("OR_OP");
\! printf ("NOT_OP");
\; printf("SEMI_COLON");
\: printf("COLON");
\, printf("COMMA");
\. printf("DOT");
\{ printf("LCURL");
\} printf("RCURL");
\( printf("LP");
\) printf("RP");   
\[ printf("LSQUARE"); 
\] printf("RSQUARE");
{alphabetic}{alphanumeric}*  printf("IDENTIFIER");
{sign}?{digit}+ printf("INT_VALUE");
{sign}?{digit}*(\.)?{digit}+ printf("FLOAT_VALUE");
