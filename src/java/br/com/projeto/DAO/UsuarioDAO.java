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
public class UsuarioDAO
{

    private Conexao conexao = new Conexao();
    private Connection con;
    
    public void atualizarAdministrador(Administrador administrador) {

        PreparedStatement pstmt;
        Connection conn;
        String sql = "UPDATE administrador SET nome = (?), datanascimento = (?), sexo = (?), "
                + "email = (?), mae = (?), telefone = (?), cpf = (?) WHERE idadministrador = (?);";

        try {
            conn = conexao.abrirConexao();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, administrador.getNomeA());
            pstmt.setDate(2, administrador.getDataNascimentoA());
            pstmt.setString(3, administrador.getSexoA());
            pstmt.setString(4, administrador.getEmailA());
            pstmt.setString(5, administrador.getMaeA());
            pstmt.setString(6, administrador.getTelefoneA());
            pstmt.setString(7, administrador.getCpfA());
            pstmt.setInt(8, administrador.getIdadministrador());
            pstmt.execute();
            pstmt.close();

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro na Alteração do Administrador" + ex);
        } finally {
            conexao.fecharConexao();
        }

    }
    
    public void atualizarUsuario(Usuario usuario) {

        PreparedStatement pstmt;
        Connection conn;
        String sql = "UPDATE usuario SET nome = (?), datanascimento = (?), sexo = (?), "
                + "email = (?), mae = (?), telefone = (?), cpf = (?) WHERE idcliente = (?);";

        try {
            conn = conexao.abrirConexao();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, usuario.getNome());
            pstmt.setDate(2, usuario.getDataNascimento());
            pstmt.setString(3, usuario.getSexo());
            pstmt.setString(4, usuario.getEmail());
            pstmt.setString(5, usuario.getMae());
            pstmt.setString(6, usuario.getTelefone());
            pstmt.setString(7, usuario.getCpf());
            pstmt.setInt(8, usuario.getIdcliente());
            pstmt.execute();
            pstmt.close();

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro na Alteração do Usuário" + ex);
        } finally {
            conexao.fecharConexao();
        }

    }
    
    public void excluirAdministrador(Administrador administrador) {
        PreparedStatement pstmt;
        Connection conn;
        String sql = "DELETE FROM ADMINISTRADOR WHERE IDADMINISTRADOR = (?)";
        try {
            conn = conexao.abrirConexao();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, administrador.getIdadministrador());
            pstmt.execute();
            pstmt.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Erro ao Excluir o Administrador" + e);
        } finally {
            conexao.fecharConexao();
        }

    }
    
    public void excluirUsuario(Usuario usuario) {
        PreparedStatement pstmt;
        Connection conn;
        String sql = "DELETE FROM USUARIO WHERE IDCLIENTE = (?)";
        try {
            conn = conexao.abrirConexao();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, usuario.getIdcliente());
            pstmt.execute();
            pstmt.close();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Erro ao Excluir o Cliente" + e);
        } finally {
            conexao.fecharConexao();
        }

    }
    
    public List<Usuario> listarUsuarioID(Usuario usuario)
    {
        List<Usuario> lista = new ArrayList<Usuario>();
        String sql = "SELECT * FROM usuario, endereco WHERE idcliente=(?)";
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
                usuario.setNome(rs.getString("nome"));
                usuario.setDataNascimento(rs.getDate("dataNascimento"));
                usuario.setSexo(rs.getString("sexo"));
                usuario.setEmail(rs.getString("email"));
                usuario.setMae(rs.getString("mae"));
                usuario.setCpf(rs.getString("cpf"));
                usuario.setTelefone(rs.getString("telefone"));

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
    
    public List<Administrador> listarAdminID(Administrador administrador)
    {
        List<Administrador> lista = new ArrayList<Administrador>();
        String sql = "SELECT * FROM administrador, endereco WHERE idadministrador=(?)";
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
                administrador.setNomeA(rs.getString("nome"));
                administrador.setDataNascimentoA(rs.getDate("dataNascimento"));
                administrador.setSexoA(rs.getString("sexo"));
                administrador.setEmailA(rs.getString("email"));
                administrador.setMaeA(rs.getString("mae"));
                administrador.setCpfA(rs.getString("cpf"));
                administrador.setTelefoneA(rs.getString("telefone"));

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
    
    public List<Administrador> listarAdminEndereco(Administrador administrador, Endereco endereco)
    {
        List<Administrador> lista = new ArrayList<Administrador>();
        String sql = "SELECT * FROM administrador, endereco WHERE idadministrador=(?)"
                + " and administrador.endereco_idendereco = endereco.idendereco;";
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
                administrador.setNomeA(rs.getString("nome"));
                administrador.setDataNascimentoA(rs.getDate("dataNascimento"));
                administrador.setSexoA(rs.getString("sexo"));
                administrador.setEmailA(rs.getString("email"));
                administrador.setMaeA(rs.getString("mae"));
                administrador.setCpfA(rs.getString("cpf"));
                endereco.setCidade(rs.getString("cidade"));
                endereco.setBairro(rs.getString("bairro"));
                endereco.setLogradouro(rs.getString("logradouro"));
                endereco.setUf(rs.getString("uf"));
                endereco.setNumero(rs.getString("numero"));

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
    
    public List<Usuario> listarUsuarioEndereco(Usuario usuario, Endereco endereco)
    {
        List<Usuario> lista = new ArrayList<Usuario>();
        String sql = "SELECT * FROM usuario, endereco WHERE idcliente=(?)"
                + " and usuario.endereco_idendereco = endereco.idendereco;";
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
                usuario.setNome(rs.getString("nome"));
                usuario.setDataNascimento(rs.getDate("dataNascimento"));
                usuario.setSexo(rs.getString("sexo"));
                usuario.setEmail(rs.getString("email"));
                usuario.setMae(rs.getString("mae"));
                usuario.setCpf(rs.getString("cpf"));
                endereco.setCidade(rs.getString("cidade"));
                endereco.setBairro(rs.getString("bairro"));
                endereco.setLogradouro(rs.getString("logradouro"));
                endereco.setUf(rs.getString("uf"));
                endereco.setNumero(rs.getString("numero"));

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
    
    public List<Usuario> listarUsuario()
    {
        List<Usuario> lista = new ArrayList<Usuario>();
        String sql = "SELECT * FROM USUARIO ORDER BY NOME ASC;";
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            
            rs = pstmt.executeQuery();
            while(rs.next())
            {   
                
                Usuario usuario = new Usuario();
                
                usuario.setIdcliente(rs.getInt("idcliente"));
                usuario.setNome(rs.getString("nome"));
                usuario.setDataNascimento(rs.getDate("dataNascimento"));
                usuario.setSexo(rs.getString("sexo"));
                usuario.setEmail(rs.getString("email"));
                usuario.setMae(rs.getString("mae"));
                usuario.setCpf(rs.getString("cpf"));

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
    
    public List<Administrador> listarAdministrador()
    {
        List<Administrador> lista = new ArrayList<Administrador>();
        String sql = "SELECT * FROM ADMINISTRADOR ORDER BY NOME ASC;";
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            
            rs = pstmt.executeQuery();
            while(rs.next())
            {   
                
                Administrador administrador = new Administrador();
                
                administrador.setIdadministrador(rs.getInt("idadministrador"));
                administrador.setNomeA(rs.getString("nome"));
                administrador.setDataNascimentoA(rs.getDate("dataNascimento"));
                administrador.setSexoA(rs.getString("sexo"));
                administrador.setEmailA(rs.getString("email"));
                administrador.setMaeA(rs.getString("mae"));
                administrador.setCpfA(rs.getString("cpf"));
                
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
    
    public void inserirAdministrador(Administrador administrador)
        {
        String sql = "insert into ADMINISTRADOR "
                + "(NOME,DATANASCIMENTO,SEXO,EMAIL,MAE,TELEFONE,ENDERECO_IDENDERECO,ACESSO_LOGIN,PERFIL_IDPERFIL,CPF)"
                + " values (?,?,?,?,?,?,?,?,?,?); ";
        PreparedStatement pstmt;
        
        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, administrador.getNomeA());
            pstmt.setDate(2, administrador.getDataNascimentoA());
            pstmt.setString(3, administrador.getSexoA());
            pstmt.setString(4, administrador.getEmailA());
            pstmt.setString(5, administrador.getMaeA());
            pstmt.setString(6, administrador.getTelefoneA());
            pstmt.setInt(7, administrador.getEnderecoA().getIdEndereco());
            pstmt.setString(8, administrador.getAcessoA().getLogin());
            pstmt.setInt(9, administrador.getPerfilA().getIdPerfil());
            pstmt.setString(10, administrador.getCpfA());
            
            pstmt.execute();
        }
        catch(SQLException ex)
        {
            System.err.println("Ocorreu um erro em Inserir Administrador: \n"+ex);
        }
        
    }
        
   public void inserirUsuario(Usuario usuario)
        {
        String sql = "insert into USUARIO "
                + "(NOME,DATANASCIMENTO,SEXO,EMAIL,MAE,TELEFONE,ENDERECO_IDENDERECO,ACESSO_LOGIN,PERFIL_IDPERFIL,CPF)"
                + " values (?,?,?,?,?,?,?,?,?,?); ";
        PreparedStatement pstmt;
        
        try
        {
            con = conexao.abrirConexao();
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, usuario.getNome());
            pstmt.setDate(2, usuario.getDataNascimento());
            pstmt.setString(3, usuario.getSexo());
            pstmt.setString(4, usuario.getEmail());
            pstmt.setString(5, usuario.getMae());
            pstmt.setString(6, usuario.getTelefone());
            pstmt.setInt(7, usuario.getEndereco().getIdEndereco());
            pstmt.setString(8, usuario.getAcesso().getLogin());
            pstmt.setInt(9, usuario.getPerfil().getIdPerfil());
            pstmt.setString(10, usuario.getCpf());
            
            pstmt.execute();
        }
        catch(SQLException ex)
        {
            System.err.println("Ocorreu um erro em Inserir Usuário: \n"+ex);
        }
        
    }
    
}




