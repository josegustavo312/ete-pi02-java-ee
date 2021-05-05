<%-- 
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>

<%@page import="br.com.projeto.negocios.Produtos"%>
<%@page import="br.com.projeto.DAO.ProdutosDAO"%>
<%@page import="br.com.projeto.negocios.Administrador"%>
<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOFT F5 - Módulo Excluir</title>
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
                    
                    <img src="img/icones/icon/remove.png"><font size="6"><b><u> PAINEL EXCLUIR </u></b></font><br/><br/> 
                
                <font size="6"><b> Alterar Usuário </b></font> <img src="img/icones/usuarios.png">    
                    
                <form action="funcoesExcluir.jsp?id=1" method="post">     
                
                <table border="1px">
                        
                    <tr>
                    <td colspan="3" bgcolor="#006"><center><b><font color="white">Excluir Usuário </font></b></center></td>
                    </tr>     
                    
                    <td width="35%"> 
                    
                    <center><b><font size="5">Usuário</font></b></center>
                    
                    </td>
                    
                    <td>
                        <center>
                        <select name="txtIdCliente">
                            <%
                                UsuarioDAO usuario1 = new UsuarioDAO();
                            
                                List<Usuario> lista1 = usuario1.listarUsuario(); 
                                  
                                for (int i = 0; i < lista1.size(); i++){
                            %>
                            <option value="<%= lista1.get(i).getIdcliente()%>"><%= lista1.get(i).getNome()%></option>
                            <%
                                }
                            %>
                        </select>
                        </center>
                        
                    </td>
                 
                <td>       
                <input type="submit" value="Excluir"/>
                </td>
                
                </table>
                        
                </form>
                        
                <br/> 
                
                <font size="6"><b> Alterar Administrador </b></font> <img src="img/icones/icon/login.png">
                        
                <form action="funcoesExcluir.jsp?id=2" method="post">     
                
                <table border="1px">
                        
                    <tr>
                    <td colspan="3" bgcolor="#006"><center><b><font color="white"> Excluir Administrador </font></b></center></td>
                    </tr>     
                    
                    <td width="35%"> 
                    
                    <center><b><font size="5">Administrador</font></b></center>
                    
                    </td>
                    
                    <td>
                        <center>
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
                        </center>
                        
                    </td>
                    
                <td>       
                <input type="submit" value="Excluir"/>
                </td>
                
                </table>
                        
                </form>
                 
                <br/>
                
                <font size="6"><b> Excluir Computador </b></font> <img src="img/icones/icon/notebook.png">
                        
                <form action="funcoesExcluir.jsp?id=3" method="post">     
                
                <table border="1px">
                        
                    <tr>
                    <td colspan="3" bgcolor="#006"><center><b><font color="white"> Excluir Produto </font></b></center></td>
                    </tr>     
                    
                    <td width="35%"> 
                    
                    <center><b><font size="5">Produto</font></b></center>
                    
                    </td>
                    
                    <td>
                        <center>
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
                        </center>
                        
                    </td>
                 
                <td>       
                <input type="submit" value="Excluir"/>
                </td>
                
                </table> 
                        
                </form> 
                
                </center>
                        
                <br/>
                        
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
