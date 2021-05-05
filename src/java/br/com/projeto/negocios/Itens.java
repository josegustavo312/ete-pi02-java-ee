/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.negocios;

/**
 *
 * @author GUSTAVO
 */
public class Itens {
    
    private int iditens;
    private int quantidade;
    private Produtos produtos;
    
    public Itens(){
      
    }

    public Itens(int quantidade, Produtos produtos) {
        this.quantidade = quantidade;
        this.produtos = produtos;
    }

    public int getIditens() {
        return iditens;
    }

    public void setIditens(int iditens) {
        this.iditens = iditens;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public Produtos getProdutos() {
        return produtos;
    }

    public void setProdutos(Produtos produtos) {
        this.produtos = produtos;
    }
    
}
