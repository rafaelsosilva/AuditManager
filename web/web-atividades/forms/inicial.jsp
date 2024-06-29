<%-- 
    Document   : inicial
    Created on : 20/07/2016, 17:53:28
    Author     : 93137609
--%>

<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row">
            <div class="col-lg-4">
                <h3>Bem Vindo!
               
                </h3>
                <br>
                <p>
                    Ao sistema de controle de RDM
                </p>
                <br><Br><br>

                Contatos:<br>
                <p><span class="glyphicon glyphicon-earphone" aria-hidden="true"> 1195872-6101/ 1198781-6388</span></p>
                <p><span class="glyphicon glyphicon-envelope" aria-hidden="true"> contato@rcmanager.com.br</span></p>
            </div>
            <div class="col-lg-4">
                <% if(session.getAttribute("user") == null){ %>
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <center>Autenticação de Usuário</center>
                    </div>
                    <form action="/web-rdm/Autenticar" method="post" onSubmit="return Validate()">
                        <div class="panel-footer">
                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>
                                <input type="text" name="usuario" class="form-control" placeholder="Usuário" aria-describeby="basic-addon1" required>                            
                            </div>
                            <div class="input-group">
                                <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-lock"></span></span>
                                <input type="password" name="senha" class="form-control" placeholder="Password" aria-describeby="basic-addon1" required>
                            </div>
                            <div class="input-group right">
                                <div class="text-right">
                                    <input type="submit" class="btn btn-default" value="Logar">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <% } %>
            </div>
        </div>
        <br><br><br>       
    </body>
</html>
