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
        <jsp:useBean id="FormTeste" scope="session" class="br.com.GestaoAuditoria.forms.FormTeste" />
        <jsp:setProperty name="FormTeste" property="descricaoTeste"/>
        <jsp:setProperty name="FormTeste" property="nomeAuditoria"/>
        <jsp:setProperty name="FormTeste" property="nomeAuditor"/>
        
    </body>
</html>
