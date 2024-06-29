<%-- 
    Document   : formAuditoria
    Created on : 24 de mar. de 2024, 22:50:43
    Author     : rafaelsilva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Auditorias</title>

        <link href="../css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
        
        <script src="JS/dao.js" type="text/javascript"></script>
        
    </head>

    <body>

        <form id="formCadastro" name="formCadastro" role="form" class="form-horizontal">

            <div class="container">

                <a class="navbar-brand" href="#"></a>

                <label for="fname">Nome da Auditoria</label>
                <input type="text" id="nomeAuditoria" name="nomeAuditoria" placeholder="Nome da Auditoria" value="">

                <label for="lname">Data de Inicio</label>
                <input type="text" id="dataInicio" name="dataInicio" placeholder="Data de Inicio" value="">

                <label for="lname">Data de Conlusao</label>
                <input type="text" id="dataFim" name="dataFim" placeholder="Data de Conclusao" value="">

                <label for="country">Responsavel</label>
                <select id="nomeResponsavel" name="nomeResponsavel" value="">
                    <option value="RAFAEL SOUZA SILVA">Fabio Silva Santos</option>
                    <option value="RENATA SOUZA SILVA">Haroldo Domingo de Paula</option>
                    <option value="RAFAEL SOUZA SILVA">Eduardo Takahashi</option>
                    <option value="RAFAEL SOUZA SILVA">RAFAEL SOUZA SILVA</option>
                </select>
                
               <input type="submit" value="Cadastro" onclick="cadastrarAuditoria()">

                

            </div>

        </form>
        
        
        <form action="../index.html">
            <button class="btn btn-primary">INICIO</button>
        </form>
        

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>

    </body>

</html>