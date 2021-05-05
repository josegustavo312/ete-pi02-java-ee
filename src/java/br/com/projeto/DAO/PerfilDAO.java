/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projeto.DAO;

import br.com.projeto.comunicacao.Conexao;
import br.com.projeto.negocios.Perfil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author GUSTAVO
 */
public class PerfilDAO {
    
    private Conexao conexao = new Conexao();
    private Connection con;
    
    public Perfil consultarPerfil(int idPerfil)
    {
        Perfil perfil = new Perfil();
        PreparedStatement pstmt;
        ResultSet rs;
        String sql = "SELECT * FROM PERFIL WHERE IDPERFIL = ?;";

        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, idPerfil);
            rs = pstmt.executeQuery();
            rs.first();

            idPerfil = rs.getInt("idperfil");
            String descricaoPerfil = rs.getString("descricaoperfil");
            perfil.setIdPerfil(idPerfil);
            perfil.setDescricaoPerfil(descricaoPerfil);

        }
        catch (SQLException ex)
        {
            JOptionPane.showMessageDialog(null, "Erro ao consultar perfil: \n" + ex);
        }

        return perfil;
    }
    
    public Integer inserirPerfil(Perfil perfil)
    {
        Integer retorno = null;
        PreparedStatement pstmt;
        String sql = "INSERT INTO PERFIL (DESCRICAOPERFIL) VALUES (?);";
        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, perfil.getDescricaoPerfil());
            pstmt.execute();
        }
        catch (SQLException e)
        {
            JOptionPane.showMessageDialog(null, "Erro ao inserir perfil: \n"+e);
        }
        return retorno;
    }

    
    public List<Perfil> listarPerfil()
    {
        List<Perfil> lista = new ArrayList<Perfil>();
        String sql = "SELECT * FROM PERFIL ORDER BY DESCRICAOPERFIL ASC;";
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            
            rs = pstmt.executeQuery();
            while(rs.next())
            {   
                Perfil perfil = new Perfil();
                perfil.setIdPerfil(rs.getInt("idPerfil"));
                perfil.setDescricaoPerfil(rs.getString("descricaoPerfil"));
                
                lista.add(perfil);
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
    
}
