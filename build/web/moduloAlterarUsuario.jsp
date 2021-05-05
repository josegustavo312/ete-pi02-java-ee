<%-- 
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>

<%@page import="br.com.projeto.DAO.AcessoDAO"%>
<%@page import="br.com.projeto.negocios.Acesso"%>
<%@page import="br.com.projeto.negocios.Endereco"%>
<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>

<%
int idClienteA = (Integer) session.getAttribute("sessaoidCliente");
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
                
                <font size="6"><b><u> Painel Alterar Usuário </u></b></font> <img src="img/icones/usuarios.png"><br/><br/>    
                
                <font size="6"><b> Alterar Senha </b></font> <img src="img/icones/icon/logoff.png">
                <table border="1px">
                        
                    <tr>
                    <td colspan="6" bgcolor="#006" width="72%"><center><b><font color="white"> Usuário Login e Senha </font></b></center></td>
                    </tr> 
                    
                    <tr bgcolor="#0460ad">
                            <td align="center"><font color="white"> Login </font></td>
                            <td align="center"><font color="white"> Senha </font></td>
                    </tr>   
                    
                     <%
                            AcessoDAO acessoDAO = new AcessoDAO();
                            Usuario usuarioL = new Usuario();
                            Acesso acesso = new Acesso();
                            
                            usuarioL.setIdcliente(idClienteA);
                            
                            acessoDAO.listarAcessoUsuario(usuarioL, acesso);
                                   
                      %>

                        <tr>
                            <td align="center"><% out.println(acesso.getLogin()); %></td>
                            <td align="center"><% out.println(acesso.getSenha()); %></td>
                        </tr>

                </table>
                        
               <br/>         
                
              <form action="funcoesAlterar.jsp?id=4" method="post">              
              
              <table border="1">
                <tr>
                    <td bgcolor="#006" width="40%"><b><font color="white"><center> Usuario </center></font></b></td>
                    <td bgcolor="white"> 
                        <select name="txtIdCliente">
                            <%  
                                UsuarioDAO usuarioDAO = new UsuarioDAO();
                                Usuario usuario = new Usuario();
                               
                                usuario.setIdcliente(idClienteA);    
                                
                                List<Usuario> listaA = usuarioDAO.listarUsuarioID(usuario);
                            %>
                            <option value="<%= listaA.get(idClienteA).getIdcliente()%>"><%= listaA.get(idClienteA).getNome()%></option>
                           
                        </select>
                    </td> 
                </tr>  
                  
                <tr>
                    <td><b>Senha</b></td>
                    <td><input type="password" size="20" maxlength="20" name="txtSenha" required/></td>
                </tr>
                
                <tr>
                    <td align="right" colspan="2"><input type="submit" value="Alterar" /><input type="reset" value="Limpar" /></td>
               </tr>
                
                </table>
                
                </form>
                
                <br/>
                
                <font size="6"><b> Alterar Endereco </b></font> <img src="img/icones/icon/home.png">  
               
               <table border="1px">
                        
                    <tr>
                    <td colspan="6" bgcolor="#006"><center><b><font color="white"> Usuário Endereço </font></b></center></td>
                    </tr> 
                    
                    <tr bgcolor="#0460ad">
                            <td align="center"><font color="white"> Cidade </font></td>
                            <td align="center"><font color="white"> Bairro </font></td>
                            <td align="center"><font color="white"> Logradouro </font></td>
                            <td align="center"><font color="white"> Numero </font></td>
                    </tr>   
                    
                     <%
                            UsuarioDAO usuarioDAOE = new UsuarioDAO();
                            Usuario usuarioE = new Usuario();
                            Endereco enderecoE = new Endereco();
                            
                            usuarioE.setIdcliente(idClienteA);
                            
                            usuarioDAOE.listarUsuarioEndereco(usuarioE, enderecoE);
                                   
                      %>

                        <tr>
                            <td align="center"><% out.println(enderecoE.getCidade()); %></td>
                            <td><% out.println(enderecoE.getBairro()); %></td>
                            <td align="center"><% out.println(enderecoE.getLogradouro()); %></td>
                            <td align="center"><% out.println(enderecoE.getNumero()); %></td>
                        </tr>

                </table> 
                        
                <br/>        
               
               <form action="funcoesAlterar.jsp?id=3" method="post">         
                        
                <table border="1">
                <tr>
                    <td bgcolor="#006" width="40%"><b><font color="white"><center> Usuario </center></font></b></td>
                    <td bgcolor="white"> 
                        <select name="txtIdCliente">
                            <%  
                                usuario.setIdcliente(idClienteA);    
                                
                                List<Usuario> listaDE = usuarioDAO.listarUsuarioID(usuario);
                            %>
                            <option value="<%= listaDE.get(idClienteA).getIdcliente()%>"><%= listaDE.get(idClienteA).getNome()%></option>
                           
                        </select>
                    </td> 
                </tr>    
                </tr> 
                <tr>
                    <td><b> Cidade: </b></td>
                    <td><input type="text" size="25" maxlength="25" name="txtCidade"/></td>
                </tr>
                <tr>
                    <td><b> UF: </b></td>
                    <td>
                        <select name="txtUf" required>
                            <option value="PE">PE</option>
                            <option value="PB">PB</option>
                            <option value="BA">BA</option>
                            <option value="SP">SP</option>
                        </select>   
                    </td>
                </tr>
                <tr>
                    <td><b> Bairro: </b></td>
                    <td><input type="text" size="25" maxlength="25" name="txtBairro"/></td>
                </tr>
                <tr>
                    <td><b> Logradouro: </b></td>
                    <td><input type="text" size="35" maxlength="35" name="txtLogradouro"/></td>
                </tr>
                <tr>
                    <td><b> Número: </b></td>
                    <td><input type="text" size="10" maxlength="10" name="txtNumero"/></td>
                </tr>
                
                <tr>
                    <td align="right" colspan="2"><input type="submit" value="Alterar" /><input type="reset" value="Limpar" /></td>
               </tr>
               
               </table>
                
               </form>
                            
               <br/>
               
               <font size="6"><b> Alterar Dados </b></font> <img src="img/icones/icon/folder.png"> 
               
               <table border="1px">
                        
                    <tr>
                    <td colspan="6" bgcolor="#006" width="90%"><center><b><font color="white"> Usuário Dados </font></b></center></td>
                    </tr> 
                    
                    <tr bgcolor="#0460ad">
                            <td align="center"><font color="white"> CPF </font></td>
                            <td align="center"><font color="white"> Nome </font></td>
                            <td align="center"><font color="white"> E-mail </font></td>
                            <td align="center"><font color="white"> Telefone </font></td>
                    </tr>   
                    
                     <%
                            usuario.setIdcliente(idClienteA);
                            
                            List<Usuario> listaD = usuarioDAO.listarUsuarioID(usuario);
                                   
                      %>

                        <tr>
                            <td align="center"><% out.println(listaD.get(idClienteA).getCpf()); %></td>
                            <td><% out.println(listaD.get(idClienteA).getNome()); %></td>
                            <td align="center"><% out.println(listaD.get(idClienteA).getEmail()); %></td>
                            <td align="center"><% out.println(listaD.get(idClienteA).getTelefone()); %></td>
                        </tr>

             </table> 
                        
             <br/>           
                
            <form action="funcoesAlterar.jsp?id=2" method="post">
                
             <table border="1">
               <tr>
                    <td bgcolor="#006"><b><font color="white"><center> Usuario </center></font></b></td>
                    <td bgcolor="white">
                        <select name="txtIdCliente">
                            <%  
                                usuario.setIdcliente(idClienteA);    
                                
                                List<Usuario> listaDT = usuarioDAO.listarUsuarioID(usuario);
                            %>
                            <option value="<%= listaDT.get(idClienteA).getIdcliente()%>"><%= listaDT.get(idClienteA).getNome()%></option>
                           
                        </select>
                    </td> 
                </tr>
                <tr>
                    <td><b> Nome: </b></td>
                    <td><input type="text" size="60" maxlength="60" name="txtNome"/></td>
                    
                </tr>
                <tr>
                    <td><b> Data de Nascimento: </b></td>
                    <td><input type="date" size="12" name="txtDataNascimento" placeholder="DD-MM-AAAA"/> </td>
                </tr>  
                <tr>
                    <td><b> Sexo: </b></td>
                        <td>    
                        <input type="radio" value="M" name="txtSexo"/><b> M </b>
                        <input type="radio" value="F" name="txtSexo"/><b> F </b>
                        </td>
                </tr>
                <tr>
                    <td><b> Email: </b></td>
                    <td><input type="email" size="45" maxlength="45" name="txtEmail"/></td>
                </tr>
                <tr>
                    <td><b> Nome da Mãe: </b></td>
                    <td><input type="text" size="60" maxlength="60" name="txtMae"/></td>
                </tr>
                <tr>
                    <td><b> Telefone: </b></td>
                    <td><input type="text" size="30" maxlength="30" name="txtTelefone" placeholder="(XX) XXXX-XXXX"/></td>
                </tr>
                <tr>
                    <td><b> CPF: </b></td>
                    <td><input type="text" size="14" maxlength="14" name="txtCpf" placeholder="XXX.XXX.XXX-XX"/></td>
                </tr>
                
                <tr>
                    <td align="right" colspan="2"><input type="submit" value="Alterar" /><input type="reset" value="Limpar" /></td>
               </tr>
               
               </table>
                        
               </form>
                            
                </center>
           
                <br/><br/>
                        
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
