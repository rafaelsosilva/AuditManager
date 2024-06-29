<%-- 
    Document   : formInputRdm
    Created on : 18/07/2016, 17:42:31
    Author     : 93261085
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>IMR - Incident Manager Report</title>
        <link rel="shortcut icon" href="IMG/favicon.jpg" />
        
        <link href="CSS/inicial.css" rel="stylesheet" type="text/css"/>
        <script src="JS/dao.js" type="text/javascript"></script>

        <!-- Inclusão do Bootstrap -->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Latest compiled and minified JavaScript -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        
    </head>
    <body>

        <div class="container">

            <h2 id="cabecalho" class="panel panel-primary">
                <div class="row">
                    <div class="col-lg-9">
                        <label class='logo'>IMR - Incident Manager Report</label>
                    </div>
                    
                </div>

            </h2>

            <ul class="nav nav-pills">
                
                <li class="<%=request.getAttribute("css_botao")%>"><a data-toggle="pill" href="#menu1">Incidentes</a></li>
                <li class="<%=request.getAttribute("css_botao")%>"><a data-toggle="pill" href="#menu2">Usuários</a></li>                
                <li class="<%=request.getAttribute("css_botao")%>"><a data-toggle="pill" href="#menu3">Fila de Incidentes</a></li>                
            </ul>
            <br>
            <div class="tab-content">
                <div id="home" class="tab-pane fade in active">   
                       
                </div>
                <div id="menu1" class="tab-pane fade">
                    <jsp:include page="forms/addAtividades.jsp"/>              
                </div>
                
                <div id="menu2" class="tab-pane fade">
                     <jsp:include page="forms/addUsuario.jsp"/>  
                </div>
                
                 <div id="menu3" class="tab-pane fade">
                     <jsp:include page="forms/fila.jsp"/>
                </div>
                
                <div class="modal fade" id="retorno_acao" tabindex="-1" role="dialog" aria-labelledby="retorno_acao">
                    <div class="modal-dialog" role="document">
                        <div id="retorno_atualiza"></div>
                    </div>
                </div>

            </div>
        </div>

    </body>
</html>
