/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * 
 * Desenvolvido por Carlos Henrique de Morais
 */


function validateForm() {
    alert("OK");
    var x = document.forms["formCadastro"]["numeroRdm"].value;
    if (x == null || x == "") {
        
        return false;
    }
}

/* Faz a busca da rdm */
function buscar_rdm(){
    var rdm = $("#id_rdm").val();
    
    $.ajax({  
        type:'post',
        url:'forms/formRelatorioMensal.jsp?rdm='+rdm,
        success:function(data){
            $("#search_rdm").html(data);
        }
    });    
}

function delete_rdm(rdm){
    $.ajax({  
        type:'post',
        url:'forms/formDeleteRdm.jsp?rdm='+rdm,
        success:function(data){
          $("#retorno_atualiza").html(data);
        }
    });
}
function delRdm(rdm){
    $.ajax({  
        type:'post',
        url:'response/responseDeleteRdm.jsp?numeroRdm='+rdm,
        success:function(data){
             
            $("#dform_retorno").html('<br><br><br><br><br><center><h2><label style="color:green">Exclusão efetuada com Sucesso!!!!</label></h2></center><br><br><br><br><br>');          
            buscar_rdm();
        }
    });
}


function atualiza_rdm(rdm){
    $.ajax({  
        type:'post',
        url:'forms/formAtualizaRdm.jsp?rdm='+rdm,
        success:function(data){
          $("#retorno_atualiza").html(data);
        }
    });
}
function closeUpdate(){
    $("#dform_retorno").html('');
    $("#uform_retorno").html('');
    buscar_rdm();
}
function atualizaRdm(){
    var nRdm = $("#unumeroRdm").val();
    var dscRdm = $("#udescricaoRdm").val();
    var datExec = $("#udataExecucao").val();
    var horExec = $("#uhorarioExecucao").val();
    var idResp = $("#uidResponsavel").val();
    var idExec = $("#uidExecutante").val();
    var idStat = $("#uidStatus").val();
    
    
    
    $.ajax({  
        type:'post',
        url:'response/responseUpdateRdm.jsp?numeroRdm='+nRdm+'&descricaoRdm='+unescape(dscRdm)+'&dataExecucao='+datExec+'&horarioExecucao='+horExec+'&idResponsavel='+idResp+'&idExecutante='+idExec+'&idStatus='+idStat,        
        success:function(data){
           
           $("#uform_retorno").html('<br><br><br><br><br><center><h2><label style="color:green">Atualizada com Sucesso!!!!</label></h2></center><br><br><br><br><br>');          
            buscar_rdm();
        }     
    });
}


function cadastrarRdm(){
    var nRdm = $("#numeroRdm").val();
    var dscRdm = $("#descricaoRdm").val();
    var datExec = $("#dataExecucao").val();
    var horExec = $("#horarioExecucao").val();
    var idResp = $("#idResponsavel").val();
    var idExec = $("#idExecutante").val();
    var idStat = $("#idStatus").val();
    
        
    $.ajax({  
        type:'post',
        url:'response/responseInputRdm.jsp?numeroRdm='+nRdm+'&descricaoRdm='+dscRdm+'&dataExecucao='+datExec+'&horarioExecucao='+horExec+'&idResponsavel='+idResp+'&idExecutante='+idExec+'&idStatus='+idStat,        
        success:function(data){
          Alert("Cadastrado com Sucesso!!")
        }     
    });
}

function cadastrarAtividade(){
    var dscAtividade = $("#descricaoAtividade").val();
    var nomSolicitante = $("#nomeSolicitante").val();
    var dscPrioridade = $("#descricaoPrioridade").val();
    var dscFila = $("#descricaoFila").val();

        
    $.ajax({  
        type:'post',
        url:'response/responseAddAtividades.jsp?descricaoAtividade='+dscAtividade+'&nomeSolicitante='+nomSolicitante+'&descricaoPrioridade='+dscPrioridade+'&descricaoFila='+dscFila,        
        success:function(data){
          Alert("Cadastrado com Sucesso!!")
        }     
    });
}


function cadastrarUsuario(){
    var varNomeUsuario = $("#nomeUsuario").val();
    var varNomeCompleto = $("#nomeCompleto").val();
    var varDataNascimento = $("#dataNascimento").val();
    var varIdade = $("#idade").val();
    var varCpf = $("#cpf").val();
    var varDescricaoCargo = $("#descricaoCargo").val();
    var varDescricaoDepartamento = $("#descricaoDepartamento").val();

        
    $.ajax({  
        type:'post',
        url:'response/responseAddUsuario.jsp?nomeUsuario='+varNomeUsuario+'&nomeCompleto='+varNomeCompleto+'&dataNascimento='+varDataNascimento+'&idade='+varIdade+'&cpf='+varCpf+'&descricaoCargo='+varDescricaoCargo+'&descricaoDepartamento='+varDescricaoDepartamento,        
        success:function(data){
          Alert("Cadastrado com Sucesso!!")
        }     
    });
}

$('#autenticacao').modal({
     keyboard: true,
     backdrop: 'static'
 });