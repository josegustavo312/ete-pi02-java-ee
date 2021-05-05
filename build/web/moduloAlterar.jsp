<%-- 
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>

<%@page import="br.com.projeto.negocios.Produtos"%>
<%@page import="br.com.projeto.negocios.Administrador"%>
<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page import="br.com.projeto.DAO.ProdutosDAO"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>

<%
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOFT F5 - Módulo Alterar</title>
        <link href="CSS/estilo.css" rel="stylesheet" type="text/css" />
    </head>
    <body>

        <div id="container">
            
            <div id="topo">
               
                <center><img src="img/soft_logo.gif"></center>
                
            </div>

            <div id="menu">
                
                <%@include file="menu.jsp" %>
                
            </div>

            <div id="conteudo"> 
                
            <center>
                
            <img src="img/icones/icon/alterar.png"><font size="7"><b> Painel Alterar </b></font><br/><br/>       
                
            <font size="6"><b> Alterar Usuário </b></font> <img src="img/icones/usuarios.png">    
                
            <form action="funcoesAlterar.jsp?id=1" method="post">
                
             <table border="1">
               <tr>
                    <td colspan="4" bgcolor="#006"><center><b><font color="white"> Painel Usuário </font></b></center></td>
               </tr> 
               
               <td width="35%"> 
                    
                    <center><b><font size="5">Usuário</font></b></center>
                    
                </td>
                 <td>
                        <select name="txtIdCliente">
                            <%
                                UsuarioDAO usuario = new UsuarioDAO();
                            
                                List<Usuario> lista = usuario.listarUsuario(); 
                                  
                                for (int i = 0; i < lista.size(); i++){
                            %>
                            <option value="<%= lista.get(i).getIdcliente()%>"><%= lista.get(i).getNome()%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                    <td align="right" colspan="2"><input type="submit" value="Alterar" /></td>
               </tr>
               
               </table>
                        
               </form>
                        
               <br/>
               
               <font size="6"><b> Alterar Administrador </b></font> <img src="img/icones/icon/login.png">
               
              <form action="funcoesAlterarA.jsp?id=1" method="post">
                
              <table border="1">
               <tr>
                    <td colspan="4" bgcolor="#006"><center><b><font color="white"> Painel Administrador </font></b></center></td>
               </tr> 
               
               <td width="35%"> 
                    
                    <center><b><font size="5">Administrador</font></b></center>
                    
                </td> 
                 
                 <td>
                        <select name="txtIdAdministrador">
                            <%
                                UsuarioDAO usuarioA = new UsuarioDAO();
                            
                                List<Administrador> listaA = usuarioA.listarAdministrador(); 
                                  
                                for (int i = 0; i < listaA.size(); i++){
                            %>
                            <option value="<%= listaA.get(i).getIdadministrador()%>"><%= listaA.get(i).getNomeA()%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                    <td align="right" colspan="2"><input type="submit" value="Alterar" /></td>
               </tr>
               
               </table>
                        
               </form>
                        
               <br/>
               
               <font size="6"><b> Alterar Computador </b></font> <img src="img/icones/icon/notebook.png"> <br/>
               
               <form action="funcoesAlterarP.jsp?id=1" method="post">
                
              <table border="1">
               <tr>
                    <td colspan="4" bgcolor="#006"><center><b><font color="white"> Painel Produto </font></b></center></td>
               </tr> 
               
               <td width="35%"> 
                    
                    <center><b><font size="5">Produto</font></b></center>
                    
                </td>
                 
                 <td>
                        <select name="txtIdProduto">
                            <%
                                ProdutosDAO produtosDAO = new ProdutosDAO();
                            
                                List<Produtos> listaP = produtosDAO.listarProdutos(); 
                                  
                                for (int i = 0; i < listaA.size(); i++){
                            %>
                            <option value="<%= listaP.get(i).getIdproduto()%>"><%= listaP.get(i).getMarca()%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                    <td align="right" colspan="2"><input type="submit" value="Alterar" /></td>
               </tr>
               
               </table>
                        
               </form>         
                        
                <br/><br/>
                        
               <table>
                
                    <tr>
                    <td width="10%"><a href="painelAdministrador.jsp"><img src="img/voltar.png"></a></td>
                    <tr>
            
                </table>          
                
            </div>
            
            <div id="rodape">
                
                &COPY; SOFT F5 - TODOS OS DIREITOS RESERVADOS
                
            </div>
            
        </div>

    </body>
</html>
