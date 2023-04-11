
package projeto_integrado;


public class PROJETO_INTEGRADO {
    public static void main(String[] args) {
        Pedido pedido1;
        pedido1 = new Pedido();
        pedido1.adicionarBebida(new BebidaAlcoolica("Brahma",5.0,2.0));
        pedido1.adicionarBebida(new BebidaNaoAlcoolica("Refrigerante",3.0,true));
        
        Pedido pedido2 = new Pedido();
        pedido2.adicionarBebida(new BebidaAlcoolica("Skol",4.0,2.0));
        pedido2.adicionarBebida(new BebidaNaoAlcoolica("Água com gás",3.0,true));
        
        System.out.println("Valor total do pedido 1: R$" + pedido1.getValorTotal());
        System.out.println("Valor total do pedido 2: R$" + pedido2.getValorTotal());
    }
    
}
