
package projeto_integrado;

public class Bebidas {
    private final String nome;
    private final double preco;

    Bebidas(String nome, double preco){
        this.nome = nome;
        this.preco = preco;
    }

    public String getNome() {
        return nome;
    }

    public double getPreco() {
        return preco;
    }
}