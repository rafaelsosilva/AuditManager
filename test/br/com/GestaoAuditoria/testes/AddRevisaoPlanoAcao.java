/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.testes;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.PlanoAcao;
import br.com.GestaoAuditoria.dao.Dao;

public class AddRevisaoPlanoAcao {
    
    public static void main(String args []){
        
        PlanoAcao objeto = new PlanoAcao ();
        Dao dao = new Dao();
        
        objeto.setDescricaoPlanoAcao("REVISAO DE ACESSO");
        objeto.setNomeAuditor("RENATA SOUZA SILVA");
        objeto.setStatusRevisao("APROVADO");
        objeto.setDescricaoRevisor("APROVADO COM SUCESSO!!!");
    }
    
}
