<%-- 
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>

<%@page import="br.com.projeto.negocios.Administrador"%>
<%@page import="br.com.projeto.negocios.Acesso"%>
<%@page import="br.com.projeto.DAO.AcessoDAO"%>
<%@page import="br.com.projeto.DAO.EnderecoDAO"%>
<%@page import="br.com.projeto.negocios.Endereco"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.sql.Date"%>
<%@page import="br.com.projeto.utilitarios.FormataData"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.negocios.Perfil"%>
<%@page import="br.com.projeto.DAO.PerfilDAO"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>

<%

                UsuarioDAO usuarioDAO = new UsuarioDAO();
                EnderecoDAO enderecoDAO = new EnderecoDAO();
                AcessoDAO acessoDAO = new AcessoDAO();
                Usuario usuario = new Usuario();
                Endereco endereco = new Endereco();
                Acesso acesso = new Acesso();
                
                FormataData fd = new FormataData();
                
                int id = Integer.parseInt(request.getParameter("id"));
                int idCliente = Integer.parseInt (request.getParameter("txtIdCliente"));
                
                switch (id){
                case 1:
                    //Alterar Usuario
                    session.setAttribute("sessaoidCliente", idCliente);
                    response.sendRedirect("moduloAlterarUsuario.jsp");
                    
                break;                                       
                
                case 2:
                // Alterar usuário Dados
                int idCliente2 = idCliente;
                String nome = request.getParameter("txtNome");
                Date dataNascimento = fd.convertDataString(request.getParameter("txtDataNascimento"));
                String sexo = request.getParameter("txtSexo");
                String email = request.getParameter("txtEmail");
                String mae = request.getParameter("txtMae");
                String telefone = request.getParameter("txtTelefone");
                String cpf = request.getParameter("txtCpf");
                
                usuario.setIdcliente(idCliente2);
                usuario.setNome(nome);
                usuario.setDataNascimento(dataNascimento);
                usuario.setSexo(sexo);
                usuario.setEmail(email);
                usuario.setMae(mae);
                usuario.setTelefone(telefone);
                usuario.setCpf(cpf);
                
                usuarioDAO.atualizarUsuario(usuario); 
                
                response.sendRedirect("moduloAlterar.jsp");
        
                JOptionPane.showMessageDialog(null, "Alteração Realizada com Sucesso");
                    
                break;    
                
                case 3:
                 // Alterar usuário Cidade
                 int idCliente3 = idCliente;
                 String cidade = request.getParameter("txtCidade");
                 String uf = request.getParameter("txtUf");
                 String bairro = request.getParameter("txtBairro");
                 String logradouro = request.getParameter("txtLogradouro");
                 String numero = request.getParameter("txtNumero");
                 
                 usuario.setIdcliente(idCliente3);
                 endereco.setCidade(cidade);
                 endereco.setUf(uf);
                 endereco.setBairro(bairro);
                 endereco.setLogradouro(logradouro);
                 endereco.setNumero(numero);
                 
                 enderecoDAO.atualizarEndereco(endereco, usuario);

                 response.sendRedirect("moduloAlterar.jsp");
        
                 JOptionPane.showMessageDialog(null, "Alteração Realizada com Sucesso");
                    
                break;
                
                case 4:
                 // Alterar Usuário Senha
                 int idCliente4 = idCliente;
                 String senha = request.getParameter("txtSenha");
                 
                 usuario.setIdcliente(idCliente4);
                 acesso.setSenha(senha);
                 
                 acessoDAO.atualizarAcesso(usuario, acesso);

                 response.sendRedirect("moduloAlterar.jsp");
        
                 JOptionPane.showMessageDialog(null, "Alteração Realizada com Sucesso");
                    
                break;
                
             }

%>
