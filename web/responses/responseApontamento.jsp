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
        
        <jsp:useBean id="FormApontamento" scope="session" class="br.com.GestaoAuditoria.forms.FormApontamento" />
        <jsp:setProperty name="FormApontamento" property="descricaoApontamento"/>
        <jsp:setProperty name="FormApontamento" property="risco"/>
        <jsp:setProperty name="FormApontamento" property="nomeAuditor"/>
        <jsp:setProperty name="FormApontamento" property="nomeAuditoria"/>
        
    </body>
</html>
