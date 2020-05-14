package org.apache.jsp.clientes;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.gov.sp.fatec.clientes.Clientes;
import br.gov.sp.fatec.clientes.Db;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/clientes/../WEB-INF/jspf/header.jspf");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Cadastro de Clientes</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<h1><a href=\"");
      out.print( request.getContextPath() );
      out.write("/index.jsp\">Users WebApp</a></h1>\n");
      out.write("\n");
      out.write("        <h2>Clientes</h2>\n");
      out.write("        <h3><a href=\"add.jsp\">Cadastrar clientes</a></h3>\n");
      out.write("        \n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <th>Nome</th>\n");
      out.write("                <th>CPF</th>\n");
      out.write("                <th>RG</th>\n");
      out.write("                <th>E-mail</th>\n");
      out.write("                <th>Telefone</th>\n");
      out.write("                <th>Endereço</th>\n");
      out.write("                <th>Comandos</th>\n");
      out.write("            </tr>\n");
      out.write("            ");
for(Clientes cliente: Db.getClientes()){
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print( cliente.getNome() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print( cliente.getCpf() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print( cliente.getRg() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print( cliente.getEmail() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print( cliente.getTelefone() );
      out.write("</td>\n");
      out.write("                <td>");
      out.print( cliente.getEndereco() );
      out.write("</td>\n");
      out.write("                <td>\n");
      out.write("                    ");
int index = Db.getClientes().indexOf(cliente);
      out.write("\n");
      out.write("                    <a href=\"set.jsp?index=");
      out.print(index);
      out.write("\">Alterar</a>\n");
      out.write("                    <a href=\"remove.jsp?index=");
      out.print(index);
      out.write("\">Excluir</a>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            ");
}
      out.write("\n");
      out.write("        </table>\n");
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
