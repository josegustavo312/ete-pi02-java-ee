<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<form action="compraFuncoes.jsp?id=2" method="post">    
                
            <table>
                
            <tr>
            <td rowspan="3" align="center">
            <img src="img/notebook/Samsung300E4A.png">
            </td>
            <td colspan="2" height="30px">
            <font size="5"><b>
            Notebook Samsung 300E4A-BD1 com Intel Core i5-2450M, 4GB, 500GB,
            Gravador de DVD, HDMI, Wireless, Bluetooth, LED 14" e Windows 7 Home Premium. 
            <br/>
            <font color="red"><center>
            <b>Preço - R$: 1699,00</b>
            <center>
            </b></font>
            </td>
            
            </tr>
            
            <tr align="center">
                
              <td>
                    
                <b><font size="5">Cliente</font></b>
                    
                        <select name="txtIdCliente">
                            <%
                                UsuarioDAO usuario2 = new UsuarioDAO();
                            
                                List<Usuario> lista2 = usuario2.listarUsuario(); 
                                  
                                for (int i = 0; i < lista2.size(); i++){
                            %>
                            <option value="<%= lista2.get(i).getIdcliente()%>"><%= lista2.get(i).getNome()%></option>
                            <%
                                }
                            %>
                        </select>
                    
                
                    <b><font size="5">Quantidade</font><input type="number" size="3" maxlength="3" name="txtQuantidade" required/>
                    
                <input type="submit" value="Comprar"/>
                
                </td>
                
            </tr>
            
            </table>
            
       </form>