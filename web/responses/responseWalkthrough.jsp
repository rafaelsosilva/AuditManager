<%-- 
    Document   : responsePlanoAcao
    Created on : 22 de jul. de 2024, 22:00:57
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
        <jsp:useBean id="FormWalkthrough" scope="session" class="br.com.GestaoAuditoria.forms.FormWalkthrough" />
        <jsp:setProperty name="FormWalkthrough" property="objetivo"/>
        <jsp:setProperty name="FormWalkthrough" property="participantes"/>
        <jsp:setProperty name="FormWalkthrough" property="descricaoWalkthrough"/>
        <jsp:setProperty name="FormWalkthrough" property="nomeAuditoria"/>
        <jsp:setProperty name="FormWalkthrough" property="nomeAuditor"/>
        
    </body>
</html>
