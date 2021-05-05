<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<form action="compraFuncoes.jsp?id=1" method="post">    
                
            <table>
                
            <tr>
            <td rowspan="3" align="center">
            <img src="img/notebook/SonyVaioVPC.png">
            </td>
            <td colspan="2" height="30px">
            <font size="5"><b>
            Notebook Sony Vaio VPC-EH40EB/W com Intel Core i3-2370M, 4GB, 500GB,
            Gravador de DVD, HDMI, Wireless, Bluetooth 3.0, Webcam, LED 15.5" e Windows 7.
            <br/>
            <font color="red"><center>
            <b>Preço - R$: 1780,00</b>
            <center>
            </b></font>
            </td>
            
            </tr>
            
            <tr align="center">
                
              <td> 
                  
                <b><font size="5">Cliente</font></b>
                    
                        <select name="txtIdCliente">
                            <%
                                UsuarioDAO usuario1 = new UsuarioDAO();
                            
                                List<Usuario> lista1 = usuario1.listarUsuario(); 
                                  
                                for (int i = 0; i < lista1.size(); i++){
                            %>
                            <option value="<%= lista1.get(i).getIdcliente()%>"><%= lista1.get(i).getNome()%></option>
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