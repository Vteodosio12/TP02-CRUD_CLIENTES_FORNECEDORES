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
    Clientes cliente = null;
    int index = -1;
    try{
        index = Integer.parseInt(request.getParameter("index"));
        cliente = Db.getClientes().get(index);
        if(request.getParameter("remove") != null){
            Db.getClientes().remove(index);
            response.sendRedirect("list.jsp");
        }
    }catch(Exception ex){
        error = "Índice Inválido";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Cliente</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2><a href="list.jsp">Clientes</a></h2>
        <h3>Remover Cliente?</h3>
        
        <%if(error != null){%>
        <div style="color:red"><%=error%></div>
        <%}%>
        
        <form method="post">
            Nome:<br />
            <b><%=cliente.getNome()%></b><br/>
            CPF:<br />
            <b><%=cliente.getCpf()%></b><br/>
            RG:<br />
            <b><%=cliente.getRg()%></b><br/>
            Email:<br />
            <b><%=cliente.getEmail()%></b><br/>
            Telefone:<br />
            <b><%=cliente.getTelefone()%></b><br/>
            Endereço:<br />
            <b><%=cliente.getEndereco()%></b><br/><br/>
            <input type="submit" name="remove" value="Remover">
        </form>
    </body>
</html>
