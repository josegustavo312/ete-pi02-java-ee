<%-- 
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>


<%@page import="br.com.projeto.negocios.Produtos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.projeto.DAO.ProdutosDAO"%>

<%
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOFT F5 - Tabela dos Produtos</title>
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
                    
                    <img src="img/icones/tabela.png" height="30px" width="30px"> <font size="6"><b> Tabela dos Computadores </b></font> <br/><br/>

                    <table border="1px" bgcolor="white">

                        <tr bgcolor="#0460ad">
                            <td><font color="white"> Marca </font></td>
                            <td><font color="white"> Descrição </font></td>
                            <td><font color="white"> Valor </font></td>
                        </tr>

                        <%
                            ProdutosDAO produtosDAO = new ProdutosDAO();
                            
                            List<Produtos> lista = produtosDAO.listarProdutos();

                            for (int i = 0; i < lista.size(); i++) {
                                   
                        %>

                        <tr>
                            <td><% out.println(lista.get(i).getMarca()); %></td>
                            <td><% out.println(lista.get(i).getDescricao()); %></td>
                            <td><% out.println("R$: " + lista.get(i).getValor() + ",00"); %></td>
                        </tr>

                        <%

                            }

                        %>

                    </table>
                        
                        <br/><br/>
                        
                    <table>
                
                    <tr>
                    <td width="10%"><a href="produtosCadastrar.jsp"><img src="img/voltar.png"></a></td>
                    <tr>
            
                    </table> 

                </center>

            </div>

            <div id="rodape">

                &COPY; SOFT F5 - TODOS OS DIREITOS RESERVADOS

            </div>

        </div>

    </body>
</html>
