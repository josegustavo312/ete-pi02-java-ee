<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<form action="compraFuncoes.jsp?id=9" method="post">    
                
            <table>
                
            <tr>
            <td rowspan="3" align="center">
                <img src="img/notebook/Positivo3D.png">
            </td>
            <td colspan="2" height="30px">
            <font size="5"><b>
            Notebook Positivo Premium N9410 3D com Intel Core i5-2410M, 
            6GB, 750GB, Gravador de DVD, Leitor de Cartões, HDMI, LED 14" e Windows 7 Home Premium.
            <br/>
            <font color="red"><center>
            <b>Preço - R$: 1600,00</b>
            <center>
            </b></font>
            </td>
            
            </tr>
            
            <tr align="center">
                
              <td>
                    
                <b><font size="5">Cliente</font></b>
                    
                        <select name="txtIdCliente">
                            <%
                                UsuarioDAO usuario9 = new UsuarioDAO();
                            
                                List<Usuario> lista9 = usuario9.listarUsuario(); 
                                  
                                for (int i = 0; i < lista9.size(); i++){
                            %>
                            <option value="<%= lista9.get(i).getIdcliente()%>"><%= lista9.get(i).getNome()%></option>
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