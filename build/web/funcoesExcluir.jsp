<%-- 
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>

<%@page import="br.com.projeto.negocios.Produtos"%>
<%@page import="br.com.projeto.DAO.ProdutosDAO"%>
<%@page import="br.com.projeto.negocios.Administrador"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="br.com.projeto.DAO.VendaDAO"%>
<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.negocios.Perfil"%>
<%@page import="br.com.projeto.DAO.PerfilDAO"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
             
<%
                int id = Integer.parseInt(request.getParameter("id"));
                
                switch (id){
                case 1:
                // excluir usuário
                UsuarioDAO usuarioDAO = new UsuarioDAO();
                VendaDAO vendaDAO = new VendaDAO();
                Usuario usuario = new Usuario();
                
                int idCliente = Integer.parseInt(request.getParameter("txtIdCliente"));

                usuario.setIdcliente(idCliente);
                
                vendaDAO.excluirUsuarioVenda(usuario);
                    
                usuarioDAO.excluirUsuario(usuario);
                
                response.sendRedirect("moduloExcluir.jsp");
        
                JOptionPane.showMessageDialog(null, "Cliente Excluído com Sucesso");
                   
                break;    
                
                case 2:
                // excluir administrador
                UsuarioDAO usuarioA = new UsuarioDAO();
                Administrador administrador = new Administrador();
                
                int idAdministrador = Integer.parseInt(request.getParameter("txtIdAdministrador"));

                administrador.setIdadministrador(idAdministrador);
                    
                usuarioA.excluirAdministrador(administrador);
                
                response.sendRedirect("moduloExcluir.jsp");
        
                JOptionPane.showMessageDialog(null, "Administrador Excluído com Sucesso");    
                   
                break;
                
                case 3:
                // excluir produtos
                ProdutosDAO produtosDAO = new ProdutosDAO();
                Produtos produtos = new Produtos();
                
                int idProduto = Integer.parseInt(request.getParameter("txtIdProduto"));

                produtos.setIdproduto(idProduto);
                    
                produtosDAO.excluirProdutosItens(produtos);
                
                produtosDAO.excluirProdutos(produtos);
                
                response.sendRedirect("moduloExcluir.jsp");
        
                JOptionPane.showMessageDialog(null, "Produto Excluído com Sucesso");    
                   
                break;
                
            }
                
%>
