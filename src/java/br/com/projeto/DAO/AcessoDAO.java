/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.DAO;

import br.com.projeto.comunicacao.Conexao;
import br.com.projeto.negocios.Acesso;
import br.com.projeto.negocios.Administrador;
import br.com.projeto.negocios.Endereco;
import br.com.projeto.negocios.Perfil;
import br.com.projeto.negocios.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author Gustavo
 */
public class AcessoDAO
{

    private Conexao conexao = new Conexao();
    private Connection con;
    private PerfilDAO perfilDAO = new PerfilDAO();
    
    public void atualizarAcessoAdmin(Administrador administrador, Acesso acesso) {

        PreparedStatement pstmt;
        Connection conn;
        String sql = "UPDATE ACESSO, ADMINISTRADOR SET SENHA = (?) where IDADMINISTRADOR = (?) "
                + " and LOGIN = ACESSO_LOGIN;";

        try {
            conn = conexao.abrirConexao();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, acesso.getSenha());
            pstmt.setInt(2, administrador.getIdadministrador());
            pstmt.execute();
            pstmt.close();

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro na Alteração do Usuário" + ex);
        } finally {
            conexao.fecharConexao();
        }

    }
    
    public void atualizarAcesso(Usuario usuario, Acesso acesso) {

        PreparedStatement pstmt;
        Connection conn;
        String sql = "UPDATE ACESSO, USUARIO SET SENHA = (?) where IDCLIENTE = (?) "
                + " and LOGIN = ACESSO_LOGIN;";

        try {
            conn = conexao.abrirConexao();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, acesso.getSenha());
            pstmt.setInt(2, usuario.getIdcliente());
            pstmt.execute();
            pstmt.close();

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro na Alteração do Usuário" + ex);
        } finally {
            conexao.fecharConexao();
        }

    }
    
    public List<Administrador> listarAcessoAdmin(Administrador administrador, Acesso acesso)
    {
        List<Administrador> lista = new ArrayList<Administrador>();
        String sql = "SELECT * FROM administrador, acesso WHERE idadministrador=(?) "
                + "and acesso_login = login;";
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            
            pstmt.setInt(1, administrador.getIdadministrador());
            
            rs = pstmt.executeQuery();
            while(rs.next())
            {   
                administrador.setIdadministrador(rs.getInt("idadministrador"));
                acesso.setLogin(rs.getString("login"));
                acesso.setSenha(rs.getString("senha"));

                lista.add(administrador);
            }            
            
        }
        
        catch (SQLException sex)
        {
            System.err.println("Erro SQL: \n"+sex);
        }
        finally
        {

            if (rs != null)
            {
                try
                {
                    rs.close();
                }
                catch (SQLException sqle)
                {
                    System.err.println("SQLE on close"+ sqle);                    
                }
            }
            if (pstmt != null)
            {
                try
                {
                    pstmt.close();
                }
                catch (SQLException sqle)
                {
                    System.err.println("SQLE on close"+ sqle);
                }
            }
            if (con != null)
            {
                try
                {
                    con.close();
                }
                catch (SQLException sqle)
                {
                    System.err.println("SQLE on close"+ sqle);
                }
            }
        }
        return lista;
    }
    
    public List<Usuario> listarAcessoUsuario(Usuario usuario, Acesso acesso)
    {
        List<Usuario> lista = new ArrayList<Usuario>();
        String sql = "SELECT * FROM usuario, acesso WHERE idcliente=(?) and acesso_login = login;";
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            
            pstmt.setInt(1, usuario.getIdcliente());
            
            rs = pstmt.executeQuery();
            while(rs.next())
            {   
                usuario.setIdcliente(rs.getInt("idcliente"));
                acesso.setLogin(rs.getString("login"));
                acesso.setSenha(rs.getString("senha"));

                lista.add(usuario);
            }            
            
        }
        
        catch (SQLException sex)
        {
            System.err.println("Erro SQL: \n"+sex);
        }
        finally
        {

            if (rs != null)
            {
                try
                {
                    rs.close();
                }
                catch (SQLException sqle)
                {
                    System.err.println("SQLE on close"+ sqle);                    
                }
            }
            if (pstmt != null)
            {
                try
                {
                    pstmt.close();
                }
                catch (SQLException sqle)
                {
                    System.err.println("SQLE on close"+ sqle);
                }
            }
            if (con != null)
            {
                try
                {
                    con.close();
                }
                catch (SQLException sqle)
                {
                    System.err.println("SQLE on close"+ sqle);
                }
            }
        }
        return lista;
    }
    
    public Acesso consultarAcesso(String login, String senha)
    {
        Acesso acesso = new Acesso();
        
        String sql = "SELECT * FROM ACESSO WHERE LOGIN = ? AND SENHA = ?;";
        PreparedStatement pstmt;
        ResultSet rs;

        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, login);
            pstmt.setString(2, senha);
            rs = pstmt.executeQuery();
            
            while (rs.next())
            {
                acesso.setLogin(rs.getString("login"));
                acesso.setSenha(rs.getString("senha"));
                Perfil perfil = perfilDAO.consultarPerfil(rs.getInt("perfil_idperfil"));
                acesso.setPerfilAC(perfil);
            }
        }
        catch (SQLException ex)
        {
            System.err.println("(Acesso) Erro SQL: \n" + ex);
        }

        return acesso;
    }

    
    public boolean existeAcesso(String login, String senha)
    {
        boolean flag = false;

        String sql = "SELECT * FROM ACESSO WHERE LOGIN = ? AND SENHA = ?;";
        PreparedStatement pstmt;
        ResultSet rs;

        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, login);
            pstmt.setString(2, senha);
            rs = pstmt.executeQuery();            
                      
            if(rs.first())
            {
                flag = true;                
            }            
        }
        catch (SQLException ex)
        {
            System.err.println("(Acesso) Erro SQL: \n" + ex);
        }

        return flag;
    }

    public boolean existeLogin(String login)
    {
        boolean flag = false;

        String sql = "SELECT * FROM ACESSO WHERE LOGIN = ?;";
        PreparedStatement pstmt;
        ResultSet rs;

        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, login);
            rs = pstmt.executeQuery();            
                      
            if(rs.first())
            {
                flag = true;                
            }            
        }
        catch (SQLException ex)
        {
            System.err.println("(Acesso) Erro SQL: \n" + ex);
        }

        return flag;
    }
    
    public List<Acesso> listarAcessos()
    {
        List<Acesso> lista = new ArrayList<Acesso>();
        String sql = "SELECT * FROM ACESSO ORDER BY LOGIN ASC;";
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            
            rs = pstmt.executeQuery();
            while(rs.next())
            {                
                Acesso acesso = new Acesso();
                acesso.setLogin(rs.getString("login"));
                acesso.setSenha(rs.getString("senha"));

                lista.add(acesso);
            }            
            
        }
        catch (SQLException sex)
        {
            System.err.println("Erro SQL: \n"+sex);
        }
        finally
        {

            if (rs != null)
            {
                try
                {
                    rs.close();
                }
                catch (SQLException sqle)
                {
                    System.err.println("SQLE on close"+ sqle);                    
                }
            }
            if (pstmt != null)
            {
                try
                {
                    pstmt.close();
                }
                catch (SQLException sqle)
                {
                    System.err.println("SQLE on close"+ sqle);
                }
            }
            if (con != null)
            {
                try
                {
                    con.close();
                }
                catch (SQLException sqle)
                {
                    System.err.println("SQLE on close"+ sqle);
                }
            }
        }
        return lista;
    }
    
    
    public void inserirAcesso(Acesso acesso)
    {
        String sql = "INSERT INTO ACESSO (LOGIN,SENHA,PERFIL_IDPERFIL) VALUES (?,?,?);";
        PreparedStatement pstmt;
        
        String login = "0";
        
        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, acesso.getLogin());
            pstmt.setString(2, acesso.getSenha());
            pstmt.setInt(3, acesso.getPerfilAC().getIdPerfil());
            pstmt.execute();
            
            ResultSet rs = pstmt.getGeneratedKeys();
            
            while (rs.next()) {
                login = rs.getString(1);
            }

            pstmt.close();
            
        }
        catch(SQLException ex)
        {
            System.err.println("Ocorreu um erro em Inserir Acesso: \n"+ex);
        }
        
    }
    
}




