<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<form action="compraFuncoes.jsp?id=7" method="post">    
                
            <table>
                
            <tr>
            <td rowspan="3" align="center">
                <img src="img/notebook/AcerAspire2.png">
            </td>
            <td colspan="2" height="30px">
            <font size="5"><b>
            Notebook Acer Aspire AS5733-6604 com Intel® Core™ i3-370M,
            2GB, 320GB, Gravador de DVD, Leitor de Cartões, Wireless, Webcam, LCD 15.6” e Windows 7 
            <br/>
            <font color="red"><center>
            <b>Preço - R$: 1400,00</b>
            <center>
            </b></font>
            </td>
            
            </tr>
            
            <tr align="center">
                
              <td>
                    
                <b><font size="5">Cliente</font></b>
                    
                        <select name="txtIdCliente">
                            <%
                                UsuarioDAO usuario7 = new UsuarioDAO();
                            
                                List<Usuario> lista7 = usuario7.listarUsuario(); 
                                  
                                for (int i = 0; i < lista7.size(); i++){
                            %>
                            <option value="<%= lista7.get(i).getIdcliente()%>"><%= lista7.get(i).getNome()%></option>
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