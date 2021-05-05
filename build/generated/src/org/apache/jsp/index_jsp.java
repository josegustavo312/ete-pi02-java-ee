package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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


      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>SOFT F5 - Atualizando A Sua Empresa</title>\n");
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
      out.write("            <div id=\"conteudo\"> \n");
      out.write("                \n");
      out.write("                <center>\n");
      out.write("                <img src=\"img/site_compra.png\" align=\"center\">\n");
      out.write("                \n");
      out.write("                <br/><br/>\n");
      out.write("                \n");
      out.write("                <table border=\"1\">\n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"3\" bgcolor=\"#006\"><center><b><font color=\"white\"><center><font size=\"5\">Notebook's em Destaques </font></center></font></b></center></td>\n");
      out.write("                    </tr> \n");
      out.write("                    \n");
      out.write("                    <tr align=\"center\"> \n");
      out.write("                        <td>   \n");
      out.write("                            <a href=\"compraNotebook.jsp?idNotebook=0\">\n");
      out.write("                            <img src=\"img/notebook/SonyVaioVPC.png\"> <br/>\n");
      out.write("                            Notebook Sony Vaio VPC-EH40EB/W com Intel® Core™ i3-2370M, 4GB, 500GB,\n");
      out.write("                            Gravador de DVD, HDMI, Wireless, Bluetooth 3.0, Webcam, LED 15.5\" e Windows 7\n");
      out.write("                            </a>\n");
      out.write("                            <br/><font color=\"red\">\n");
      out.write("                            <b>Preço - R$: 1780,00</b>\n");
      out.write("                            </font><br/><br/>\n");
      out.write("                        </td>\n");
      out.write("                        \n");
      out.write("                        <td>\n");
      out.write("                            <a href=\"compraNotebook.jsp?idNotebook=0\">\n");
      out.write("                            <img src=\"img/notebook/Positivo3D.png\"> <br/>\n");
      out.write("                            Notebook Positivo Premium N9410 3D com Intel Core i5-2410M, 6GB, 750GB,\n");
      out.write("                            Gravador de DVD, Leitor de Cartões, HDMI, LED 14\" e Windows 7 Home Premium\n");
      out.write("                            <br/><font color=\"red\">\n");
      out.write("                            </a>\n");
      out.write("                            <b>Preço - R$: 1600,00</b>\n");
      out.write("                            </font>\n");
      out.write("                        </td>\n");
      out.write("                        \n");
      out.write("                        <td>\n");
      out.write("                            <a href=\"compraNotebook.jsp?idNotebook=0\">\n");
      out.write("                            <img src=\"img/notebook/HP.png\"> <br/>\n");
      out.write("                            Edição Especial Notebook HP Pavilion DM1-4190BR por HERCHCOVITCH; ALEXANDRE com \n");
      out.write("                            AMD Vision Dual Core E-450, 4GB, 500GB, LED 11.6\",Windows 7 Home Premium\n");
      out.write("                            <br/><font color=\"red\">\n");
      out.write("                            </a>\n");
      out.write("                            <b>Preço - R$: 2780,00</b>\n");
      out.write("                            </font>\n");
      out.write("                        </td>\n");
      out.write("                        \n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                   </table>\n");
      out.write("                \n");
      out.write("                </center>\n");
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
