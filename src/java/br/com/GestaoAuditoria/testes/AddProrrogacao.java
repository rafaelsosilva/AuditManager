/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.testes;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.Prorrogacao;
import br.com.GestaoAuditoria.dao.Dao;

public class AddProrrogacao {
    
    public static void main(String args []){
        
        Prorrogacao objeto = new Prorrogacao();
        Dao dao = new Dao();
        
        objeto.setDescricaoPlanoAcao("ATUALIZAR CERTIFICADO DIGITAL");
        objeto.setPeriodoPlanoAcao("180 DIAS");
        objeto.setNomeAuditor("RAFAEL SOUZA SILVA");
        objeto.setNomeAprovador("RENATA SOUZA SILVA");
        objeto.setDataAprovacao("01/02/2024");
        dao.addProrrogacao(objeto);
        
    }
    
}
