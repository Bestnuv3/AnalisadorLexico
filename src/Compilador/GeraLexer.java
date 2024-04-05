package Compilador;

import java.io.*;

public class GeraLexer {
     public static void main(String[] args) throws IOException  {
     String arquivo ="C:\\Users\\alunolages\\Documents\\NetBeansProjects\\TesteAnalisadorLexico\\src\\Compilador\\especificacao.flex";
     geraLexer(arquivo);
    }

    public static void geraLexer(String arq){
        File file = new File(arq);
        jflex.Main.generate(file);
    }
}
