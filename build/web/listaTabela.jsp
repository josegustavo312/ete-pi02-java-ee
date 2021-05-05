<%-- 
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>

<%@page import="br.com.projeto.DAO.PerfilDAO"%>
<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="br.com.projeto.negocios.Produtos"%>
<%@page import="br.com.projeto.DAO.ProdutosDAO"%>
<%@page import="br.com.projeto.negocios.Perfil"%>
<%@page import="br.com.projeto.negocios.Administrador"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.negocios.Acesso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.projeto.DAO.AcessoDAO"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>

<%
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOFT F5 - Atualizando A Sua Empresa</title>
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
                    
                    </table>
                    
                    <font size="6"><b> Usuários </b></font> <img src="img/icones/usuarios.png">    
                    
                    <table border="1px">
                        
                    <tr>
                    <td colspan="6" bgcolor="#006"><center><b><font color="white"> Usuários </font></b></center></td>
                    </tr> 
                    
                    <tr bgcolor="#0460ad">
                            <td align="center"><font color="white"> CPF </font></td>
                            <td align="center"><font color="white"> Nome </font></td>
                            <td align="center"><font color="white"> Data de Nascimento </font></td>
                            <td align="center"><font color="white"> Sexo </font></td>
                            <td align="center"><font color="white"> Mãe </font></td>
                    </tr>   
                    
                     <%
                            UsuarioDAO usuarioC = new UsuarioDAO();
                            
                            List<Usuario> listaC = usuarioC.listarUsuario();

                            for (int i = 0; i < listaC.size(); i++) {
                                   
                      %>

                        <tr>
                            <td align="center"><% out.println(listaC.get(i).getCpf()); %></td>
                            <td><% out.println(listaC.get(i).getNome()); %></td>
                            <td align="center"><% out.println(listaC.get(i).getDataNascimento()); %></td>
                            <td align="center"><% out.println(listaC.get(i).getSexo()); %></td>
                            <td><% out.println(listaC.get(i).getMae()); %></td>
                        </tr>

                        <%

                            }

                        %>

                    </table>
                    
                    <br/>
                    
                    <font size="6"><b> Notebook's </b></font> <img src="img/icones/icon/notebook.png"> <br/>
                    
                    <table border="1px">
                        
                    <tr>
                    <td colspan="4" bgcolor="#006"><center><b><font color="white"> Produtos </font></b></center></td>
                    </tr> 
                    
                    <tr bgcolor="#0460ad">
                            <td align="center"><font color="white"> Código </font></td>
                            <td align="center"><font color="white"> Marca </font></td>
                            <td align="center"><font color="white"> Descrição </font></td>
                            <td align="center"><font color="white"> Valor </font></td>
                    </tr>   
                    
                     <%
                            ProdutosDAO produtosDAO = new ProdutosDAO();
                            
                            List<Produtos> listaP = produtosDAO.listarProdutos();

                            for (int i = 0; i < listaP.size(); i++) {
                                   
                        %>

                        <tr>
                            <td align="center"><% out.println(listaP.get(i).getIdproduto()); %></td>
                            <td><% out.println(listaP.get(i).getMarca()); %></td>
                            <td><% out.println(listaP.get(i).getDescricao()); %></td>
                            <td><% out.println("R$: " + listaP.get(i).getValor() + ",00"); %></td>
                        </tr>

                        <%

                            }

                        %>

                    </table>
                        
                    <br/>
                        
               <table>
                
                    <tr>
                    <td width="10%"><a href="painelAdministrador.jsp"><img src="img/voltar.png"></a></td>
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
