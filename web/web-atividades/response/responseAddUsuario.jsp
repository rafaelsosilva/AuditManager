<%-- 
    Document   : responseAddUsuario
    Created on : 15/12/2016, 13:41:56
    Author     : 93261085
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="FormAddUsuario" scope="session" class="br.com.imr.forms.FormAddUsuario" />
        <jsp:setProperty name="FormAddUsuario" property="nomeUsuario" />
        <jsp:setProperty name="FormAddUsuario" property="nomeCompleto" />
        <jsp:setProperty name="FormAddUsuario" property="dataNascimento" />
        <jsp:setProperty name="FormAddUsuario" property="idade" />
        <jsp:setProperty name="FormAddUsuario" property="cpf" />
        <jsp:setProperty name="FormAddUsuario" property="descricaoCargo" />
        <jsp:setProperty name="FormAddUsuario" property="descricaoDepartamento" />
    </body>
</html>
