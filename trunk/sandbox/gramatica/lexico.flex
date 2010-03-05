package Pseudo;

import java_cup.runtime.SymbolFactory;
%%
%cup
%class Scanner
%{
	public Scanner(java.io.InputStream r, SymbolFactory sf){
		this(r);
		this.sf=sf;
	}
	private SymbolFactory sf;
%}
%eofval{
    return sf.newSymbol("EOF",sym.EOF);
%eofval}

%%

[Aa][Ll][Gg][Oo][Rr][Ii][Tt][Mm][Oo]	{return sf.newSymbol("ALGORITMO", sym.ALGORITMO);}
	{return sf.newSymbol("IDENTIFICADOR", sym.IDENTIFICADOR);}
[Vv][Aa][Rr]	{return sf.newSymbol("VAR", sym.VAR);}
	{return sf.newSymbol("CONST", sym.CONST);}
	{return sf.newSymbol("DOSPUNTOS", sym.DOSPUNTOS);}
	{return sf.newSymbol("COMA", sym.COMA);}
	{return sf.newSymbol("CORCHIZQ", sym.CORCHIZQ);}
	{return sf.newSymbol("CORCHDER", sym.CORCHDER);}
[0-9]	{return sf.newSymbol("NUM", sym.NUM);}
[A-Za-z][A-Za-z_0-9]+	{return sf.newSymbol("IDENTIFICADOR", sym.IDENTIFICADOR);}
[Ee][Nn][Tt][Ee][Rr][Oo]	{return sf.newSymbol("ENTERO", sym.ENTERO);}
[Rr][Ee][Aa][Ll]	{return sf.newSymbol("REAL", sym.REAL);}
[Cc][Aa][Rr][Aa][Cc][Tt][Ee][Rr]	{return sf.newSymbol("CARACTER", sym.CARACTER);}
[Cc][Aa][Dd][Ee][Nn][Aa]	{return sf.newSymbol("CADENA", sym.CADENA);}
[Ll][Oo][Gg][Ii][Cc][Oo]	{return sf.newSymbol("LOGICO", sym.LOGICO);}
[Ii][Nn][Ii][Cc][Ii][Oo]	{return sf.newSymbol("INICIO", sym.INICIO);}
[Ff][Ii][Nn]	{return sf.newSymbol("FIN", sym.FIN);}
(\n | \r | \r\n)+	{return sf.newSymbol("NUEVALINEA
[Ss][Ii]	{return sf.newSymbol("SI", sym.SI);}
"("	{return sf.newSymbol("PARENTIZQ", sym.PARENTIZQ);}
")"	{return sf.newSymbol("PARENTDER", sym.PARENTDER);}
[Ee][Nn][Tt][Oo][Nn][Cc][Ee][Ss]	{return sf.newSymbol("ENTONCES", sym.ENTONCES);}
[Ss][Ii][Nn][Oo]	{return sf.newSymbol("SINO", sym.SINO);}
[Pp][Aa][Rr][Aa]	{return sf.newSymbol("PARA", sym.PARA);}
[Dd][Ee][Ss][Dd][Ee]	{return sf.newSymbol("DESDE", sym.DESDE);}
[Ha][Aa][Ss][Tt][Aa]	{return sf.newSymbol("HASTA", sym.HASTA);}
[Mm][Ii][Ee][Nn][Tt][Rr][Aa][Ss]	{return sf.newSymbol("MIENTRAS", sym.MIENTRAS);}
[Rr][Ee][Pp][Ii][Tt][Aa]	{return sf.newSymbol("REPITA", sym.REPITA);}
"<-"	{return sf.newSymbol("ASIGNACION", sym.ASIGNACION);}
"<"	{return sf.newSymbol("MENOR", sym.MENOR);}
">"	{return sf.newSymbol("MAYOR", sym.MAYOR);}
"<="	{return sf.newSymbol("MENORIGUAL", sym.MENORIGUAL);}
">="	{return sf.newSymbol("MAYORIGUAL",sym.MAYORIGUAL);}
"<>"	{return sf.newSymbol("DIFERENTE",sym.DIFERENTE);}
"="	{return sf.newSymbol("IGUAL",sym.IGUAL);}
"+"	{return sf.newSymbol("SUMA",sym.SUMA);}
"-"	{return sf.newSymbol("RESTA",sym.RESTA);}
"*"	{return sf.newSymbol("MULTIPLI", sym.MULTIPLI);}
"/"	{return sf.newSymbol("DIVISION", sym.DIVISION);}


"=" { return sf.newSymbol("Igual",sym.IGUAL); }
"+" { return sf.newSymbol("Suma",sym.SUMA); }
"*" { return sf.newSymbol("Multiplicacion",sym.POR); }
"(" { return sf.newSymbol("Parentesis Izquierdo",sym.PARENTIZQ); }
")" { return sf.newSymbol("Parentesis Derecho",sym.PARENTDER); }
[0-9]+ { return sf.newSymbol("Numero Entero",sym.NUMERO, new Integer(yytext())); }
[ \t\r\n\f] { /* Ignorar Espacios en Blanco. */ }
. { System.err.println("Caracter Ilegal: "+yytext()); }

%%
"=" { return sf.newSymbol("Igual",sym.IGUAL); }
"+" { return sf.newSymbol("Suma",sym.SUMA); }
"*" { return sf.newSymbol("Multiplicacion",sym.POR); }
"(" { return sf.newSymbol("Parentesis Izquierdo",sym.PARENTIZQ); }
")" { return sf.newSymbol("Parentesis Derecho",sym.PARENTDER); }
[0-9]+ { return sf.newSymbol("Numero Entero",sym.NUMERO, new Integer(yytext())); }
[ \t\r\n\f] { /* Ignorar Espacios en Blanco. */ }
. { System.err.println("Caracter Ilegal: "+yytext()); }




//Arreglar simbol factory ver aca: http://4thmouse.com/index.php/2007/02/15/using-custom-symbols-in-cup/