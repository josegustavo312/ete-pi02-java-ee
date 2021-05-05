<%-- 
    Document   : painelFuncoes
    Created on : 03/11/2012, 19:28:50
    Author     : GUSTAVO
--%>

<%@page import="br.com.projeto.negocios.Acesso"%>
<%@page import="br.com.projeto.DAO.AcessoDAO"%>
<%@page import="javax.swing.JOptionPane"%>
<%
    
     AcessoDAO acessoDAO = new AcessoDAO();

    String login = request.getParameter("txtLogin");
    String senha = request.getParameter("txtSenha");
    
    boolean flag = acessoDAO.existeAcesso(login, senha);
    
    if (flag == false)
    {
        JOptionPane.showMessageDialog(null, "Login ou Senha Inválidos!");
        response.sendRedirect("login.jsp");
    }
    else
    {
        Acesso acesso = acessoDAO.consultarAcesso(login, senha);
        session.setAttribute("sessaoAcesso", acesso);
        
        String perfil = acesso.getPerfilAC().getDescricaoPerfil();
        
        session.setAttribute("sessaoLogin", login);

        if (perfil.equalsIgnoreCase("ADMINISTRADOR"))
        {
            response.sendRedirect("painelAdministrador.jsp");
        }
        else if (perfil.equalsIgnoreCase("USUARIO"))
        {
            response.sendRedirect("painelUsuario.jsp");
        }
        else
        {
            JOptionPane.showMessageDialog(null, "Login ou senha inválidos!");
            response.sendRedirect("acesso.jsp");
        }
    }
    
%>