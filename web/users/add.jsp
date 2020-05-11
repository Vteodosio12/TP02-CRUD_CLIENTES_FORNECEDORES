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
    if(request.getParameter("add") != null){
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass1 = request.getParameter("pass1");
        String pass2 = request.getParameter("pass2");
        
        if(name.isEmpty()) error = "Nome não pode ser nulo";
        else if(email.isEmpty()) error = "Email não pode ser nulo";
        else if(pass1.isEmpty()) error = "Password não pode ser nulo";
        else{
            if(pass1.equals(pass2)){
                User user = new User();
                user.setAttributes(name, email, pass1);
                Db.getUsers().add(user);
                response.sendRedirect("list.jsp");
            }else{
                error="As senhas estão diferentes";
            }
            
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuários - Users WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2><a href="list.jsp">Usuários</a></h2>
        <h3>Cadastrar Usuário</h3>
        
        <%if(error != null){%>
        <div style="color:red"><%=error%></div>
        <%}%>
        
        <form method="post">
            Nome:<br />
            <input type="text" name="name"/><br/>
            Email:<br />
            <input type="email" name="email"/><br/>
            <fieldset>
                <legend>Senha</legend>
                Senha:<br />
                <input type="password" name="pass1"/><br/>
                Confirmação de Senha:<br />
                <input type="password" name="pass2"/><br/>
            </fieldset><br/>
            <input type="submit" name="add" value="Adicionar">
        </form>
    </body>
</html>
