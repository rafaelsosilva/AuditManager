<%-- 
    Document   : menu
    Created on : 7 de abr. de 2024, 12:05:38
    Author     : rafaelsilva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        
        <link href="../css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">

    </head>
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
                                <a class="nav-link active" aria-current="page" href="#">Relatorios</a>
                            </li>
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
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>

    </body>
</html>
