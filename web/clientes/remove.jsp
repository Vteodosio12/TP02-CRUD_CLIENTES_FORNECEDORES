<%-- 
    Document   : list
    Created on : 09/05/2020, 17:50:07
    Author     : notebook-user
--%>

<%@page import="br.gov.sp.fatec.users.User"%>
<%@page import="br.gov.sp.fatec.users.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    User user = null;
    int index = -1;
    try{
        index = Integer.parseInt(request.getParameter("index"));
        user = Db.getUsers().get(index);
        if(request.getParameter("remove") != null){
            Db.getUsers().remove(index);
            response.sendRedirect("list.jsp");
        }
    }catch(Exception ex){
        error = "Índice Inválido";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Usuário - Users WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2><a href="list.jsp">Usuários</a></h2>
        <h3>Remover Usuário?</h3>
        
        <%if(error != null){%>
        <div style="color:red"><%=error%></div>
        <%}%>
        
        <form method="post">
            Nome:<br />
            <b><%=user.getName()%></b><br/>
            Email:<br />
            <b><%=user.getEmail()%></b><br/><br/>
            <input type="submit" name="remove" value="Remover">
        </form>
    </body>
</html>
