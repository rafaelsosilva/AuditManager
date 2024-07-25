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
        <jsp:useBean id="FormPlanoAcao" scope="session" class="br.com.GestaoAuditoria.forms.FormPlanoAcao" />
        <jsp:setProperty name="FormPlanoAcao" property="tituloPlanoAcao"/>
        <jsp:setProperty name="FormPlanoAcao" property="tituloApontamento"/>
        <jsp:setProperty name="FormPlanoAcao" property="descricaoPlanoAcao"/>
        <jsp:setProperty name="FormPlanoAcao" property="dataInicio"/>
        <jsp:setProperty name="FormPlanoAcao" property="dataVencimento"/>
        <jsp:setProperty name="FormPlanoAcao" property="nomeAuditor"/>
    </body>
</html>
