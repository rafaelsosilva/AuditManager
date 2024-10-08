<%-- 
    Document   : formApontamento
    Created on : 31 de mar. de 2024, 14:17:27
    Author     : rafaelsilva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.GestaoAuditoria.models.Auditoria" %>
<%@page import="br.com.GestaoAuditoria.models.Colaborador" %>
<%@page import="br.com.GestaoAuditoria.models.CheckPoint" %>
<%@page import="br.com.GestaoAuditoria.dao.Dao" %>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/style.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">

        <title>Apontamento</title>

        <script>
            function cadastrarCheckPoint() {

                var varDescricaoTipoCheckPoint = $("#descricaoTipoCheckPoint").val();
                var varNomeAuditor = $("#nomeAuditor").val();
                var varNomeAuditoria = $("#nomeAuditoria").val();

                $.ajax({
                    type: 'post',
                    url: '../responses/responseCheckPoint.jsp?descricaoTipoCheckPoint=' + varDescricaoTipoCheckPoint 
                            + '&nomeAuditor=' + varNomeAuditor 
                            + '&nomeAuditoria=' + varNomeAuditoria,
                    success: function (data) {
                        Alert("Cadastrado com Sucesso!!");
                    }
                });
            }
        </script>

    </head>

    <style>
        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        div {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
            box-sizing: content-box;
            width: 100%;
        }

        .container {
            width: 700px;
            margin-left: auto;
            margin-right: auto;
        }
    </style>

    <body>

        <nav class="navbar bg-body-tertiary fixed-top">

            <div class="container-fluid">

                <!-- comment 
             <img src="../images/safra.png" alt="Logo Safra">
             <img src="images/safra.png" alt="Logo Safra">
                -->
                <a class="navbar-brand" href="#"></a>

                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">

                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasNavbarLabel"></h5>
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>


                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                           
                            <li class="nav-item">
                                <a class="nav-link" href="formAuditoria.jsp">Cadastro de Auditorias</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="formApontamento.jsp">Apontamentos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="formPlanoAcao.jsp">Planos de Acao</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="formProrrogacao.jsp">Prorrogacao de Plano de Acao</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="formWalkthrough.jsp">Walkthrough</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="formCheckPoint.jsp">Check Point</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="formMatrizRisco.jsp">Matriz de Riscos</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="formTeste.jsp">Cadastro de Testes</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="formRelatorio.jsp">Relatorio de Auditoria</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="../index.html">Sair</a>
                            </li>

                    </div>

                </div>

            </div>

        </nav>

        <br> <br> <br> <br> <br> <br> 
        
        <%Dao dao = new Dao();%>

        <form method="POST">

            <div class="container">

                <a class="navbar-brand" href="#"></a>

                <select id="descricaoTipoCheckPoint" class="form-control input-md" required>
                    <option value="">SELECIONE O TIPO DE CHECKPOINT</option>
                    <%
                        List<CheckPoint> checkpoint = dao.getTipoCheckPoint();

                        for (CheckPoint objeto : checkpoint) {
                    %>

                    <option value="<%=objeto.getDescricaoTipoCheckPoint()%>"><%=objeto.getDescricaoTipoCheckPoint()%>
                    </option>

                    <%
                        }
                    %>
                </select>

                <select id="nomeAuditor" class="form-control input-md" required>
                    <option value="">SELECIONE O AUDITOR</option>
                    <%
                        List<Colaborador> colaborador = dao.getNomeAuditor();

                        for (Colaborador objeto : colaborador) {
                    %>

                    <option value="<%=objeto.getNomeAuditor()%>"><%=objeto.getNomeAuditor()%>
                    </option>

                    <%
                        }
                    %>
                </select>

                <select id="nomeAuditoria" class="form-control input-md" required>
                    <option value="">SELECIONE UMA AUDITORIA</option>
                    <%
                        List<Auditoria> auditoria = dao.getNomeAuditoria();

                        for (Auditoria objeto : auditoria) {
                    %>

                    <option value="<%=objeto.getNomeAuditoria()%>"><%=objeto.getNomeAuditoria()%>
                    </option>

                    <%
                        }
                    %>
                </select>
                
                <input type="submit" onclick="cadastrarCheckPoint()">

            </div>

        </form>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>

    </body>

</html>