<%-- 
    Document   : formApontamento
    Created on : 31 de mar. de 2024, 14:17:27
    Author     : rafaelsilva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            function cadastrarApontamento() {

                var varDescricaoApontamento = $("#descricaoApontamento").val();
                var varRisco = $("#risco").val();
                var varNomeAuditor = $("#nomeAuditor").val();
                var varNomeAuditoria = $("#nomeAuditoria").val();

                $.ajax({
                    type: 'post',
                    url: '../responses/responseApontamento.jsp?descricaoApontamento=' + varDescricaoApontamento + '&risco=' + varRisco + '&nomeAuditor=' + varNomeAuditor + '&nomeAuditoria=' + varNomeAuditoria,
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

        <form method="POST">

            <div class="container">

                <a class="navbar-brand" href="#"></a>

                <label for="fname">Titulo Apontamento</label>
                <input type="text" id="descricaoApontamento" name="descricaoApontamento" placeholder="Titulo Apontamento">

                <label for="Risco">Risco</label>
                <select id="risco" name="country">
                    <option value="ALTO">Alto</option>
                    <option value="MEDIO">Medio</option>
                    <option value="BAIXO">Baixo</option>
                </select>

                <label for="nomeAuditor">Nome Auditor</label>
                <select id="nomeAuditor" name="nomeAuditor">
                    <option value="RAFAEL SOUZA SILVA">RAFAEL SOUZA SILVA</option>
                    <option value="RAFAEL SOUZA SILVA">PAULO YOKOTA</option>
                </select>

                <label for="nomeAuditoria">Auditoria</label>
                <input type="text" id="nomeAuditoria" name="nomeAuditoria" placeholder="Nome Auditoria">
                
                <input type="submit" onclick="cadastrarApontamento()">

            </div>

        </form>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>

    </body>

</html>
