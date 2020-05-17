<%-- 
    Document   : list
    Created on : 09/05/2020, 17:50:07
    Author     : notebook-user
--%>

<%@page import="br.gov.sp.fatec.clientes.Clientes"%>
<%@page import="br.gov.sp.fatec.clientes.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
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
            response.sendRedirect("list.jsp?status=1");
            
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes - WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2><a href="list.jsp">Clientes</a></h2>
        <h3>Cadastrar Cliente</h3>
        
        <%if(error != null){%>
        <div style="color:red"><%=error%></div>
        <%}%>
        
        <form method="post">
            Nome:<br />
            <input type="text" name="nome"/><br/>
            CPF:<br />
            <input type="text" name="cpf" id="cpf"/><br/>
            RG:<br />
            <input type="text" name="rg"/><br/>
            Email:<br />
            <input type="email" name="email"/><br/>
            Telefone:<br />
            <input type="text" name="telefone" id="celular"/><br/>
            Endereço:<br />
            <input type="text" name="endereco"/><br/>
            <br/>
            <input type="submit" name="add" value="Adicionar">
        </form>
        
        <script src="../styles/js/jquery.js"></script> 
        <script src="../styles/js/jquery-ui.js"></script> 
        <script src="../styles/js/jquery.maskedinput.min.js"></script> 
        <script src="../styles/js/validaCpf.js"></script> 
    </body>
</html>
