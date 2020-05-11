<%-- 
    Document   : list
    Created on : 09/05/2020, 17:50:07
    Author     : notebook-user
--%>

<%@page import="br.gov.sp.fatec.users.User"%>
<%@page import="br.gov.sp.fatec.users.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuários - Users WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2>Usuários</h2>
        <h3><a href="add.jsp">Cadastrar usuários</a></h3>
        
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>E-mail</th>
                <th>Comandos</th>
            </tr>
            <%for(User user: Db.getUsers()){%>
            <tr>
                <td><%= user.getName() %></td>
                <td><%= user.getEmail() %></td>
                <td>
                    <%int index = Db.getUsers().indexOf(user);%>
                    <a href="set.jsp?index=<%=index%>">Alterar</a>
                    <a href="remove.jsp?index=<%=index%>">Excluir</a>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
