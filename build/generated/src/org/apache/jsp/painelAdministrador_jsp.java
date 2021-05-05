package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class painelAdministrador_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/menu.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");


String login = (String) session.getAttribute("sessaoLogin");


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>SOFT F5 - Painel do Administrador</title>\n");
      out.write("        <link href=\"CSS/estilo.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div id=\"container\">\n");
      out.write("            \n");
      out.write("            <div id=\"topo\">\n");
      out.write("               \n");
      out.write("                <center><img src=\"img/soft_logo.gif\"></center>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div id=\"menu\">\n");
      out.write("                \n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("                <center>\n");
      out.write("                <a href=\"index.jsp\"><img src=\"img/icones/home.png\"></a>\n");
      out.write("                <a href=\"login.jsp\"><img src=\"img/icones/login.png\"></a>\n");
      out.write("                <a href=\"empresa.jsp\"><img src=\"img/icones/empresa.png\"></a> \n");
      out.write("                </center>");
      out.write("\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div id=\"conteudo_admin\"> \n");
      out.write("                \n");
      out.write("                <table>   \n");
      out.write("                <tr>\n");
      out.write("                    <td> <a href=\"produtosCadastrar.jsp\"> <img src=\"img/CadastrarComputadores.png\"> </a> </td>\n");
      out.write("                    <td width=\"70%\" align=\"right\"><font size=\"6\"><b>Bem vindo! ");
      out.print( login );
      out.write("</b></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><a href=\"adminCadastrar.jsp\"> <img src=\"img/CadastrarAdmin.png\"> </a></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><a href=\"listaTabela.jsp\"> <img src=\"img/ListarTabelas.png\"> </a></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><a href=\"moduloAlterar.jsp\"> <img src=\"img/modulo_alterar.png\"> </a></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><a href=\"moduloExcluir.jsp\"> <img src=\"img/modulo_excluir.png\"> </a></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><a href=\"moduloRelatorio.jsp\"> <img src=\"img/botao_relatorio.png\"> </a></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td> <a href=\"login.jsp\"> <img src=\"img/sair.png\"> </a> </td>\n");
      out.write("                </tr>\n");
      out.write("                </table>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div id=\"rodape\">\n");
      out.write("                \n");
      out.write("                &COPY; SOFT F5 - TODOS OS DIREITOS RESERVADOS\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
