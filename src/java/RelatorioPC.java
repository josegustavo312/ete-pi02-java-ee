



/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import br.com.projeto.comunicacao.Conexao;
import java.io.*;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import javax.servlet.*;
import javax.servlet.http.*;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;

/**
 *
 * @author Beto
 */
public class RelatorioPC extends HttpServlet
{

    Conexao conexao = new Conexao();

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try
        {
            Connection con = conexao.abrirConexao();
            HashMap parametros = new HashMap();
          
            HttpSession session = request.getSession();
            
            ServletContext sc = getServletContext();
            String nomeArquivo = sc.getRealPath("/") + "RelatorioPC.pdf";
            JasperPrint jp = JasperFillManager.fillReport(sc.getRealPath("/jasper/RelatorioPC.jasper"), parametros, con);
            JasperExportManager.exportReportToPdfFile(jp, nomeArquivo);            
            
            response.sendRedirect("RelatorioPC.pdf");

        }
        catch (Exception e)
        {
            System.err.println("Erro3: " + e);
        }
        finally
        {
            //out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="Métodos HttpServlet. Clique no sinal de + à esquerda para editar o código.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     */
    public String getServletInfo()
    {
        return "Short description";
    }
    // </editor-fold>
}
