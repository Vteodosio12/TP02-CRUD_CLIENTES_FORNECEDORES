<%-- 
    Document   : listaFornecedor
    Created on : 17/05/2020, 17:00:09
    Author     : Antoní Mario
--%>

<%@page import="br.gov.sp.fatec.clientes.Db"%>
<%@page import="br.gov.sp.fatec.clientes.Fornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/css/style.css">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/css/bootstrap.css">
        <title>Cadastro de Fornecedor</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2>Fornecedores</h2>
        <h3><a href="add.jsp">Cadastrar Fornecedores</a></h3>
        
        <table border="1">
            <tr>
                <th>Razão Social</th>
                <th>CNPJ</th>                
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Cep</th>
                <th>UF</th>
                <th>Cidade</th>
                <th>Bairro</th>
                <th>Endereço</th>
                <th>Número</th>
                <th>Comandos</th>
            </tr>
            <%for(Fornecedores fornecedor: Db.getFornecedores()){%>
            <tr>
                <td><%= fornecedor.getRazaoSocial() %></td>
                <td><%= fornecedor.getCnpj() %></td>                
                <td><%= fornecedor.getEmail() %></td>
                <td><%= fornecedor.getTelefone() %></td>
                <td><%= fornecedor.getCep() %></td>
                <td><%= fornecedor.getUf() %></td>
                <td><%= fornecedor.getCidade() %></td>
                <td><%= fornecedor.getBairro() %></td>
                <td><%= fornecedor.getEndereco() %></td>
                <td><%= fornecedor.getNumero() %></td>
                <td>                    
                    <%int index = Db.getFornecedores().indexOf(fornecedor);%>
                    <a href="set.jsp?index=<%=index%>">Alterar</a>
                    <a href="remove.jsp?index=<%=index%>">Excluir</a>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
