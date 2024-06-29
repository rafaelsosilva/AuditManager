<%-- 
    Document   : formMatrizRisco
    Created on : 31 de mar. de 2024, 14:18:25
    Author     : rafaelsilva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
        
        <title>Matriz de Risco</title>
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
        
        <div class="container">
            
            <a class="navbar-brand" href="#"></a>
            
            <form action="menu.jsp" method="POST">

                <label for="country">Auditoria</label>
                <select id="country" name="country">
                    <option value="australia">DEVSECOPS</option>
                    <option value="canada">SAFRA INVEST - CORRETORA</option>
                    <option value="usa">AGENCIA LUXEMBURGO</option>
                </select>
                
                <label for="lname">Titulo Matriz de Risco</label>
                <input type="text" id="dataInicio" name="dataInicio" placeholder="Titulo Matriz de Risco">

                <label for="lname">Descricao Matriz de Risco</label>
                <input type="text" id="dataFim" name="dataFim" placeholder="Descricao Matriz de Risco">

                <label for="country">Aprovador</label>
                <select id="country" name="country">
                    <option value="australia">Paulo Guilherme Yokota</option>
                    <option value="canada">Flavia Youseff</option>
                    <option value="usa">Priscila Souza</option>
                </select>
                
                <form action="menu.jsp">
                    <input type="submit" value="Cadastro">
                </form>

                
                <form action="menu.jsp">
                    <input type="submit" value="Menu">
                </form>
                
                
            </form>
            
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>

    </body>
</html>
