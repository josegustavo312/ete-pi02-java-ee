<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<form action="compraFuncoes.jsp?id=5" method="post">    
                
            <table>
                
            <tr>
            <td rowspan="3" align="center">
                <img src="img/notebook/HP.png">
            </td>
            <td colspan="2" height="30px">
            <font size="5"><b>
            Edição Especial Notebook HP Pavilion DM1-4190BR por HERCHCOVITCH; ALEXANDRE
            com AMD Vision Dual Core E-450, 4GB, 500GB, LED 11.6",Windows 7 Home Premium.
            <br/>
            <font color="red"><center>
            <b>Preço - R$: 2780,00</b>
            <center>
            </b></font>
            </td>
            
            </tr>
            
            <tr align="center">
                
              <td>
                    
                <b><font size="5">Cliente</font></b>
                    
                        <select name="txtIdCliente">
                            <%
                                UsuarioDAO usuario5 = new UsuarioDAO();
                            
                                List<Usuario> lista5 = usuario5.listarUsuario(); 
                                  
                                for (int i = 0; i < lista5.size(); i++){
                            %>
                            <option value="<%= lista5.get(i).getIdcliente()%>"><%= lista5.get(i).getNome()%></option>
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