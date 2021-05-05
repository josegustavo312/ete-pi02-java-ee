<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<form action="compraFuncoes.jsp?id=4" method="post">    
                
            <table>
                
            <tr>
            <td rowspan="3" align="center">
                <img src="img/notebook/AcerAspire.png">
            </td>
            <td colspan="2" height="30px">
            <font size="5"><b>
            Notebook Acer Aspire E1-531-2606 com Intel® Dual Core, 2GB, 320GB, 
            Gravador de DVD, Leitor de Cartões, HDMI, Wireless, Webcam, LED 15.6” e Windows 7.
            <br/>
            <font color="red"><center>
            <b>Preço - R$: 1299,00</b>
            <center>
            </b></font>
            </td>
            
            </tr>
            
            <tr align="center">
                
              <td>
                    
                <b><font size="5">Cliente</font></b>
                    
                        <select name="txtIdCliente">
                            <%
                                UsuarioDAO usuario4 = new UsuarioDAO();
                            
                                List<Usuario> lista4 = usuario4.listarUsuario(); 
                                  
                                for (int i = 0; i < lista4.size(); i++){
                            %>
                            <option value="<%= lista4.get(i).getIdcliente()%>"><%= lista4.get(i).getNome()%></option>
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