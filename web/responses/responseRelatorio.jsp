<%-- 
    Document   : responseApontamento
    Created on : 13 de jul. de 2024, 21:45:11
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
        
        <jsp:useBean id="FormRelatorio" scope="session" class="br.com.GestaoAuditoria.forms.FormRelatorio" />
        <jsp:setProperty name="FormRelatorio" property="nomeRelatorio"/>
        <jsp:setProperty name="FormRelatorio" property="risco"/>
        <jsp:setProperty name="FormRelatorio" property="nomeAuditor"/>
        <jsp:setProperty name="FormRelatorio" property="nomeAuditoria"/>
        
    </body>
</html>
