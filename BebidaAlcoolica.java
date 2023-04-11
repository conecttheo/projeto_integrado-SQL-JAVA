
package projeto_integrado;

public class BebidaAlcoolica extends Bebidas {
    private final double teorAlcoolico;
    
    public BebidaAlcoolica(String nome, double preco, double teorAlcoolico) {
        super(nome, preco);
        this.teorAlcoolico = teorAlcoolico;
    }
    
    public double getTeorAlcoolico(){
        return teorAlcoolico;
    }
    
}
