public class SomaDoisNumeros {
    private int num1;
    private int num2;

    public SomaDoisNumeros(int num1, int num2) {
        this.num1 = num1;
        this.num2 = num2;
    }
    
    public int somar(){
        return num1 + num2;
    }
    
    public static void main(String[] args) {
        SomaDoisNumeros soma = new SomaDoisNumeros(2, 5);
        System.out.println("2 + 5 = "+soma.somar());
        
        Token tipo = Token.LITERAL;
        switch(tipo){
            case LITERAL:
            case ID:
        }
    }
}
