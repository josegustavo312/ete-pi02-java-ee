/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.negocios;

/**
 *
 * @author Gustavo
 */
public class Acesso
{
    private String login;
    private String senha;
    private Perfil perfilAC;
    
    public Acesso(){
      
    }

    public Acesso(String login, String senha, Perfil perfilAC) {
        this.login = login;
        this.senha = senha;
        this.perfilAC = perfilAC;
    } 
    
    public String getLogin()
    {
        return login;
    }

    public void setLogin(String login)
    {
        this.login = login;
    }

    public String getSenha()
    {
        return senha;
    }

    public void setSenha(String senha)
    {
        this.senha = senha;
    } 

    public Perfil getPerfilAC() {
        return perfilAC;
    }

    public void setPerfilAC(Perfil perfilAC) {
        this.perfilAC = perfilAC;
    }
    
}
