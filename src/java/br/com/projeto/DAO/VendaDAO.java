/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.DAO;

import br.com.projeto.comunicacao.Conexao;
import br.com.projeto.negocios.Acesso;
import br.com.projeto.negocios.Endereco;
import br.com.projeto.negocios.Perfil;
import br.com.projeto.negocios.Usuario;
import br.com.projeto.negocios.Administrador;
import br.com.projeto.negocios.Venda;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import java.sql.Date;

/**
 *
 * @author Alberto
 */
public class VendaDAO
{

    private Conexao conexao = new Conexao();
    private Connection con;
    
    public void excluirUsuarioVenda(Usuario usuario) {
        PreparedStatement pstmt;
        Connection conn;
        String sql = "DELETE FROM VENDA WHERE USUARIO_IDCLIENTE=(?);";
        try {
            conn = conexao.abrirConexao();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, usuario.getIdcliente());
            pstmt.execute();
            pstmt.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Erro ao Excluir o Venda" + e);
        } finally {
            conexao.fecharConexao();
        }

    }
    
    public List<Venda> listarVenda()
    {
        List<Venda> lista = new ArrayList<Venda>();
        String sql = "SELECT * FROM VENDA;";
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            
            rs = pstmt.executeQuery();
            while(rs.next())
            {   
                
                Venda venda = new Venda();
                
                venda.setData(rs.getDate("data"));

                lista.add(venda);
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
    
    public void inserirVenda(Venda venda)
        {
        String sql = "insert into VENDA "
                + "(DATA,ITENS_IDITENS,USUARIO_IDCLIENTE)"
                + " values (?,?,?); ";
        PreparedStatement pstmt;
        
        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            pstmt.setDate(1, venda.getData());
            pstmt.setInt(2, venda.getItens().getIditens());
            pstmt.setInt(3, venda.getUsuario().getIdcliente());
            
            pstmt.execute();
        }
        catch(SQLException ex)
        {
            System.err.println("Ocorreu um erro em Inserir Acesso: \n"+ex);
        }
        
    }
    
}




