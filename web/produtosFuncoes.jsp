<%@page import="javax.swing.JOptionPane"%>
<%@page import="br.com.projeto.DAO.ProdutosDAO"%>
<%@page import="br.com.projeto.negocios.Produtos"%>

<%@page contentType="text/html" pageEncoding="iso-8859-1"%>

<%
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <title>JSP Page</title>
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
                
<%
    ProdutosDAO produtoDAO = new ProdutosDAO();
    
            String marca = request.getParameter("txtMarca");
            String descricao = request.getParameter("txtDescricao");
            int valor = Integer.parseInt(request.getParameter("txtValor"));
                        
            Produtos produto = new Produtos();
            
            produto.setMarca(marca);
            produto.setDescricao(descricao);
            produto.setValor(valor);
            
            produtoDAO.inserirProdutos(produto);
            
            response.sendRedirect("produtosTabela.jsp");
            
            JOptionPane.showMessageDialog(null, "Cadastrado Realizado com Sucesso");
%>
                <br/>
                <center><a href="index.jsp">Página Inicial</a></center>

            </div>
            
            <div id="rodape">
                
                &COPY; SOFT F5 - TODOS OS DIREITOS RESERVADOS
                
            </div>
            
        </div>

    </body>
</html>
