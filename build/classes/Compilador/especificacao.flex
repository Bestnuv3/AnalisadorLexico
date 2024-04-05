package Compilador;
import static Compilador.Token.*;
%%
%{
    private void imprimir (String token, String lexema){
        System.out.println(lexema+" -->> "+token);
    }
%}
%class Lexer
%type Token
nomeVariavel = [a-zA-Z][a-zA-z0-9]*
inteiro = [0-9]+
blocoComentario = "/*"~"*/"
branco = [\t\n\r ]+
linhaComentario = {branco}* "//" .*
palavraChave = "class" | "int" | "new" | "public" | "private" | "static" | "args"
simbolo = "+" | "-" | "*" | "/" | "<" | "<=" | ">" | ">=" | "==" | "!=" | "=" | ";" | "," | "(" | ")" | "[" | "]" | "{" | "}"
%%

{palavraChave}          { imprimir("Palavra-Chave: ", yytext()); return PALAVRA_CHAVE; }
{nomeVariavel}          { imprimir("Variavel: ", yytext()); return NOME_VARIAVEL; }
{inteiro}               { imprimir("Numero Inteiro: ", yytext()); return INT; }
{blocoComentario}       { imprimir("Bloco Comentario: ", yytext()); return BLOCO_COMENTARIO; }
{linhaComentario}       { imprimir("Linha Comentario: ", yytext()); return LINHA_COMENTARIO; }
{branco}                { return BRANCO; }
{simbolo}               { imprimir("Simbolo: ", yytext()); return SIMBOLO; }
.           { imprimir("<<<Invalido!>>>     ", yytext()); return ERROR;}
<<EOF>>     { return null; }