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
    Clientes cliente = null;
    int index = -1;
    try{
        index = Integer.parseInt(request.getParameter("index"));
        cliente = Db.getClientes().get(index);
        if(request.getParameter("set") != null){
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
                Clientes editCliente = new Clientes();
                editCliente.setAttributes(nome, cpf, rg, email, telefone, cep, uf, cidade, bairro, endereco, numero);
                Db.getClientes().set(index,editCliente);
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
            <input type="text" name="nome" value="<%=cliente.getNome()%>"/><br/>
            CPF:<br />
            <input type="text" name="cpf" id="cpf" value="<%=cliente.getCpf()%>"/><br/>
            RG:<br />
            <input type="text" name="rg" value="<%=cliente.getRg()%>"/><br/>
            Email:<br />
            <input type="email" name="email" value="<%=cliente.getEmail()%>"/><br/>
            Telefone:<br />
            <input type="text" name="telefone" id="celular" value="<%=cliente.getTelefone()%>"/><br/>
            CEP:<br />
            <input type="text" name="cep" id="cep" onblur="pesquisacep(this.value);"  value="<%=cliente.getCep()%>"/><br/>
            UF:<br />
            <select name="uf" id="UF" class="form-control">
                <option value="">Selecionar</option>
                <option value="AC" <%if(cliente.getUf()=="AC"){%>selected<%}%>>AC</option>
                <option value="AL" <%if(cliente.getUf()=="AL"){%>selected<%}%>>AL</option>
                <option value="AP" <%if(cliente.getUf()=="AP"){%>selected<%}%>>AP</option>
                <option value="AM" <%if(cliente.getUf()=="AM"){%>selected<%}%>>AM</option>
                <option value="BA" <%if(cliente.getUf()=="BA"){%>selected<%}%>>BA</option>
                <option value="CE" <%if(cliente.getUf()=="CE"){%>selected<%}%>>CE</option>
                <option value="DF" <%if(cliente.getUf()=="DF"){%>selected<%}%>>DF</option>
                <option value="ES" <%if(cliente.getUf()=="ES"){%>selected<%}%>>ES</option>
                <option value="GO" <%if(cliente.getUf()=="GO"){%>selected<%}%>>GO</option>
                <option value="MA" <%if(cliente.getUf()=="MA"){%>selected<%}%>>MA</option>
                <option value="MT" <%if(cliente.getUf()=="MT"){%>selected<%}%>>MT</option>
                <option value="MS" <%if(cliente.getUf()=="MS"){%>selected<%}%>>MS</option>
                <option value="MG" <%if(cliente.getUf()=="MG"){%>selected<%}%>>MG</option>
                <option value="PA" <%if(cliente.getUf()=="PA"){%>selected<%}%>>PA</option>
                <option value="PB" <%if(cliente.getUf()=="PB"){%>selected<%}%>>PB</option>
                <option value="PE" <%if(cliente.getUf()=="PE"){%>selected<%}%>>PE</option>
                <option value="PI" <%if(cliente.getUf()=="PI"){%>selected<%}%>>PI</option>
                <option value="RJ" <%if(cliente.getUf()=="RJ"){%>selected<%}%>>RJ</option>
                <option value="RN" <%if(cliente.getUf()=="RN"){%>selected<%}%>>RN</option>
                <option value="RS" <%if(cliente.getUf()=="RS"){%>selected<%}%>>RS</option>
                <option value="RO" <%if(cliente.getUf()=="RO"){%>selected<%}%>>RO</option>
                <option value="RR" <%if(cliente.getUf()=="RR"){%>selected<%}%>>RR</option>
                <option value="SC" <%if(cliente.getUf()=="SC"){%>selected<%}%>>SC</option>
                <option value="SP" <%if(cliente.getUf()=="SP"){%>selected<%}%>>SP</option>
                <option value="SE" <%if(cliente.getUf()=="SE"){%>selected<%}%>>SE</option>
                <option value="TO" <%if(cliente.getUf()=="TO"){%>selected<%}%>>TO</option>
            </select><br />
            Cidade:<br />
            <input type="text" name="cidade" id="Cidade" value="<%=cliente.getCidade()%>"/><br/>
            Bairro:<br />
            <input type="text" name="bairro" id="Bairro" value="<%=cliente.getBairro()%>"/><br/>
            Endereço:<br />
            <input type="text" name="endereco" value="<%=cliente.getEndereco()%>"/><br/>
            Número:<br />
            <input type="text" name="numero" value="<%=cliente.getNumero()%>"/><br/>
            <br/>
            <input type="submit" name="set" value="Editar">
        </form>
            
        <script src="../styles/js/jquery.js"></script> 
        <script src="../styles/js/jquery-ui.js"></script> 
        <script src="../styles/js/jquery.maskedinput.min.js"></script> 
        <script src="../styles/js/validaCpf.js"></script> 
    </body>
</html>