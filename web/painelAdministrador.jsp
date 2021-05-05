<%-- 
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

String login = (String) session.getAttribute("sessaoLogin");

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOFT F5 - Painel do Administrador</title>
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

            <div id="conteudo_admin"> 
                
                <table>   
                <tr>
                    <td> <a href="produtosCadastrar.jsp"> <img src="img/CadastrarComputadores.png"> </a> </td>
                    <td width="70%" align="right"><font size="6"><b>Bem vindo! <%= login %></b></td>
                </tr>
                <tr>
                    <td><a href="adminCadastrar.jsp"> <img src="img/CadastrarAdmin.png"> </a></td>
                </tr>
                <tr>
                    <td><a href="listaTabela.jsp"> <img src="img/ListarTabelas.png"> </a></td>
                </tr>
                <tr>
                    <td><a href="moduloAlterar.jsp"> <img src="img/modulo_alterar.png"> </a></td>
                </tr>
                <tr>
                    <td><a href="moduloExcluir.jsp"> <img src="img/modulo_excluir.png"> </a></td>
                </tr>
                <tr>
                    <td><a href="moduloRelatorio.jsp"> <img src="img/botao_relatorio.png"> </a></td>
                </tr>
                <tr>
                    <td> <a href="login.jsp"> <img src="img/sair.png"> </a> </td>
                </tr>
                </table>
                
            </div>
            
            <div id="rodape">
                
                &COPY; SOFT F5 - TODOS OS DIREITOS RESERVADOS
                
            </div>
            
        </div>

    </body>
</html>
