<%-- 
    Document   : responseAddAtividades
    Created on : 09/12/2016, 17:48:15
    Author     : 93261085
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>responseAddAtividade</title>
    </head>
    <body>
        <jsp:useBean id="FormAddAtividades" scope="session" class="br.com.imr.forms.FormAddAtividades" />
        <jsp:setProperty name="FormAddAtividades" property="descricaoAtividade"/>
        <jsp:setProperty name="FormAddAtividades" property="nomeSolicitante"/>
        <jsp:setProperty name="FormAddAtividades" property="descricaoPrioridade"/>
        <jsp:setProperty name="FormAddAtividades" property="descricaoFila"/>
    </body>
</html>
