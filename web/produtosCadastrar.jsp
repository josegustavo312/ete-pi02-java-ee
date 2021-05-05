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
        <title>SOFT F5 - Cadastro de Produtos</title>
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
                
            <font size="6"><b> Cadastro de Computadores </b></font> <img src="img/icones/icon/notebook.png"> <br/><br/>
        
            <form action="produtosFuncoes.jsp" method="post">
            
                <table border="1">
                
                <tr>
                    <td><b> Marca: </b></td>
                    <td><input type="text" size="40" maxlength="40" name="txtMarca" placeholder="Marca e Referência" required /> </td>
                </tr>  
                <tr>
                    <td><b> Descrição: </b></td>
                        <td><input type="text" size="60" maxlength="60" name="txtDescricao" placeholder="Processador, Memória, HD" required /></td>
                </tr>
                <tr>
                    <td><b> Valor </b></td>
                    <td><b> RS: </b><input type="text" size="14" maxlength="14" name="txtValor" placeholder="xxxx" required /></td>
                </tr>
                
                <tr>
                    <td align="right" colspan="2"><input type="submit" value="Cadastrar" /><input type="reset" value="Limpar" /></td>
               </tr>
               
                </table>
                
                <br/>
                
                <a href="produtosTabela.jsp"><font size="5"><b> Tabela dos Computadores </b></font>  <img src="img/icones/tabela.png" height="30px" width="30px"></a>
                    
                </center>
                
                <br/><br/><br/><br/><br/>
                
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
