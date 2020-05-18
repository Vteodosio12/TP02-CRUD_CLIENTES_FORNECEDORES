<%-- 
    Document   : add
    Created on : 17/05/2020, 16:54:52
    Author     : Antoní Mario
--%>

<%@page import="br.gov.sp.fatec.clientes.Db"%>
<%@page import="br.gov.sp.fatec.clientes.Fornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    if(request.getParameter("add") != null){
        String razaoSocial = request.getParameter("razaoSocial");
        String cnpj = request.getParameter("cnpj");        
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone"); 
        String cep = request.getParameter("cep");
        String uf = request.getParameter("uf");
        String cidade = request.getParameter("cidade");
        String bairro = request.getParameter("bairro");
        String endereco = request.getParameter("endereco");
        String numero = request.getParameter("numero");
        
        if(razaoSocial.isEmpty()) error = "Razao Social não pode ser nulo";
        else if(cnpj.isEmpty()) error = "CNPJ não pode ser nulo";        
        else if(email.isEmpty()) error = "Email não pode ser nulo";
        else if(telefone.isEmpty()) error = "Telefone não pode ser nulo";
        else if(cep.isEmpty()) error = "Cep não pode ser nulo";
        else if(uf.isEmpty())error = "UF não ´pode ser nulo";
        else if(cidade.isEmpty()) error = "Cidade não pode ser nulo";
        else if(bairro.isEmpty()) error = "Bairro não pode ser nulo";
        else if(endereco.isEmpty()) error = "Endereço não pode ser nulo";
        else if(numero.isEmpty()) error = "Numero não pode ser nulo";
        
        else{
            Fornecedores fornecedorNovo = new Fornecedores();
            fornecedorNovo.setAttributes(razaoSocial, cnpj, email, telefone, cep, uf, cidade, bairro, endereco, numero);            
            Db.getFornecedores().add(fornecedorNovo);
            response.sendRedirect("list.jsp?status=1");            
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/css/style.css">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/css/bootstrap.css">
        <title>Adicionar Fornecedores</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2><a href="list.jsp">Fornecedores</a></h2>
        <h3>Adicionar Fornecedores</h3>
        
        <%if(error != null){%>
        <div style="color:red"><%=error%></div>
        <%}%>
        
        <form method="post">
            Razão Social:<br />
            <input type="text" name="razaoSocial"/><br/>
            CNPJ:<br />
            <input type="text" name="cnpj"/><br/>            
            Email:<br />
            <input type="email" name="email"/><br/>
            Telefone:<br />
            <input type="text" name="telefone"/><br/>
            Cep:<br />
            <input type="text" name="cep"/><br/>
            UF:<br />
            <input type="text" name="uf"/><br/>
            Cidade:<br />
            <input type="text" name="cidade"/><br/>
            Bairro:<br />
            <input type="text" name="bairro"/><br/>
            Endereço:<br />
            <input type="text" name="endereco"/><br/>
            Numero:<br />
            <input type="text" name="numero"/><br/>
            <br/>
            <input type="submit" name="add" value="Adicionar">
        </form>
    </body>
</html>
