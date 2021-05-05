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
                Administrador administrador  = new Administrador();
                Endereco endereco = new Endereco();
                Acesso acesso = new Acesso();
                
                FormataData fd = new FormataData();
                
                int id = Integer.parseInt(request.getParameter("id"));
                int idAdministrador = Integer.parseInt(request.getParameter("txtIdAdministrador"));
                
                switch (id){
                case 1:
                    //Alterar Administrador
                    session.setAttribute("sessaoidAdministrador", idAdministrador);
                    response.sendRedirect("moduloAlterarAdmin.jsp");
                    
                break;                                       
                
                case 2:
                // Alterar Administrador Dados
                int idAdministrador2 = idAdministrador;
                String nome = request.getParameter("txtNome");
                Date dataNascimento = fd.convertDataString(request.getParameter("txtDataNascimento"));
                String sexo = request.getParameter("txtSexo");
                String email = request.getParameter("txtEmail");
                String mae = request.getParameter("txtMae");
                String telefone = request.getParameter("txtTelefone");
                String cpf = request.getParameter("txtCpf");
                
                administrador.setIdadministrador(idAdministrador2);
                administrador.setNomeA(nome);
                administrador.setDataNascimentoA(dataNascimento);
                administrador.setSexoA(sexo);
                administrador.setEmailA(email);
                administrador.setMaeA(mae);
                administrador.setTelefoneA(telefone);
                administrador.setCpfA(cpf);
                
                usuarioDAO.atualizarAdministrador(administrador); 
                
                response.sendRedirect("moduloAlterar.jsp");
        
                JOptionPane.showMessageDialog(null, "Alteração Realizada com Sucesso");
                    
                break;    
                
                case 3:
                 // Alterar Administrador Cidade
                 int idAdministrador3 = idAdministrador;
                 String cidade = request.getParameter("txtCidade");
                 String uf = request.getParameter("txtUf");
                 String bairro = request.getParameter("txtBairro");
                 String logradouro = request.getParameter("txtLogradouro");
                 String numero = request.getParameter("txtNumero");
                 
                 administrador.setIdadministrador(idAdministrador3);
                 endereco.setCidade(cidade);
                 endereco.setUf(uf);
                 endereco.setBairro(bairro);
                 endereco.setLogradouro(logradouro);
                 endereco.setNumero(numero);
                 
                 enderecoDAO.atualizarEnderecoAdmin(endereco, administrador);

                 response.sendRedirect("moduloAlterar.jsp");
        
                 JOptionPane.showMessageDialog(null, "Alteração Realizada com Sucesso");
                    
                break;
                
                case 4:
                 // Alterar Administrador Senha
                 int idAdministrador4 = idAdministrador;
                 String senha = request.getParameter("txtSenha");
                 
                 administrador.setIdadministrador(idAdministrador4);
                 acesso.setSenha(senha);
                 
                 acessoDAO.atualizarAcessoAdmin(administrador, acesso);

                 response.sendRedirect("moduloAlterar.jsp");
        
                 JOptionPane.showMessageDialog(null, "Alteração Realizada com Sucesso");
                    
                break;
                
             }

%>
