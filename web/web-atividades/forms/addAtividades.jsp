<%-- 
    Document   : addAtividade
    Created on : 09/12/2016, 17:43:01
    Author     : 93261085
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.imr.modelo.Usuarios" %>
<%@page import="br.com.imr.modelo.Prioridade" %>
<%@page import="br.com.imr.modelo.Fila" %>
<%@page import="br.com.imr.dao.Dao" %>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incidentes</title>
    </head>

    <body>

        <% Dao dao = new Dao(); %>

        <form id="formCadastro" name="formCadastro" role="form" class="form-horizontal" method="post">

            <div id="form_retorno">

                <div class="form-group">
                    <label class="col-sm-2 control-label">Incidente</label>
                    <div class="col-md-4">
                        <input class="form-control input-md" placeholder="Incidente"  type="text" id="descricaoAtividade" value="" required />
                    </div>
                </div>


                

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Solicitante</label>
                        <div class="col-md-4">
                            <select id="nomeSolicitante" class="form-control input-md" required>
                                <option value="">Selecione uma opção</option>
                                <%
                                    List<Usuarios> lista = dao.getNomeSolicitante();

                                    for (Usuarios usuario : lista) {
                                %>

                                <option value="<%=usuario.getNomeUsuario()%>">
                                    <%=usuario.getNomeSolicitante()%>
                                </option>

                                <%
                                    }
                                %>
                            </select>
                        </div>
                    </div>


                    

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Prioridade</label>
                            <div class="col-md-4">
                                <select id="descricaoPrioridade" class="form-control input-md" required>
                                <option value="">Selecione uma opção</option>
                                
                                <%
                                    List<Prioridade> listaPrioridade = dao.getDescricaoPrioridade();

                                    for (Prioridade prioridade : listaPrioridade) {
                                %>

                                <option value="<%=prioridade.getDescricaoPrioridade()%>">
                                    <%=prioridade.getDescricaoPrioridade()%>
                                </option>

                                <%
                                    }
                                %>
                            </select>
                            </div>
                        </div>


                        

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Equipe</label>
                                <div class="col-md-4">
                                    <select id="descricaoFila" class="form-control input-md" required>
                                <option value="">Selecione uma opção</option>
                                
                                <%
                                    List<Fila> listaFila = dao.getDescricaoFila();

                                    for (Fila fila : listaFila) {
                                %>

                                <option value="<%=fila.getDescricaoFila()%>">
                                    <%=fila.getDescricaoFila()%>
                                </option>

                                <%
                                    }
                                %>
                            </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <button class="btn btn-primary" onclick="cadastrarAtividade()">Cadastrar</button>
                            </div>
                        </div>
                        </form>
                        </body>
                        </html>
