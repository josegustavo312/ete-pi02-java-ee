<%@page import="br.com.projeto.DAO.EnderecoDAO"%>
<%@page import="br.com.projeto.DAO.AcessoDAO"%>
<%@page import="javax.xml.crypto.Data"%>
<%@page import="br.com.projeto.negocios.Administrador"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Date"%>
<%@page import="br.com.projeto.utilitarios.FormataData"%>
<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="br.com.projeto.negocios.Acesso"%>
<%@page import="br.com.projeto.negocios.Endereco"%>
<%@page import="br.com.projeto.negocios.Perfil"%>

<%@page contentType="text/html" pageEncoding="iso-8859-1"%>

<%
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    UsuarioDAO usuarioDAO = new UsuarioDAO();
    AcessoDAO acessoDAO = new AcessoDAO();
    EnderecoDAO enderecoDAO = new EnderecoDAO();
    Endereco endereco = new Endereco();
    
    int id = Integer.parseInt(request.getParameter("id"));
       
    switch (id){
        
        case 1:
            
        String login = request.getParameter("txtLogin");
        String senha = request.getParameter("txtSenha");
        int idperfilC = 2;
        
        boolean flag = acessoDAO.existeLogin(login);
    
        if (flag == true)
        {
        JOptionPane.showMessageDialog(null, "Login já Cadastrado!");
        response.sendRedirect("usuarioCadastrar.jsp");
        }
        else
        {
            
        //Inserir Acesso    
        Perfil perfilC = new Perfil();
        Acesso objAcessoC = new Acesso(login, senha, perfilC);
        
        perfilC.setIdPerfil(idperfilC);
        acessoDAO.inserirAcesso(objAcessoC);
        
        //Inserir Endereco   
        String cidade = request.getParameter("txtCidade");
        String uf = request.getParameter("txtUf");
        String bairro = request.getParameter("txtBairro");
        String logradouro = request.getParameter("txtLogradouro");
        String numero = request.getParameter("txtNumero");
        
        endereco.setCidade(cidade);
        endereco.setUf(uf);
        endereco.setBairro(bairro);
        endereco.setLogradouro(logradouro);
        endereco.setNumero(numero);
        endereco.setIdEndereco(enderecoDAO.inserirEndereco(endereco)); //retorna a chave primária
        
        //Inserir Usuário
        Acesso acesso = new Acesso();
        Perfil perfil = new Perfil();
        
        FormataData fd = new FormataData();    
        
        String nome = request.getParameter("txtNome");
        Date dataNascimento = fd.convertDataString(request.getParameter("txtDataNascimento"));
        String sexo = request.getParameter("txtSexo");
        String email = request.getParameter("txtEmail");
        String mae = request.getParameter("txtMae");
        String telefone = request.getParameter("txtTelefone");
        String cpf = request.getParameter("txtCpf");
        String idAcesso = request.getParameter("txtLogin");
        
        int idPerfil = 2;
        
        Usuario usuario = new Usuario(nome, dataNascimento, sexo, email, mae, telefone, cpf, acesso, perfil, endereco);
        
        acesso.setLogin(idAcesso);
        perfil.setIdPerfil(idPerfil);
        
        usuarioDAO.inserirUsuario(usuario);  
        
        response.sendRedirect("usuarioCadastrar.jsp");
        
        JOptionPane.showMessageDialog(null, "Cadastrado Realizado com Sucesso"); 
        
        }
        
        break;
        
        case 2:
            
        String loginA = request.getParameter("txtLoginA");
        String senhaA = request.getParameter("txtSenhaA");
        int idperfilAD = 1;
        
        boolean flagA = acessoDAO.existeLogin(loginA);
    
        if (flagA == true)
        {
        JOptionPane.showMessageDialog(null, "Login já Cadastrado!");
        response.sendRedirect("adminCadastrar.jsp");
        }
        else
        {
            
        //Inserir Acesso    
        Perfil perfilAD = new Perfil();
        Acesso objAcessoA = new Acesso(loginA, senhaA, perfilAD);
        
        perfilAD.setIdPerfil(idperfilAD);
        acessoDAO.inserirAcesso(objAcessoA);

        //Inserir Endereco
        
        String cidade = request.getParameter("txtCidadeA");
        String uf = request.getParameter("txtUfA");
        String bairro = request.getParameter("txtBairroA");
        String logradouro = request.getParameter("txtLogradouroA");
        String numero = request.getParameter("txtNumeroA");
        
        endereco.setCidade(cidade);
        endereco.setUf(uf);
        endereco.setBairro(bairro);
        endereco.setLogradouro(logradouro);
        endereco.setNumero(numero);
        endereco.setIdEndereco(enderecoDAO.inserirEndereco(endereco)); //retorna a chave primária
        
        //Inserir Administrador    
        FormataData fdA = new FormataData();
        
        String nomeA = request.getParameter("txtNomeA");
        Date dataNascimentoA = fdA.convertDataString(request.getParameter("txtDataNascimentoA"));
        String sexoA = request.getParameter("txtSexoA");
        String emailA = request.getParameter("txtEmailA");
        String maeA = request.getParameter("txtMaeA");
        String telefoneA = request.getParameter("txtTelefoneA");
        String cpfA = request.getParameter("txtCpfA");
        String idAcessoA = request.getParameter("txtLoginA");
        int idPerfilA = 1;
        
        Acesso acessoA = new Acesso();
        Perfil perfilA = new Perfil();
        
        Administrador administrador = new Administrador(nomeA, dataNascimentoA, sexoA, emailA, maeA, telefoneA, cpfA, acessoA, perfilA, endereco);
        
        acessoA.setLogin(idAcessoA);
        perfilA.setIdPerfil(idPerfilA);
        
        usuarioDAO.inserirAdministrador(administrador);    
        
        response.sendRedirect("painelAdministrador.jsp");
        
        JOptionPane.showMessageDialog(null, "Cadastrado Realizado com Sucesso");

        }
            
        break;
        
        default:
            
            JOptionPane.showMessageDialog(null, "ERRO 404");
    }
%>
            </div>
            
            <div id="rodape">
                
                &COPY; SOFT F5 - TODOS OS DIREITOS RESERVADOS
                
            </div>
            
        </div>

    </body>
</html>