<%@page import="br.com.projeto.DAO.UsuarioDAO"%>
<%@page import="br.com.projeto.DAO.VendaDAO"%>
<%@page import="br.com.projeto.negocios.Itens"%>
<%@page import="br.com.projeto.negocios.Produtos"%>
<%@page import="javax.xml.crypto.Data"%>
<%@page import="br.com.projeto.negocios.Administrador"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.List"%>
<%@page import="br.com.projeto.utilitarios.FormataData"%>
<%@page import="br.com.projeto.DAO.ProdutosDAO"%>
<%@page import="br.com.projeto.negocios.Usuario"%>
<%@page import="br.com.projeto.negocios.Acesso"%>
<%@page import="br.com.projeto.negocios.Endereco"%>
<%@page import="br.com.projeto.negocios.Perfil"%>
<%@page import="br.com.projeto.negocios.Venda"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SOFT F5 - Nota Fiscal Digital</title>
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

            <div id="conteudo_nota"> 
                
<%
    int id = Integer.parseInt(request.getParameter("id"));
    Date dataVenda = new Date(System.currentTimeMillis());
    
    String quantS = request.getParameter("txtQuantidade");
    
    if (quantS == ("")){
    
        response.sendRedirect("compraNotebookTabela.jsp");
        JOptionPane.showMessageDialog(null, "O Campo Quantidade deve ser Preenchido");
        
    }
    
    else{
            //Inserir ITENS
            ProdutosDAO produtosDAO = new ProdutosDAO();
            
            int quantidade1 = Integer.parseInt(request.getParameter("txtQuantidade"));
            int idProduto1=id;
            
             Produtos produtos1 = new Produtos();
             
             Itens itens1 = new Itens(quantidade1, produtos1);
                
             produtos1.setIdproduto(idProduto1);
             
             itens1.setIditens(produtosDAO.inserirItens(itens1));
             
             //Inserir Venda
             double quant = Integer.parseInt(request.getParameter("txtQuantidade"));
             
            VendaDAO vendaDAO = new VendaDAO();
              
            int usuarioID = Integer.parseInt(request.getParameter("txtIdCliente"));
            int itensID = itens1.getIditens();
    
            Usuario usuarioV = new Usuario();
            Itens itensV = new Itens();
              
            Venda objvenda = new Venda(dataVenda, itensV, usuarioV);
    
            itensV.setIditens(itensID);
            usuarioV.setIdcliente(usuarioID);
    
            vendaDAO.inserirVenda(objvenda);
            
        %>
        
        <center>
                 
                <table border="1" bgcolor="white">
                    
                <tr> 
                    <td colspan="3"><font size="1"><b> RECEBEMOS DE SOFTF5 COMERCIO ELETRONIC CNPJ : 09.358.108/0002-06 
                            OS PRODUTOS CONSTANTES DA NOTA FISCAL INDICADA AO LADO</b></font></td>
                    <td rowspan="2"><font size="4"><b> NF-e <br/> Nº 000.359.725 </br> SÉRIE 68 </b></font></td>
                </tr>
                
                <tr>
                    <td valign="top"><font size="1">DATA DO RECEBIMENTO</font></td>
                    <td colspan="2" valign="top"><font size="1">IDENTIFICAÇÃO E ASSINATURA DO RECEBEDOR</font></td>
                </tr>
                
                <tr>
                    <td colspan="4">----------------------------------------------------------------------------------------------------------------------------------</td>
                </tr>
                
                </table>
                 
                <table border="1" bgcolor="white"> 
                 
                <tr>
                    <td align="center" rowspan="3"><img src="img/nota_fiscal_logo_web.png"></td>
                    <td colspan="2" width="23%" rowspan="3"><font size="4"><center><b> DANFE </b><br/>
                        <font size="2"> DOCUMENTO AUXILIAR <br/> DA NOTA FISCAL ELETRÔNICA </center>
                        &zwnj;&zwnj;&zwnj; 0 - ENTRADA <br/>
                        &zwnj;&zwnj;&zwnj; 1 - SAÍDA   <br/>
                        <font size="4"><b>&zwnj;&zwnj;&zwnj;&zwnj; Nº 000.359.725 <br/>
                        &zwnj;&zwnj;&zwnj; SÉRIE:68 <br/>
                        &zwnj;&zwnj;&zwnj; FOLHA:1/1 </b></font>
                    </td>
                    <td align="center"><img src="img/codigo_barra.png"></td>
                </tr>
                
                <tr>
                    <td</td>
                    <td><font size="2">Chave de Acesso: </font><br/>
                    <font size="3"><b>3512 0109 3581 0800 0206 5506 8000 3597 2514 0075<b></font>
                    </td>
                </tr>
                
                <tr>
                    <td</td>
                    <td align="center"><font size="2"> Consulta de autenticidade no portal nacional da NF-e 
                        www.nfe.fazenda.gov.br/portal ou no site da Sefaz Autorizadora</font>
                    </td>
                </tr>
                
                </table>
                 
               </center>
               
              <font size="2"><b>DESTINATÁRIO/REMETENTE</b></font>
                
              <table border="1" bgcolor="white">
                 
                <%
                     UsuarioDAO usuarioDAO = new UsuarioDAO();
        
                     Usuario usuario = new Usuario();
                     Endereco endereco = new Endereco();
                           
                     usuario.setIdcliente(usuarioID);
        
                     usuarioDAO.listarUsuarioEndereco(usuario, endereco);
                                   
                %>  
                  
                <tr> 
                  <td colspan="3" width="60%"> <font size="1"> NOME/RAZÃO SOCIAL </font> <br/>
                  <font size="4"><% out.println(usuario.getNome()); %></font></td>
                  <td width="20%"><font size="1"> CNPJ/CPF </font> <br/>
                  <b><font size="4"><% out.println(usuario.getCpf()); %></font></b></td>
                  <td width="5%"><font size="1"> DATA DE EMISSÃO </font> <br/>
                  <font size="4"><% out.println(dataVenda); %></font></td>
                </tr> 
                
                <tr> 
                  <td colspan="2"><font size="1"> ENDEREÇO </font> <br/>
                  <font size="4"><% out.println(endereco.getLogradouro()+", "+endereco.getNumero()); %></font></td>
                  <td><font size="1"> BAIRRO/DISTRITO </font> <br/>
                  <font size="4"><% out.println(endereco.getBairro()); %></font></td>
                  <td><font size="1"> CIDADE </font> <br/>
                  <font size="4"><% out.println(endereco.getCidade()); %></font></td>
                  <td><font size="1"> DATA DE SAÍDA </font> <br/>
                  <font size="4"><%out.println(dataVenda);%></font></td>
                </tr> 
                
              </table>
              
             <font size="2"><b>DADOS DOS PRODUTOS/SERVIÇOS</b></font>
                
             <table border="1" bgcolor="white">
                  
                <tr> 
                    <td align="center"><font size="2">Cód. Produto</font></td>
                    <td align="center"><font size="2">Descrição dos Produtos/Serviços</font></td>
                    <td align="center"><font size="2">NCM/SH</font></td>
                    <td align="center"><font size="2">CST</font></td>
                    <td align="center"><font size="2">CFOP</font></td>
                    <td align="center"><font size="2">UN</font></td>
                    <td align="center"><font size="2">Quant.</font></td>
                    <td align="center"><font size="2">V. Unitário</font></td>
                    <td align="center"><font size="2">Valor Total</font></td>
                    <td align="center"><font size="2">Base de Cálc. ICMS</font></td>
                    <td align="center"><font size="2">Valor ICMS</font></td>
                    <td align="center"><font size="2">Valor IPI</font></td>
                    <td align="center"><font size="2">Aliq. ICMS</font></td>
                    <td align="center"><font size="2">Aliq. IPI</font></td>
                </tr>
                
                <%
                ProdutosDAO produtos = new ProdutosDAO();
                            
                List<Produtos> listaP = produtos.listarProdutosID(produtos1);                
                 %>
                
                <tr> 
                    <td align="center"><font size="3"><% out.println(listaP.get(id).getIdproduto()); %></font></td>
                    <td width="25%"><font size="3"><% out.println(listaP.get(id).getMarca()); %></font></td>
                    <td align="center"><font size="3">84713019</font></td>
                    <td align="center"><font size="3">260</font></td>
                    <td align="center"><font size="3">6108</font></td>
                    <td align="center"><font size="3">PC</font></td>
                    <td align="center"><font size="3"><% out.println((int)quant); %></font></td>
                    <td align="center"><font size="3"><% out.println(listaP.get(id).getValor()+",00"); %></font></td>
                    <td align="center"><font size="3"><% out.println((int)quant*listaP.get(id).getValor()+",00"); %></font></td>
                    <td align="center"><font size="3">0,00</font></td>
                    <td align="center"><font size="3">0,00</font></td>
                    <td align="center"><font size="3"></font></td>
                    <td align="center"><font size="3">0,00</font></td>
                    <td align="center"><font size="3"></font></td>
                </tr>
                
             </table>
             
             <font size="2"><b>DADOS ADICIONAIS</b></font>
             
            <table border="1" bgcolor="white">
                
                <tr>
                    <td><font size="1"> INFORMAÇÕE COMPLEMENTARES </font> <br/>
                    <font size="2">PEDIDO NO14157525 IMPOSTO RECOLHIDO POR SUBSTITUICAO-ARTIGO 313A A 
                    313Z20 DO RICMS/00 </font></td>
                    <td width="30%" valign="top"><font size="1"> RESERVADO AO FISCO </font></td>
                </tr>
                 
             </table>
            ------------------------------------------------------------------------------------------------------------------------------------
            </center>
            
                <%       
                    }               
                 %>
             <br/>    
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