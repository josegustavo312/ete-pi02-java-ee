/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.DAO;

import br.com.projeto.comunicacao.Conexao;
import br.com.projeto.negocios.Administrador;
import br.com.projeto.negocios.Itens;
import br.com.projeto.negocios.Produtos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author Alberto
 */
public class ProdutosDAO
{

    private Conexao conexao = new Conexao();
    private Connection con;
    
    public void excluirProdutos(Produtos produtos) {
        PreparedStatement pstmt;
        Connection conn;
        String sql = "DELETE FROM PRODUTOS WHERE IDPRODUTO = (?);";
        try {
            conn = conexao.abrirConexao();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, produtos.getIdproduto());
            pstmt.execute();
            pstmt.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Erro ao Excluir o Produto" + e);
        } finally {
            conexao.fecharConexao();
        }

    }
    
    public void excluirProdutosItens(Produtos produtos) {
        PreparedStatement pstmt;
        Connection conn;
        String sql = "DELETE FROM ITENS WHERE PRODUTOS_IDPRODUTOS = (?);";
        try {
            conn = conexao.abrirConexao();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, produtos.getIdproduto());
            pstmt.execute();
            pstmt.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Erro ao Excluir o Produto" + e);
        } finally {
            conexao.fecharConexao();
        }

    }
    
    public void atualizarProduto(Produtos produtos) {

        PreparedStatement pstmt;
        Connection conn;
        String sql = "UPDATE produtos SET marca = (?), descricao = (?), valor = (?) "
                + " WHERE idproduto = (?);";

        try {
            conn = conexao.abrirConexao();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, produtos.getMarca());
            pstmt.setString(2, produtos.getDescricao());
            pstmt.setInt(3, produtos.getValor());
            pstmt.setInt(4, produtos.getIdproduto());
            pstmt.execute();
            pstmt.close();

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro na Alteração do Administrador" + ex);
        } finally {
            conexao.fecharConexao();
        }

    }
    
    public List<Produtos> listarProdutosID(Produtos produtos)
    {
        List<Produtos> lista = new ArrayList<Produtos>();
        String sql = "SELECT * FROM PRODUTOS, ENDERECO WHERE IDPRODUTO = (?);";
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            
            pstmt.setInt(1, produtos.getIdproduto());
            
            rs = pstmt.executeQuery();
            while(rs.next())
            {                
                
                produtos.setIdproduto(rs.getInt("idproduto"));
                produtos.setMarca(rs.getString("marca"));
                produtos.setDescricao(rs.getString("descricao"));
                produtos.setValor(rs.getInt("valor"));

                lista.add(produtos);                
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

    public List<Produtos> listarProdutos()
    {
        List<Produtos> lista = new ArrayList<Produtos>();
        String sql = "SELECT * FROM PRODUTOS ORDER BY MARCA ASC;";
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            
            rs = pstmt.executeQuery();
            while(rs.next())
            {                
                Produtos produto = new Produtos();
                
                produto.setIdproduto(rs.getInt("idproduto"));
                produto.setMarca(rs.getString("marca"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setValor(rs.getInt("valor"));

                lista.add(produto);                
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
    
    public List<Produtos> listarProdutosId(Produtos produtos)
    {
        List<Produtos> lista = new ArrayList<Produtos>();
        String sql = "SELECT * FROM PRODUTOS, ENDERECO WHERE IDPRODUTO = (?);";
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            
            pstmt.setInt(1, produtos.getIdproduto());
            
            rs = pstmt.executeQuery();
            while(rs.next())
            {                
                Produtos produto = new Produtos();
                
                produto.setIdproduto(rs.getInt("idproduto"));
                produto.setMarca(rs.getString("marca"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setValor(rs.getInt("valor"));

                lista.add(produto);                
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
    
    public void inserirProdutos(Produtos produto)
    {
        String sql = "INSERT INTO PRODUTOS (MARCA,DESCRICAO,VALOR) VALUES (?,?,?);";
        PreparedStatement pstmt;
        
        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, produto.getMarca());
            pstmt.setString(2, produto.getDescricao());
            pstmt.setInt(3, produto.getValor());
            pstmt.execute();
        }
        catch(SQLException ex)
        {
            System.err.println("Ocorreu um erro em Inserir Acesso: \n"+ex);
        }
    
        }
    
    public int inserirItens(Itens itens){
        
        String sql = "INSERT INTO ITENS (QUANTIDADE,PRODUTOS_IDPRODUTOS) VALUES (?,?);";
        PreparedStatement pstmt;
        
        int idItens = 0;
        
        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            pstmt.setInt(1, itens.getQuantidade());
            pstmt.setInt(2, itens.getProdutos().getIdproduto());
            pstmt.execute();
            
            ResultSet rs = pstmt.getGeneratedKeys();
            
            while (rs.next()) {
                idItens = rs.getInt(1);
            }

            pstmt.close();   
        
        }
        catch(SQLException ex)
        {
            System.err.println("Ocorreu um erro em Inserir Acesso: \n"+ex);
        }
        
        finally {
            conexao.fecharConexao();
        }
        
        return idItens;
        
    }
    
}




