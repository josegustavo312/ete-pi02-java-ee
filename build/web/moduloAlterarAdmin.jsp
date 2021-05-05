<%-- 
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>

<%@page import="br.com.projeto.negocios.Administrador"%>
<%@page import="br.com.projeto.DAO.AcessoDAO"%>
<%@page import="br.com.projeto.negocios.Acesso"%>
<%@page import="br.com.projeto.negocios.Endereco"%>
<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>

<%
int idAdministradorS = (Integer) session.getAttribute("sessaoidAdministrador");
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
                
                <font size="6"><b><u> Painel Alterar Administrador </u></b></font> <img src="img/icones/icon/login.png"><br/><br/>    
                
                <font size="6"><b> Alterar Senha </b></font> <img src="img/icones/icon/logoff.png">
                <table border="1px">
                        
                    <tr>
                    <td colspan="6" bgcolor="#006" width="72%"><center><b><font color="white"> Administrador Login e Senha </font></b></center></td>
                    </tr> 
                    
                    <tr bgcolor="#0460ad">
                            <td align="center"><font color="white"> Login </font></td>
                            <td align="center"><font color="white"> Senha </font></td>
                    </tr>   
                    
                     <%
                            AcessoDAO acessoDAO = new AcessoDAO();
                            Administrador administradorL = new Administrador();
                            Acesso acesso = new Acesso();
                            
                            administradorL.setIdadministrador(idAdministradorS);
                            
                            acessoDAO.listarAcessoAdmin(administradorL, acesso);
                                   
                      %>

                        <tr>
                            <td align="center"><% out.println(acesso.getLogin()); %></td>
                            <td align="center"><% out.println(acesso.getSenha()); %></td>
                        </tr>

                </table>
                        
               <br/>         
                
              <form action="funcoesAlterarA.jsp?id=4" method="post">              
              
              <table border="1">
                <tr>
                    <td bgcolor="#006" width="40%"><b><font color="white"><center> Administrador </center></font></b></td>
                    <td bgcolor="white"> 
                        <select name="txtIdAdministrador">
                            <%  
                                UsuarioDAO usuarioDAO = new UsuarioDAO();
                                Administrador administrador = new Administrador();
                               
                                administrador.setIdadministrador(idAdministradorS);    
                                
                                List<Administrador> listaA = usuarioDAO.listarAdminID(administrador);
                            %>
                            <option value="<%= listaA.get(idAdministradorS).getIdadministrador()%>"><%= listaA.get(idAdministradorS).getNomeA()%></option>
                            
                        </select>
                            
                    </td> 
                </tr>  
                  
                <tr>
                    <td><b>Senha</b></td>
                    <td><input type="password" size="20" maxlength="20" name="txtSenha"/></td>
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
                    <td colspan="6" bgcolor="#006"><center><b><font color="white"> Administrador Endereço </font></b></center></td>
                    </tr> 
                    
                    <tr bgcolor="#0460ad">
                            <td align="center"><font color="white"> Cidade </font></td>
                            <td align="center"><font color="white"> Bairro </font></td>
                            <td align="center"><font color="white"> Logradouro </font></td>
                            <td align="center"><font color="white"> Numero </font></td>
                    </tr>   
                    
                     <%
                            UsuarioDAO usuarioDAOE = new UsuarioDAO();
                            Endereco enderecoE = new Endereco();
                            
                            administrador.setIdadministrador(idAdministradorS);
                            
                            usuarioDAOE.listarAdminEndereco(administrador, enderecoE);
                                   
                      %>

                        <tr>
                            <td align="center"><% out.println(enderecoE.getCidade()); %></td>
                            <td><% out.println(enderecoE.getBairro()); %></td>
                            <td align="center"><% out.println(enderecoE.getLogradouro()); %></td>
                            <td align="center"><% out.println(enderecoE.getNumero()); %></td>
                        </tr>

                </table> 
                        
                <br/>        
               
               <form action="funcoesAlterarA.jsp?id=3" method="post">         
                        
                <table border="1">
                <tr>
                    <td bgcolor="#006" width="40%"><b><font color="white"><center> Administrador </center></font></b></td>
                    <td bgcolor="white"> 
                        <select name="txtIdAdministrador">
                            <%  
                                administrador.setIdadministrador(idAdministradorS);    
                                
                                List<Administrador> listaDE = usuarioDAO.listarAdminID(administrador);
                            %>
                            <option value="<%= listaDE.get(idAdministradorS).getIdadministrador()%>"><%= listaDE.get(idAdministradorS).getNomeA()%></option>
                           
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
                        <select name="txtUf">
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
                    <td colspan="6" bgcolor="#006"><center><b><font color="white"> Administrador Dados </font></b></center></td>
                    </tr> 
                    
                    <tr bgcolor="#0460ad">
                            <td align="center"><font color="white"> CPF </font></td>
                            <td align="center"><font color="white"> Nome </font></td>
                            <td align="center"><font color="white"> E-mail </font></td>
                            <td align="center"><font color="white"> Telefone </font></td>
                    </tr>   
                    
                     <%
                            administrador.setIdadministrador(idAdministradorS);
                            
                            List<Administrador> listaD = usuarioDAO.listarAdminID(administrador);
                                   
                      %>

                        <tr>
                            <td align="center"><%out.println(listaD.get(idAdministradorS).getCpfA()); %></td>
                            <td><% out.println(listaD.get(idAdministradorS).getNomeA()); %></td>
                            <td align="center"><% out.println(listaD.get(idAdministradorS).getEmailA()); %></td>
                            <td align="center"><% out.println(listaD.get(idAdministradorS).getTelefoneA()); %></td>
                        </tr>

             </table> 
                        
             <br/>           
                
            <form action="funcoesAlterarA.jsp?id=2" method="post">
                
             <table border="1">
               <tr>
                    <td bgcolor="#006"><b><font color="white"><center> Administrador </center></font></b></td>
                    <td bgcolor="white">
                        <select name="txtIdAdministrador">
                            <%  
                                administrador.setIdadministrador(idAdministradorS);    
                                
                                List<Administrador> listaDT = usuarioDAO.listarAdminID(administrador);
                            %>
                            <option value="<%= listaDT.get(idAdministradorS).getIdadministrador()%>"><%= listaDT.get(idAdministradorS).getNomeA()%></option>
                           
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
