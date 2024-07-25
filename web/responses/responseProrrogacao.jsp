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
        <jsp:useBean id="FormProrrogacao" scope="session" class="br.com.GestaoAuditoria.forms.FormProrrogacao" />
        <jsp:setProperty name="FormProrrogacao" property="tituloPlanoAcao"/>
        <jsp:setProperty name="FormProrrogacao" property="periodoProrrogacao"/>
        <jsp:setProperty name="FormProrrogacao" property="nomeAuditor"/>
        
    </body>
</html>
