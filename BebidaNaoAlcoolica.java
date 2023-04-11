
package projeto_integrado;

public class BebidaNaoAlcoolica extends Bebidas {
    private boolean gaseificada;
    
    public BebidaNaoAlcoolica(String nome, double preco, boolean gaseficada){
        super(nome, preco);
        this.gaseificada = gaseificada;
    }
    
    public boolean isGaseificada(){
        return gaseificada;
    }
}
