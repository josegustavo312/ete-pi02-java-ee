<%-- 
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>

<%@page import="br.com.projeto.negocios.Produtos"%>
<%@page import="br.com.projeto.DAO.ProdutosDAO"%>
<%@page import="br.com.projeto.DAO.AcessoDAO"%>
<%@page import="br.com.projeto.negocios.Acesso"%>
<%@page import="br.com.projeto.negocios.Endereco"%>
<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>

<%
int idProdutoP = (Integer) session.getAttribute("sessaoidProduto");
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
                
                <font size="6"><b><u> Painel Alterar Produto </u></b></font> <img src="img/icones/icon/notebook.png"><br/><br/>    
                
                <table border="1px">
                        
                    <tr>
                    <td colspan="6" bgcolor="#006" width="72%"><center><b><font color="white"> Computador </font></b></center></td>
                    </tr> 
                    
                    <tr bgcolor="#0460ad">
                            <td align="center"><font color="white"> Marca </font></td>
                            <td align="center"><font color="white"> Descrição </font></td>
                            <td align="center"><font color="white"> Valor </font></td>
                    </tr>   
                    
                     <%
                            ProdutosDAO produtosDAO = new ProdutosDAO();
                            
                            Produtos produtos = new Produtos();
                            
                            produtos.setIdproduto(idProdutoP);
                            
                            List<Produtos> lista = produtosDAO.listarProdutosID(produtos);
                                   
                      %>

                        <tr>
                            <td align="center"><% out.println(lista.get(idProdutoP).getMarca()); %></td>
                            <td align="center"><% out.println(lista.get(idProdutoP).getDescricao()); %></td>
                            <td align="center"><% out.println("R$: " + lista.get(idProdutoP).getValor() + ",00"); %></td>
                        </tr>

                </table>
                        
               <br/>         
                
              <form action="funcoesAlterarP.jsp?id=2" method="post">              
              
              <table border="1">
                  <tr>
                    <td bgcolor="#006"><b><font color="white"><center> Notebook </center></font></b></td>
                    <td bgcolor="white">
                        <select name="txtIdProduto">
                            <%  
                                produtos.setIdproduto(idProdutoP);    
                                
                                List<Produtos> listaT = produtosDAO.listarProdutosID(produtos);
                            %>
                            <option value="<%= listaT.get(idProdutoP).getIdproduto()%>"><%= listaT.get(idProdutoP).getMarca()%></option>
                           
                        </select>
                    </td> 
                </tr>
                
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
                    <td align="right" colspan="2"><input type="submit" value="Alterar" /><input type="reset" value="Limpar" /></td>
               </tr>
               
                </table>
                        
               </form>
                            
                </center>
           
                <br/><br/><br/>
                        
               <table>
                
                    <tr>
                    <td width="10%"><a href="moduloAlterar.jsp"><img src="img/voltar.png"></a></td>
                    <tr>
            
                </table>          
                
            </div>
            
            <div id="rodape">
                
                &COPY; SOFT F5 - TODOS OS DIREITOS RESERVADOS
                
            </div>
            
        </div>

    </body>
</html>
