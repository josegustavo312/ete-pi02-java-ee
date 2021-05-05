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
       
                <%@include file="menu.jsp" %>
                
            </div>

            <div id="conteudo_nota"> 
              <center>
                 
                <table border="1" bgcolor="white">
                    
                <tr> 
                    <td colspan="3"><font size="1"><b> RECEBEMOS DE SOFTF5 COMERCIO ELETRONIC CNPJ : 09.358.108/0002-06 
                            OS PRODUTOS CONSTANTES DA NOTA FISCAL INDICADA AO LADO</b></font></td>
                    <td rowspan="2"><font size="4"><b> NF-e <br/> Nº 000.359.725 </br> SÉRIE 68 </b></font></td>
                </tr>
                
                <tr>
                    <td valign="top"><font size="2">DATA DO RECEBIMENTO</font></td>
                    <td colspan="2" valign="top"><font size="2">IDENTIFICAÇÃO E ASSINATURA DO RECEBEDOR</font></td>
                </tr>
                
                <tr>
                    <td colspan="4">----------------------------------------------------------------------------------------------------------------------------------</td>
                </tr>
                
                </table>
                 
                <table border="1" bgcolor="white"> 
                 
                <tr>
                    <td align="center" rowspan="3"><img src="img/nota_fiscal_logo.png"></td>
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
                  
                <tr> 
                  <td colspan="3" width="60%"> <font size="1"> NOME/RAZÃO SOCIAL </font> <br/>
                  José Gustavo da Silva</td>
                  <td width="20%"><font size="1"> CNPJ/CPF </font> <br/>
                  <b>032.332.112-31</b></td>
                  <td width="5%"><font size="1"> DATA DE EMISSÃO </font> <br/>
                  17/11/2012</td>
                </tr> 
                
                <tr> 
                  <td colspan="2"><font size="1"> ENDEREÇO </font> <br/>
                  Rua Francisco Lapenda, 312</td>
                  <td><font size="1"> BAIRRO/DISTRITO </font> <br/>
                  Sertãozinho</td>
                  <td><font size="1"> CEP </font> <br/>
                  55800-000</td>
                  <td><font size="1"> DATA DE SAÍDA </font> <br/>
                  17/11/2012</td>
                </tr> 
                
              </table>
              
             <font size="2"><b>DADOS DOS PRODUTOS/SERVIÇOS</b></font>
                
             <table border="1" bgcolor="white">
                  
                <tr> 
                    <td align="center"><font size="2">Cód. Produto</font></td>
                    <td align="center" width="30%"><font size="2">Descrição dos Produtos/Serviços</font></td>
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
                
                <tr> 
                    <td align="center"><font size="3">1</font></td>
                    <td><font size="3">Asus X44C VX025O</font></td>
                    <td align="center"><font size="3">84713019</font></td>
                    <td align="center"><font size="3">260</font></td>
                    <td align="center"><font size="3">6108</font></td>
                    <td align="center"><font size="3">PC</font></td>
                    <td align="center"><font size="3">1,000</font></td>
                    <td align="center"><font size="3">1.357,03</font></td>
                    <td align="center"><font size="3">1.357,03</font></td>
                    <td align="center"><font size="3">0,00</font></td>
                    <td align="center"><font size="3">0,00</font></td>
                    <td align="center"><font size="3"></font></td>
                    <td align="center"><font size="3">0,00</font></td>
                    <td align="center"><font size="3"></font></td>
                </tr>
                
             </table>
             
             <font size="2"><b>DADOS ADICIONAIS</b></font>
             
            <table border="1">
                 
                <tr>
                    <td><font size="1"> INFORMAÇÕES COMPLEMENTARES </font> <br/>
                    <font size="2">PEDIDO NO14157525 IMPOSTO RECOLHIDO POR SUBSTITUICAO-ARTIGO 313A A 
                    313Z20 DO RICMS/00 </font></td>
                    <td width="30%" valign="top"><font size="1"> RESERVADO AO FISCO </font></td>
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
