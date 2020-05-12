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
        if(request.getParameter("set") != null){
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String pass1 = request.getParameter("pass1");
            String pass2 = request.getParameter("pass2");

            if(name.isEmpty()) error = "Nome não pode ser nulo";
            else if(email.isEmpty()) error = "Email não pode ser nulo";
            else if(pass1.isEmpty()) error = "Password não pode ser nulo";
            else{
                if(pass1.equals(pass2)){
                    User editUser = new User();
                    editUser.setAttributes(name, email, pass1);
                    Db.getUsers().set(index,editUser);
                    response.sendRedirect("list.jsp");
                }else{
                    error="As senhas estão diferentes";
                }

            }
        }
    }catch(Exception ex){
        error = "Índice Inválido";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Usuário - Users WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2><a href="list.jsp">Usuários</a></h2>
        <h3>Alterar Usuário</h3>
        
        <%if(error != null){%>
        <div style="color:red"><%=error%></div>
        <%}%>
        
        <form method="post">
            Nome:<br />
            <input type="text" name="name" value="<%=user.getName()%>"/><br/>
            Email:<br />
            <input type="email" name="email" value="<%=user.getEmail()%>"/><br/>
            <fieldset>
                <legend>Senha</legend>
                Senha:<br />
                <input type="password" name="pass1" value="<%=user.getPassword()%>"/><br/>
                Confirmação de Senha:<br />
                <input type="password" name="pass2" value="<%=user.getPassword()%>"/><br/>
            </fieldset><br/>
            <input type="submit" name="set" value="Alterar">
        </form>
    </body>
</html>
