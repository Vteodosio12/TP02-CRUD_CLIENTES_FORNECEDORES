<%-- 
    Document   : removerFornecedor
    Created on : 17/05/2020, 17:01:03
    Author     : Antoní Mario
--%>

<%@page import="br.gov.sp.fatec.clientes.Db"%>
<%@page import="br.gov.sp.fatec.clientes.Fornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    Fornecedores fornecedor = null;
    int index = -1;
    try{
        index = Integer.parseInt(request.getParameter("index"));
        fornecedor = Db.getFornecedores().get(index);
        if(request.getParameter("remove") != null){
            Db.getFornecedores().remove(index);
            response.sendRedirect("list.jsp");
        }
    }catch(Exception ex){
        error = "Índice Inválido";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/css/style.css">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/css/bootstrap.css">
        <title>Remover Fornecedor</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2><a href="list.jsp">Fornecedores</a></h2>
        <h3>Remover Fornecedor?</h3>
        
        <%if(error != null){%>
        <div style="color:red"><%=error%></div>
        <%}%>
        
        <div style="background-color: #FFF">
        <form method="post">
            Razao Social:<br />
            <b><%=fornecedor.getRazaoSocial()%></b><br/>
            CNPJ:<br />
            <b><%=fornecedor.getCnpj()%></b><br/>            
            Email:<br />
            <b><%=fornecedor.getEmail()%></b><br/>
            Telefone:<br />
            <b><%=fornecedor.getTelefone()%></b><br/>
            Cep:<br />
            <b><%=fornecedor.getCep()%></b><br/>
            UF:<br />
            <b><%=fornecedor.getUf()%></b><br/>
            Cidade:<br />
            <b><%=fornecedor.getCidade()%></b><br/>
            Bairro:<br />
            <b><%=fornecedor.getBairro()%></b><br/>
            Endereço:<br />
            <b><%=fornecedor.getEndereco()%></b><br/><br/>
            Numero:<br />
            <b><%=fornecedor.getNumero()%></b><br/><br/>
            <input type="submit" class="btn btn-primary" name="remove" value="Remover">
        </form>
        
        </div>
    </body>
</html>
