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
        <title>SOFT F5 - Módulo Relatório</title>
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
                    
                <img src="img/icones/icon/relatorio.png"><font size="6"><b> Painel Relatório </b></font><br/><br/> 
                
                <font size="6"><b> Usuários </b></font> <img src="img/icones/usuarios.png">    
                    
                <form action="RelatorioCliente" method="post">     
                
                <table border="1px">
                        
                    <tr>
                    <td colspan="3" bgcolor="#006"><center><b><font color="white">Painel Usuário </font></b></center></td>
                    </tr>     
                    
                    <td width="35%"> 
                    
                    <center><b><font size="5">Relatório</font></b></center>
                    
                    </td>
                    
                <td align="">       
                <center><input type="submit" value="Gerar"/></center>
                </td>
                
                </table>
                    
                </form>    
                    
                <br/>   
                
                <font size="6"><b> Administrador </b></font> <img src="img/icones/icon/login.png">
                
                <form action="RelatorioAdmin" method="post">
                    
                <table border="1px">
                        
                    <tr>
                    <td colspan="3" bgcolor="#006"><center><b><font color="white">Painel Adminstrador </font></b></center></td>
                    </tr>     
                    
                    <td width="35%"> 
                    
                    <center><b><font size="5">Relatório</font></b></center>
                    
                    </td>
                    
                <td align="">       
                <center><input type="submit" value="Gerar"/></center>
                </td>
                
                </table>    
                        
                </form>
                
                <br/>   
                
                <font size="6"><b> Notebook's </b></font> <img src="img/icones/icon/notebook.png">
                
                <form action="RelatorioPC" method="post">
                    
                <table border="1px">
                        
                    <tr>
                    <td colspan="3" bgcolor="#006"><center><b><font color="white">Painel Notebook's  </font></b></center></td>
                    </tr>     
                    
                    <td width="35%"> 
                    
                    <center><b><font size="5">Relatório</font></b></center>
                    
                    </td>
                    
                <td align="">       
                <center><input type="submit" value="Gerar"/></center>
                </td>
                
                </table>    
                        
                </form> 
                
                </center>
                        
                <br/><br/><br/>
                        
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
