<%-- 
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOFT F5 - Atualizando A Sua Empresa</title>
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
                <img src="img/site_compra.png" align="center">
                
                <br/><br/>
                
                <table border="1">
                    
                    <tr>
                        <td colspan="3" bgcolor="#006"><center><b><font color="white"><center><font size="5">Notebook's em Destaques </font></center></font></b></center></td>
                    </tr> 
                    
                    <tr align="center"> 
                        <td>   
                            <a href="compraNotebook.jsp?idNotebook=0">
                            <img src="img/notebook/SonyVaioVPC.png"> <br/>
                            Notebook Sony Vaio VPC-EH40EB/W com Intel® Core™ i3-2370M, 4GB, 500GB,
                            Gravador de DVD, HDMI, Wireless, Bluetooth 3.0, Webcam, LED 15.5" e Windows 7
                            </a>
                            <br/><font color="red">
                            <b>Preço - R$: 1780,00</b>
                            </font><br/><br/>
                        </td>
                        
                        <td>
                            <a href="compraNotebook.jsp?idNotebook=0">
                            <img src="img/notebook/Positivo3D.png"> <br/>
                            Notebook Positivo Premium N9410 3D com Intel Core i5-2410M, 6GB, 750GB,
                            Gravador de DVD, Leitor de Cartões, HDMI, LED 14" e Windows 7 Home Premium
                            <br/><font color="red">
                            </a>
                            <b>Preço - R$: 1600,00</b>
                            </font>
                        </td>
                        
                        <td>
                            <a href="compraNotebook.jsp?idNotebook=0">
                            <img src="img/notebook/HP.png"> <br/>
                            Edição Especial Notebook HP Pavilion DM1-4190BR por HERCHCOVITCH; ALEXANDRE com 
                            AMD Vision Dual Core E-450, 4GB, 500GB, LED 11.6",Windows 7 Home Premium
                            <br/><font color="red">
                            </a>
                            <b>Preço - R$: 2780,00</b>
                            </font>
                        </td>
                        
                    </tr>
                    
                    </tr>
                    
                   </table>
                
                </center>
                
            </div>
            
            <div id="rodape">
                
                &COPY; SOFT F5 - TODOS OS DIREITOS RESERVADOS
                
            </div>
            
        </div>

    </body>
</html>
