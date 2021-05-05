<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<form action="compraFuncoes.jsp?id=6" method="post">    
                
            <table>
                
            <tr>
            <td rowspan="3" align="center">
                <img src="img/notebook/Apple.png">
            </td>
            <td colspan="2" height="30px">
            <font size="5"><b>
            MacBook Pro Apple MD311BZ/A com Intel Core i7, 4GB, 750GB, Gravador de DVD,
            Thunderbolt, Wi-Fi, AMD Radeon HD 6770M, LED 17" e Mac OS X Lion + iLife  
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
                                UsuarioDAO usuario6 = new UsuarioDAO();
                            
                                List<Usuario> lista6 = usuario6.listarUsuario(); 
                                  
                                for (int i = 0; i < lista6.size(); i++){
                            %>
                            <option value="<%= lista6.get(i).getIdcliente()%>"><%= lista6.get(i).getNome()%></option>
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