

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/css/style.css">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/css/bootstrap.css">
        <title>Informações</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h3>
            <div>
                <dt class="info">
                    <strong>Curso</strong>
                </dt>
                <dd>
                    <ul class="info">
                        <li>Programação Orientada a Objetos</li>
                        <li>4º Ciclo - Noturno</li>
                        <li>Análise e Desenvolvimento de Sistemas</li>
                        <li>FATEC - Praia Grande</li>
                    </ul>
                </dd>
                <br>
                <dt class="info">
                    <strong>Integrantes</strong>
                </dt>
                <dd>
                    <ul type="disc" class="info">
                        <li>Antoni Mário Gomes dos Santos</li>
                        <li>Rodrigo dos Santos Chiriberto Matos</li>
                        <li>Vinicius Teodósio Alves</li>
                    </ul>
                </dd>
                <br>
                <dt class="info">
                    <strong>Instruções da atividade</strong>
                </dt>
                <dd>
                    <ul class="info">
                        <li>Criar projeto de aplicação WEB para controle de cadastros de clientes e fornecedores. 
                            A apresentação será feita remotamente durante a própria transmissão da aula para o professor 
                            e para os outros alunos. Será feita uma enquete entre os alunos para avaliar qual foi o melhor 
                            projeto, apenas como forma de estímulo. Os alunos que não puderem apresentar durante o horário 
                            de aula deverão submeter a esta tarefa com o link de um vídeo apresentando sua colaboração no 
                            projeto.</li>
                    </ul>
                </dd>
            </div>
        </h3>
    </body>
</html>
