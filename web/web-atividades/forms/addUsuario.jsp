<%-- 
    Document   : addUsuario
    Created on : 14/12/2016, 16:57:34
    Author     : 93261085
--%>

<%@page import="br.com.imr.modelo.Cargo" %>
<%@page import="br.com.imr.modelo.Departamento" %>
<%@page import="br.com.imr.dao.Dao" %>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
    </head>
    <body>
        
        <% Dao dao = new Dao(); %>
        
        <form id="formCadastro" name="formCadastro" role="form" class="form-horizontal" method="post">

            <div id="form_retorno">

                <div class="form-group">
                    <label class="col-sm-2 control-label">Login</label>
                    <div class="col-md-4">
                        <input class="form-control input-md" placeholder="Login"  type="text" id="nomeUsuario" value="" required />
                    </div>
                </div>



                <div class="form-group">
                    <label class="col-sm-2 control-label">Nome Completo</label>
                    <div class="col-md-4">
                        <input class="form-control input-md" placeholder="Nome Completo"  type="text" id="nomeCompleto" value="" required />
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-sm-2 control-label">Data de Nascimento</label>
                    <div class="col-md-4">
                        <input class="form-control input-md" placeholder="Data de Nascimento"  type="text" id="dataNascimento" value="" required />
                    </div>
                </div>



                <div class="form-group">
                    <label class="col-sm-2 control-label">Idade</label>
                    <div class="col-md-4">
                        <input class="form-control input-md" placeholder="Idade"  type="text" id="idade" value="" required />
                    </div>
                </div>




                <div class="form-group">
                    <label class="col-sm-2 control-label">CPF</label>
                    <div class="col-md-4">
                        <input class="form-control input-md" placeholder="CPF"  type="text" id="cpf" value="" required />
                    </div>
                </div>



                <div class="form-group">
                        <label class="col-sm-2 control-label">Solicitante</label>
                        <div class="col-md-4">
                            <select id="descricaoCargo" class="form-control input-md" required>
                                <option value="">Selecione uma opção</option>
                                <%
                                    List<Cargo> lista = dao.getDescricaoCargo();

                                    for (Cargo objeto : lista) {
                                %>

                                <option value="<%=objeto.getDescricaoCargo()%>">
                                    <%=objeto.getDescricaoCargo()%>
                                </option>

                                <%
                                    }
                                %>
                            </select>
                        </div>
                    </div>



                <div class="form-group">
                        <label class="col-sm-2 control-label">Solicitante</label>
                        <div class="col-md-4">
                            <select id="descricaoDepartamento" class="form-control input-md" required>
                                <option value="">Selecione uma opção</option>
                                <%
                                    List<Departamento> listaDepartamento = dao.getDescricaoDepartamento();

                                    for (Departamento departamento : listaDepartamento) {
                                %>

                                <option value="<%=departamento.getDescricaoDepartamento()%>">
                                    <%=departamento.getDescricaoDepartamento()%>
                                </option>

                                <%
                                    }
                                %>
                            </select>
                        </div>
                    </div>

                <div class="form-group">
                    <button class="btn btn-primary" onclick="cadastrarUsuario()">Cadastrar</button>
                </div>

            </div>
        </form>
    </body>
</html>
