<%-- 
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOFT F5 - Login</title>
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

            <div id="conteudo_login"> 
            <center>    
            <br/><br/><br/><br/> 
            <form action="painelFuncoes.jsp" method="post">
            <table border="0" cellpadding="0" cellspaging="0">
                <tr>
                <tr>
                    <td><b>Login</b></td>
                    <td><input type="text" size="20" maxlength="20" name="txtLogin" required /></td>
                </tr>
                <tr>
                    <td><b>Senha</b></td>
                    <td><input type="password" size="20" maxlength="20" name="txtSenha" required /></td>
                </tr>                
                <tr>
                    <td align="right" colspan="2"><input type="submit" value="Entrar" /><input type="reset" value="Limpar" /></td>
                </table>
                
                <br/>
                Ainda não é cadastrado?
                Cadastre seu Login <a href="usuarioCadastrar.jsp"> <font color="red">aqui.</font></a>
                
                </center>

            </div>
            
            <div id="rodape">
                
                &COPY; SOFT F5 - TODOS OS DIREITOS RESERVADOS
                
            </div>
            
        </div>

    </body>
</html>
