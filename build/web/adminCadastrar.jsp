<%-- 
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>

<%@page contentType="text/html" pageEncoding="iso-8859-1"%>

<%
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <title>SOFT F5 - Admnistrador Cadastrar</title>
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
                
             <font size="6"><b> Cadastro Administrador </b></font> <img src="img/icones/icon/login.png"> <br/><br/>
        
            <form action="usuarioFuncoes.jsp?id=2" method="post">
                
            <table border="1">
                
                <tr>
                    <td><b> Nome: </b></td>
                    <td><input type="text" size="60" maxlength="60" name="txtNomeA" required/></td>
                </tr>
                <tr>
                    <td><b> Data de Nascimento: </b></td>
                    <td><input type="date" size="12" name="txtDataNascimentoA" placeholder="DD-MM-AAAA" required/> </td>
                </tr>  
                <tr>
                    <td><b> Sexo: </b></td>
                        <td>    
                        <input type="radio" value="M" name="txtSexoA" required/><b> M </b>
                        <input type="radio" value="F" name="txtSexoA" required/><b> F </b>
                        </td>
                </tr>
                <tr>
                    <td><b> Email: </b></td>
                    <td><input type="email" size="45" maxlength="45" name="txtEmailA" required/></td>
                </tr>
                <tr>
                    <td><b> Nome da Mãe: </b></td>
                    <td><input type="text" size="60" maxlength="60" name="txtMaeA" required/></td>
                </tr>
                <tr>
                    <td><b> Telefone: </b></td>
                    <td><input type="text" size="30" maxlength="30" name="txtTelefoneA" placeholder="(XX) XXXX-XXXX" required/></td>
                </tr>
                <tr>
                    <td><b> CPF: </b></td>
                    <td><input type="text" size="14" maxlength="14" name="txtCpfA" placeholder="XXX.XXX.XXX-XX" required/></td>
                </tr>
                <tr>
                    <td><b>Login</b></td>
                    <td><input type="text" size="20" maxlength="20" name="txtLoginA" required/></td>
                </tr>
                <tr>
                    <td><b>Senha</b></td>
                    <td><input type="password" size="20" maxlength="20" name="txtSenhaA" required/></td>
                </tr>
                <tr>
                    <td><b> Cidade: </b></td>
                    <td><input type="text" size="25" maxlength="25" name="txtCidadeA" required/></td>
                </tr>
                <tr>
                    <td><b> UF: </b></td>
                    <td>
                        <select name="txtUfA" required>
                            <option value="PE">PE</option>
                            <option value="PB">PB</option>
                            <option value="BA">BA</option>
                            <option value="SP">SP</option>
                        </select>   
                    </td>
                </tr>
                <tr>
                    <td><b> Bairro: </b></td>
                    <td><input type="text" size="25" maxlength="25" name="txtBairroA" required/></td>
                </tr>
                <tr>
                    <td><b> Logradouro: </b></td>
                    <td><input type="text" size="35" maxlength="35" name="txtLogradouroA" required/></td>
                </tr>
                <tr>
                    <td><b> Número: </b></td>
                    <td><input type="text" size="10" maxlength="10" name="txtNumeroA" required/></td>
                </tr>
                
               <tr>
                    <td align="right" colspan="2"><input type="submit" value="Cadastrar" /><input type="reset" value="Limpar" /></td>
               </tr>
               
                </table>    
                    
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
