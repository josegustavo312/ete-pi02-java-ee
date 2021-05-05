<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<form action="compraFuncoes.jsp?id=3" method="post">    
                
            <table>
                
            <tr>
            <td rowspan="3" align="center">
                <img src="img/notebook/AsusX44C.png">
            </td>
            <td colspan="2" height="30px">
            <font size="5"><b>
            Notebook Asus X44C VX025O com Intel® Dual Core™, 2GB, 500GB, 
            Gravador de DVD, Leitor de Cartões, HDMI, Wireless, Webcam, LED 14” e Windows7.
            <br/>
            <font color="red"><center>
            <b>Preço - R$: 1450,00</b>
            <center>
            </b></font>
            </td>
            
            </tr>
            
            <tr align="center">
                
              <td>
                    
                <b><font size="5">Cliente</font></b>
                    
                        <select name="txtIdCliente">
                            <%
                                UsuarioDAO usuario3 = new UsuarioDAO();
                            
                                List<Usuario> lista3 = usuario3.listarUsuario(); 
                                  
                                for (int i = 0; i < lista3.size(); i++){
                            %>
                            <option value="<%= lista3.get(i).getIdcliente()%>"><%= lista3.get(i).getNome()%></option>
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