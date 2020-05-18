<%-- 
    Document   : list
    Created on : 09/05/2020, 17:50:07
    Author     : notebook-user
--%>

<%@page import="br.gov.sp.fatec.clientes.Clientes"%>
<%@page import="br.gov.sp.fatec.clientes.Db"%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/css/style.css">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/css/bootstrap.css">
        <title>Cadastro de Clientes</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <div class="step">
        <h2>Clientes</h2>
        <a class="btn btn-primary" href="add.jsp">Cadastrar clientes</a>
        <br/><br/>
        
        <table class="table table-hover table-stripped" style="background-color: #FFFFFF">
            <thead>
            <tr>
                <th>Nome</th>
                <th>CPF</th>
                <th>RG</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
            </thead>
            <%for(Clientes cliente: Db.getClientes()){%>
            <tr>
                <td><%= cliente.getNome() %></td>
                <td><%= cliente.getCpf() %></td>
                <td><%= cliente.getRg() %></td>
                <td><%= cliente.getEmail() %></td>
                <td><%= cliente.getTelefone() %></td>
                <td><%= cliente.getEndereco() %>, Nº <%= cliente.getNumero() %> - <%= cliente.getCidade() %> (<%= cliente.getBairro() %>) - <%= cliente.getUf() %> - <%= cliente.getCep() %> </td>
                <td>
                    <%int index = Db.getClientes().indexOf(cliente);%>
                    <a class="btn btn-warning" href="set.jsp?index=<%=index%>">Alterar</a>
                    <br/><br/>
                    <a class="btn btn-danger" href="remove.jsp?index=<%=index%>">Excluir</a>
                </td>
            </tr>
            <%}%>
        </table>
        </step>
    </body>
</html>
