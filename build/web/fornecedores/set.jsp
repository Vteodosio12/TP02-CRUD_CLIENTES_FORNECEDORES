<%-- 
    Document   : set
    Created on : 17/05/2020, 16:59:24
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
        if(request.getParameter("set") != null){
            String razaoSocial = request.getParameter("razaoSocial");
            String cnpj = request.getParameter("cnpj");            
            String email = request.getParameter("email");
            String telefone = request.getParameter("telefone");
            String cep = request.getParameter("cep");
            String uf = request.getParameter("uf");
            String cidade = request.getParameter("cidade");
            String bairro = request.getParameter("bairro");            
            String endereco = request.getParameter("endereco");
            String numero = request.getParameter("numero");

            if(razaoSocial.isEmpty()) error = "Razao Social não pode ser nulo";
            else if(cnpj.isEmpty()) error = "CNPJ não pode ser nulo";            
            else if(email.isEmpty()) error = "Email não pode ser nulo";
            else if(telefone.isEmpty()) error = "Telefone não pode ser nulo";
            else if(cep.isEmpty()) error = "Cep não pode ser nulo";
            else if(uf.isEmpty()) error = "UF não pode ser nulo";
            else if(cidade.isEmpty()) error = "Cidade não pode ser nulo";
            else if(bairro.isEmpty()) error = "Bairro não pode ser nulo";
            else if(endereco.isEmpty()) error = "Endereço não pode ser nulo";
            else if(numero.isEmpty()) error = "Numero não pode ser nulo";
            else{
                Fornecedores editFornecedor = new Fornecedores();
                editFornecedor.setAttributes(razaoSocial, cnpj, email, telefone, cep, uf, cidade, bairro, endereco, numero);
                Db.getFornecedores().set(index,editFornecedor);
                response.sendRedirect("list.jsp");
            }
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
        <title>Fornecedores</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2><a href="list.jsp">Fornecedores</a></h2>
        <h3>Cadastrar Fornecedore</h3>
        
        <%if(error != null){%>
        <div style="color:red"><%=error%></div>
        <%}%>
        
        <div style="background-color: #FFF">
        <form method="post">
            Nome:<br />
            <input type="text" class="form-control" name="razaoSocial" value="<%=fornecedor.getRazaoSocial()%>"/><br/>
            CPF:<br />
            <input type="text" class="form-control" name="cnpj" value="<%=fornecedor.getCnpj()%>"/><br/>            
            Email:<br />
            <input type="email" class="form-control" name="email" value="<%=fornecedor.getEmail()%>"/><br/>
            Telefone:<br />
            <input type="text" class="form-control" name="telefone" value="<%=fornecedor.getTelefone()%>"/><br/>
            Cep:<br />
            <input type="text" class="form-control" name="cep" value="<%=fornecedor.getCep()%>"/><br/>
            UF:<br />
            <input type="text" class="form-control" name="uf" value="<%=fornecedor.getUf()%>"/><br/>
            Cidade:<br />
            <input type="text" class="form-control" name="cidade" value="<%=fornecedor.getCidade()%>"/><br/>
            Bairro:<br />
            <input type="text" class="form-control" name="bairro" value="<%=fornecedor.getBairro()%>"/><br/>
            Endereço:<br />
            <input type="text" class="form-control" name="endereco" value="<%=fornecedor.getEndereco()%>"/><br/>
            Numero:<br />
            <input type="text" class="form-control" name="numero" value="<%=fornecedor.getNumero()%>"/><br/>
            <br/>
            <input type="submit" class="btn btn-primary" name="set" value="Editar">
        </form>
    </div>
    </body>
</html>