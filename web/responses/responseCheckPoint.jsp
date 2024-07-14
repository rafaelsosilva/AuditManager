<%-- 
    Document   : responseCheckPoint
    Created on : 14 de jul. de 2024, 01:11:33
    Author     : rafaelsilva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="FormCheckPoint" scope="session" class="br.com.GestaoAuditoria.forms.FormCheckPoint" />
        <jsp:setProperty name="FormCheckPoint" property="descricaoCheckPoint"/>
        <jsp:setProperty name="FormCheckPoint" property="nomeAuditor"/>
        <jsp:setProperty name="FormCheckPoint" property="nomeAuditoria"/>
    </body>
</html>
