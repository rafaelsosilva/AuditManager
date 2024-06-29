<%-- 
    Document   : fila
    Created on : 14/12/2016, 19:18:09
    Author     : 93261085
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.imr.dao.Dao"%>
<%@page import="br.com.imr.modelo.Fila"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fila</title>
    </head>
   <body>       
       
    <br>
    
    <table  class="table table-striped">
        <thead>
            <tr style="text-align:'center'">
                <th>Nº Incidente</th>
                <th>Descrição</th>
                <th>Solicitante</th>
                <th>Departamento</th>
                <th>Última Atualização</th>
                <th>Fila</th>
                <th colspan='2' ><center>Ações</center></th>
            </tr>
        </thead>
        <%
            
            Dao dao = new Dao();
            List<Fila> lista = dao.getFilaGeral();

            for(Fila objeto : lista) {
        %>
   
        <tbody>
            <tr>
                <td align=left><%=objeto.getIdAtividade()%></td>
                <td align=left><%=objeto.getDescricaoAtividade()%></td>
                <td align=left><%=objeto.getNomeSolicitante()%></td>
                <td align=left><%=objeto.getDescricaoDepartamento()%></td>
                <td align=left><%=objeto.getLastUpdate()%></td>
                <td align=left><%=objeto.getDescricaoFila()%></td>
                <td>
                    <button id="editar" type="button" class="btn btn-primary" data-toggle="modal" data-target="#retorno_acao" >
                        <span class="glyphicon glyphicon-pencil" aria-hidden="true" style='cursor: pointer'></span>
                    </button></td>
                <td>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#retorno_acao" >
                        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                    </button>
                    </td>
            </tr>
        </tbody>
        
        <%
            }
        %>
        </table>
    </body>
</html>
