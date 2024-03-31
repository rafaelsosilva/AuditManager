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
        <title>Cadastro Auditoria</title>
    </head>
    <body>

        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>

        <form action="../responses/responseAuditoria.jsp">

            Auditoria<input type="text" name="nomeAuditoria" value="" /><br></br>
            Inicio<input type="text" name="dataInicio" value="" /><br></br>
            Fim<input type="text" name="dataFim" value="" /><br></br>
            Ano<input type="text" name="ano" value="" /><br></br>
            Auditor<input type="text" name="nomeResponsavel" value="" /><br></br>
            <input type="submit" value="OK" />

        </form>

    </body>
</html>
