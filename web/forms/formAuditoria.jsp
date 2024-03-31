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
