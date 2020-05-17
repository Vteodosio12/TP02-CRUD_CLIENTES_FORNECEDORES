<%-- 
    Document   : list
    Created on : 09/05/2020, 17:50:07
    Author     : notebook-user
--%>

<%@page import="br.gov.sp.fatec.clientes.Clientes"%>
<%@page import="br.gov.sp.fatec.clientes.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Clientes</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2>Clientes</h2>
        <h3><a href="add.jsp">Cadastrar clientes</a></h3>
        
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>CPF</th>
                <th>RG</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
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
                    <a href="set.jsp?index=<%=index%>">Alterar</a>
                    <a href="remove.jsp?index=<%=index%>">Excluir</a>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
