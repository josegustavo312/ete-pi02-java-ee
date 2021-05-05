<%-- 
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>

<%@page import="br.com.projeto.negocios.Produtos"%>
<%@page import="br.com.projeto.DAO.ProdutosDAO"%>
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

                ProdutosDAO produtosDAO = new ProdutosDAO();
                Produtos produtos = new Produtos();
                
                int id = Integer.parseInt(request.getParameter("id"));
                int idProduto = Integer.parseInt(request.getParameter("txtIdProduto"));
                
                switch (id){
                case 1:
                    //Alterar Administrador
                    session.setAttribute("sessaoidProduto", idProduto);
                    response.sendRedirect("moduloAlterarProduto.jsp");
                    
                break;                                       
                
                case 2:
                // Alterar Administrador Dados
                int idProduto2 = idProduto;
                String marca = request.getParameter("txtMarca");
                String descricao = request.getParameter("txtDescricao");
                int valor = Integer.parseInt(request.getParameter("txtValor"));
                
                produtos.setIdproduto(idProduto2);
                produtos.setMarca(marca);
                produtos.setDescricao(descricao);
                produtos.setValor(valor);
                
                produtosDAO.atualizarProduto(produtos); 
                
                response.sendRedirect("moduloAlterar.jsp");
        
                JOptionPane.showMessageDialog(null, "Alteração Realizada com Sucesso");
                    
                break;    
                
             }

%>
