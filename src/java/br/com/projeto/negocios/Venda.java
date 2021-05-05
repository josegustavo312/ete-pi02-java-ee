/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.negocios;

import java.sql.Date;

/**
 *
 * @author GUSTAVO
 */
public class Venda {
    
    private int idvenda;
    private Date data;
    private Itens itens;
    private Usuario usuario;
    
    public Venda(){
      
    }

    public Venda(Date data, Itens itens, Usuario usuario) {
        this.data = data;
        this.itens = itens;
        this.usuario = usuario;
    }
    
    public int getIdvenda() {
        return idvenda;
    }

    public void setIdvenda(int idvenda) {
        this.idvenda = idvenda;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public Itens getItens() {
        return itens;
    }

    public void setItens(Itens itens) {
        this.itens = itens;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    
}