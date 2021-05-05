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
public class Administrador {
    
    private int idadministrador;
    private String nomeA;
    private Date dataNascimentoA;
    private String sexoA;
    private String emailA;
    private String maeA;
    private String telefoneA;
    private String cpfA;
    private Acesso acessoA;
    private Perfil perfilA;
    private Endereco enderecoA;
    
    public Administrador(){
      
    }

    public Administrador(String nomeA, Date dataNascimentoA, String sexoA, String emailA, String maeA, String telefoneA, String cpfA, Acesso acessoA, Perfil perfilA, Endereco enderecoA) {
        this.nomeA = nomeA;
        this.dataNascimentoA = dataNascimentoA;
        this.sexoA = sexoA;
        this.emailA = emailA;
        this.maeA = maeA;
        this.telefoneA = telefoneA;
        this.cpfA = cpfA;
        this.acessoA = acessoA;
        this.perfilA = perfilA;
        this.enderecoA = enderecoA;
    }
    
    public int getIdadministrador() {
        return idadministrador;
    }

    public void setIdadministrador(int idadministrador) {
        this.idadministrador = idadministrador;
    }

    public String getNomeA() {
        return nomeA;
    }

    public void setNomeA(String nomeA) {
        this.nomeA = nomeA;
    }

    public Date getDataNascimentoA() {
        return dataNascimentoA;
    }

    public void setDataNascimentoA(Date dataNascimentoA) {
        this.dataNascimentoA = dataNascimentoA;
    }

    public String getSexoA() {
        return sexoA;
    }

    public void setSexoA(String sexoA) {
        this.sexoA = sexoA;
    }

    public String getEmailA() {
        return emailA;
    }

    public void setEmailA(String emailA) {
        this.emailA = emailA;
    }

    public Acesso getAcessoA() {
        return acessoA;
    }

    public void setAcessoA(Acesso acessoA) {
        this.acessoA = acessoA;
    }

    public Perfil getPerfilA() {
        return perfilA;
    }

    public void setPerfilA(Perfil perfilA) {
        this.perfilA = perfilA;
    }

    public Endereco getEnderecoA() {
        return enderecoA;
    }

    public void setEnderecoA(Endereco enderecoA) {
        this.enderecoA = enderecoA;
    }

    public String getMaeA() {
        return maeA;
    }

    public void setMaeA(String maeA) {
        this.maeA = maeA;
    }

    public String getTelefoneA() {
        return telefoneA;
    }

    public void setTelefoneA(String telefoneA) {
        this.telefoneA = telefoneA;
    }

    public String getCpfA() {
        return cpfA;
    }

    public void setCpfA(String cpfA) {
        this.cpfA = cpfA;
    }

}

