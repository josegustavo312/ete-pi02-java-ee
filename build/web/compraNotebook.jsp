<%--  
    Document   : index
    Created on : 20/08/2012, 19:51:17
    Author     : Gustavo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.swing.JOptionPane"%>

<%
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOFT F5 - Notebook's</title>
        <link href="CSS/estilo.css" rel="stylesheet" type="text/css" />
    </head>
    <body>

        <div id="container">
            
            <div id="topo">
               
                <center><img src="img/soft_logo.gif"></center>
                
            </div>

            <div id="menu">
       
                <%@include file="menuCompra.jsp" %>
                
            </div>

            <div id="conteudo"> 
        <%   
        int idNotebook = Integer.parseInt(request.getParameter("idNotebook"));
    
        switch (idNotebook){
        
        case 1:
            
        %>    
                
            <%@include file="idNotebook/notebook1.jsp" %>
            
        <%
        break;
            
        case 2:
        %>    
                
            <%@include file="idNotebook/notebook2.jsp" %>
            
        <%
        break;
        
        case 3:
        %> 
            <%@include file="idNotebook/notebook3.jsp" %>
        
        <%
        break;
            
        case 4:
         %> 
                <%@include file="idNotebook/notebook4.jsp" %>
        
        <%
        break;
            
        case 5:
         %> 
                <%@include file="idNotebook/notebook5.jsp" %>
        <%
        break;
            
        case 6:
         %> 
                <%@include file="idNotebook/notebook6.jsp" %>
        <%
        break;
            
        case 7:
         %> 
                
                <%@include file="idNotebook/notebook7.jsp" %>
        <%
        break;
            
        case 8:
         %> 
                
                <%@include file="idNotebook/notebook8.jsp" %>
                
        <%
        break;
            
        case 9:
         %> 
                
                <%@include file="idNotebook/notebook9.jsp" %>
                        
        <%
        break;
        
        default:
            JOptionPane.showMessageDialog(null, "Faça o Login para Comprar!");
            response.sendRedirect("login.jsp");
        }
        
        %>  
        
            <br/><br/><br/><br/><br/><br/><br/><br/><br/>
            
            <table>
                
            <tr>
                <td width="10%"><a href="compraNotebookTabela.jsp"><img src="img/voltar.png"></a></td>
            <tr>
            
            </table>    
        
            </div>
            
            <div id="rodape">
                
                &COPY; SOFT F5 - TODOS OS DIREITOS RESERVADOS
                
            </div>
            
        </div>

    </body>
</html>
