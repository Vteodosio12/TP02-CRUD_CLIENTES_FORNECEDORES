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
    if(request.getParameter("add") != null){
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String cep = request.getParameter("cep");
        String uf = request.getParameter("uf");
        String cidade = request.getParameter("cidade");
        String bairro = request.getParameter("bairro");
        String endereco = request.getParameter("endereco");
        String numero = request.getParameter("numero");
        
        if(nome.isEmpty()) error = "Nome não pode ser nulo";
        else if(cpf.isEmpty()) error = "CPF não pode ser nulo";
        else if(rg.isEmpty()) error = "RG não pode ser nulo";
        else if(email.isEmpty()) error = "Email não pode ser nulo";
        else if(telefone.isEmpty()) error = "Telefone não pode ser nulo";
        else if(uf.isEmpty()) error = "UF não pode ser nula";
        else if(cidade.isEmpty()) error = "Cidade não pode ser nulo";
        else if(bairro.isEmpty()) error = "Bairro não pode ser nulo";
        else if(endereco.isEmpty()) error = "Endereço não pode ser nulo";
        else if(numero.isEmpty()) error = "Número não pode ser nulo";
        else{
            Clientes clienteNovo = new Clientes();
            clienteNovo.setAttributes(nome, cpf, rg, email, telefone, cep, uf, cidade, bairro, endereco, numero);
            Db.getClientes().add(clienteNovo);
            response.sendRedirect("list.jsp?status=1");
            
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/css/style.css">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/css/bootstrap.css">
        <title>Clientes - WebApp</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
        <h2><a href="list.jsp">Clientes</a></h2>
        <h3>Cadastrar Cliente</h3>
        
        <%if(error != null){%>
        <div style="color:red"><%=error%></div>
        <%}%>
        
        <form method="post">
            Nome:<br />
            <input type="text" name="nome"/><br/>
            CPF:<br />
            <input type="text" name="cpf" id="cpf"/><br/>
            RG:<br />
            <input type="text" name="rg"/><br/>
            Email:<br />
            <input type="email" name="email"/><br/>
            Telefone:<br />
            <input type="text" name="telefone" id="celular"/><br/>
            CEP:<br />
            <input type="text" name="cep" id="cep" onblur="pesquisacep(this.value);" /><br/>
            UF:<br />
            <select name="uf" id="UF" class="form-control">
                <option value="">Selecionar</option>
                <option value="AC">AC</option>
                <option value="AL">AL</option>
                <option value="AP">AP</option>
                <option value="AM">AM</option>
                <option value="BA">BA</option>
                <option value="CE">CE</option>
                <option value="DF">DF</option>
                <option value="ES">ES</option>
                <option value="GO">GO</option>
                <option value="MA">MA</option>
                <option value="MT">MT</option>
                <option value="MS">MS</option>
                <option value="MG">MG</option>
                <option value="PA">PA</option>
                <option value="PB">PB</option>
                <option value="PE">PE</option>
                <option value="PI">PI</option>
                <option value="RJ">RJ</option>
                <option value="RN">RN</option>
                <option value="RS">RS</option>
                <option value="RO">RO</option>
                <option value="RR">RR</option>
                <option value="SC">SC</option>
                <option value="SP">SP</option>
                <option value="SE">SE</option>
                <option value="TO">TO</option>
            </select><br />
            Cidade:<br />
            <input type="text" name="cidade" id="Cidade" /><br/>
            Bairro:<br />
            <input type="text" name="bairro" id="Bairro" /><br/>
            Endereço:<br />
            <input type="text" name="endereco" id="Endereco" /><br/>
            Número:<br />
            <input type="text" name="numero"/><br/>
            <br/>
            <input type="submit" name="add" value="Adicionar">
        </form>
        
        <script src="../styles/js/jquery.js"></script> 
        <script src="../styles/js/jquery-ui.js"></script> 
        <script src="../styles/js/jquery.maskedinput.min.js"></script> 
        <script src="../styles/js/validaCpf.js"></script> 
        <script src="../styles/js/validaCep.js"></script> 
    </body>
</html>
