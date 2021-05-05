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
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import java.sql.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Alberto
 */
public class EnderecoDAO
{

    private Conexao conexao = new Conexao();
    private Connection con;
    
    public void atualizarEnderecoAdmin(Endereco endereco, Administrador administrador) {

        PreparedStatement pstmt;
        Connection conn;
        String sql = "UPDATE ENDERECO, ADMINISTRADOR SET CIDADE = (?), BAIRRO = (?), "
                + "LOGRADOURO = (?), NUMERO = (?), UF = (?) where IDADMINISTRADOR = (?) "
                + "and IDENDERECO = ENDERECO_IDENDERECO;";

        try {
            conn = conexao.abrirConexao();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, endereco.getCidade());
            pstmt.setString(2, endereco.getBairro());
            pstmt.setString(3, endereco.getLogradouro());
            pstmt.setString(4, endereco.getNumero());
            pstmt.setString(5, endereco.getUf());
            pstmt.setInt(6, administrador.getIdadministrador());
            pstmt.execute();
            pstmt.close();

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro na Alteração do Usuário" + ex);
        } finally {
            conexao.fecharConexao();
        }

    }
    
    public void atualizarEndereco(Endereco endereco, Usuario usuario) {

        PreparedStatement pstmt;
        Connection conn;
        String sql = "UPDATE ENDERECO, USUARIO SET CIDADE = (?), BAIRRO = (?), "
                + "LOGRADOURO = (?), NUMERO = (?), UF = (?) where IDCLIENTE = (?) "
                + "and IDENDERECO = ENDERECO_IDENDERECO;";

        try {
            conn = conexao.abrirConexao();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, endereco.getCidade());
            pstmt.setString(2, endereco.getBairro());
            pstmt.setString(3, endereco.getLogradouro());
            pstmt.setString(4, endereco.getNumero());
            pstmt.setString(5, endereco.getUf());
            pstmt.setInt(6, usuario.getIdcliente());
            pstmt.execute();
            pstmt.close();

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro na Alteração do Usuário" + ex);
        } finally {
            conexao.fecharConexao();
        }

    }
    
    public int inserirEndereco(Endereco endereco)
    {
        PreparedStatement pstmt;
        Connection conn;
        String sql = "insert into ENDERECO "
                + "(CIDADE,BAIRRO,LOGRADOURO,NUMERO,UF)"
                + " values (?,?,?,?,?); ";
        
        int idEndereco = 0;
        
        try{
            conn = conexao.abrirConexao();
            pstmt = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, endereco.getCidade());
            pstmt.setString(2, endereco.getBairro());
            pstmt.setString(3, endereco.getLogradouro());
            pstmt.setString(4, endereco.getNumero());
            pstmt.setString(5, endereco.getUf());
            pstmt.execute();
            
            ResultSet rs = pstmt.getGeneratedKeys();
            
            while (rs.next()) {
                idEndereco = rs.getInt(1);
            }

            pstmt.close();   
        }
        
        catch(SQLException ex){
            System.err.println("Ocorreu um erro em Inserir Endereço: \n"+ex);
        }
        
        finally {
            conexao.fecharConexao();
        }
        
        return idEndereco;
        
        }
    
}




