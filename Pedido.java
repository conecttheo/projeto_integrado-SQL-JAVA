
package projeto_integrado;

import java.util.ArrayList;
import java.util.List;


public class Pedido {
    private final List<Bebidas> bebidas = new ArrayList<>();
    
    public Pedido(Bebidas Brahma, Bebidas Skol, Bebidas Antartica, Bebidas Refrigerante, Bebidas Agua_com_gas) {
        bebidas.add(Brahma);
        bebidas.add(Skol);
        bebidas.add(Antartica);
        bebidas.add(Refrigerante);
        bebidas.add(Agua_com_gas);
    }

    Pedido() {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    
    public void adicionarBebida(Bebidas bebida) {
        bebidas.add(bebida);
    }
    
    public double getValorTotal() {
        double valorTotal = 0;
        for (Bebidas bebida : bebidas) {
            valorTotal += bebida.getPreco();
        }
        return valorTotal;
    }
}

