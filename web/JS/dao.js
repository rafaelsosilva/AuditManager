/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function cadastrarAuditoria() {

    var varNomeAuditoria = $("#nomeAuditoria").val();
    var varDataInicio = $("#dataInicio").val();
    var varDataFim = $("#dataFim").val();
    var varNomeResponsavel = $("#nomeResponsavel").val();

    $.ajax({
        type: 'post',
        url: '../responses/responseAuditoria.jsp?nomeAuditoria=' + varNomeAuditoria + '&dataInicio=' + varDataInicio + '&dataFim=' + varDataFim + '&nomeResponsavel=' + varNomeResponsavel,
        success: function (data) {
            Alert("Cadastrado com Sucesso!!");
        }
    });
}