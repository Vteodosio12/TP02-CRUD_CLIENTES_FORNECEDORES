package org.apache.jsp.clientes;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.gov.sp.fatec.clientes.Clientes;
import br.gov.sp.fatec.clientes.Db;

public final class add_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    String error = null;
    if(request.getParameter("add") != null){
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        
        if(nome.isEmpty()) error = "Nome não pode ser nulo";
        else if(cpf.isEmpty()) error = "CPF não pode ser nulo";
        else if(rg.isEmpty()) error = "RG não pode ser nulo";
        else if(email.isEmpty()) error = "Email não pode ser nulo";
        else if(telefone.isEmpty()) error = "Telefone não pode ser nulo";
        else if(endereco.isEmpty()) error = "Endereço não pode ser nulo";
        else{
            Clientes clienteNovo = new Clientes();
            clienteNovo.setAttributes(nome, cpf, rg, email, telefone, endereco);
            Db.getClientes().add(clienteNovo);
            response.sendRedirect("list.jsp/1");
            
        }
    }

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Clientes - Users WebApp</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<h1><a href=\"");
      out.print( request.getContextPath() );
      out.write("/index.jsp\">Users WebApp</a></h1>\n");
      out.write("\n");
      out.write("        <h2><a href=\"list.jsp\">Usuários</a></h2>\n");
      out.write("        <h3>Cadastrar Usuário</h3>\n");
      out.write("        \n");
      out.write("        ");
if(error != null){
      out.write("\n");
      out.write("        <div style=\"color:red\">");
      out.print(error);
      out.write("</div>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("        \n");
      out.write("        <form method=\"post\">\n");
      out.write("            Nome:<br />\n");
      out.write("            <input type=\"text\" name=\"nome\"/><br/>\n");
      out.write("            CPF:<br />\n");
      out.write("            <input type=\"text\" name=\"cpf\"/><br/>\n");
      out.write("            RG:<br />\n");
      out.write("            <input type=\"text\" name=\"rg\"/><br/>\n");
      out.write("            Email:<br />\n");
      out.write("            <input type=\"email\" name=\"email\"/><br/>\n");
      out.write("            Telefone:<br />\n");
      out.write("            <input type=\"text\" name=\"telefone\"/><br/>\n");
      out.write("            Endereço:<br />\n");
      out.write("            <input type=\"text\" name=\"endereco\"/><br/>\n");
      out.write("            <br/>\n");
      out.write("            <input type=\"submit\" name=\"add\" value=\"Adicionar\">\n");
      out.write("        </form>\n");
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
