<%-- 
    Document   : responseAuditoria
    Created on : 29 de mar. de 2024, 19:03:49
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
        
        <jsp:useBean id="FormAuditoria" scope="session" class="br.com.GestaoAuditoria.forms.FormAuditoria" />
        <jsp:setProperty name="FormAuditoria" property="nomeAuditoria"/>
        <jsp:setProperty name="FormAuditoria" property="dataInicio"/>
        <jsp:setProperty name="FormAuditoria" property="dataFim"/>
        <jsp:setProperty name="FormAuditoria" property="ano"/>
        <jsp:setProperty name="FormAuditoria" property="nomeResponsavel"/>
        
    </body>
</html>
