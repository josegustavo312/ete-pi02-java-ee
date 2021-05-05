<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<form action="compraFuncoes.jsp?id=8" method="post">    
                
            <table>
                
            <tr>
            <td rowspan="3" align="center">
                <img src="img/notebook/AsusX44C-VX028R.png">
            </td>
            <td colspan="2" height="30px">
            <font size="5"><b>
            Notebook Asus X44C-VX028R com Intel® Core™ i3-2330M,
            4GB, 640GB, Gravador de DVD, Leitor de Cartões, HDMI, USB 3.0, Wireless, LED 14" e Windows 7.
            <br/>
            <font color="red"><center>
            <b>Preço - R$: 2500,00</b>
            <center>
            </b></font>
            </td>
            
            </tr>
            
            <tr align="center">
                
              <td>
                    
                <b><font size="5">Cliente</font></b>
                    
                        <select name="txtIdCliente">
                            <%
                                UsuarioDAO usuario8 = new UsuarioDAO();
                            
                                List<Usuario> lista8 = usuario8.listarUsuario(); 
                                  
                                for (int i = 0; i < lista8.size(); i++){
                            %>
                            <option value="<%= lista8.get(i).getIdcliente()%>"><%= lista8.get(i).getNome()%></option>
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