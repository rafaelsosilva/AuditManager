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

public class AddRevisaoProrrogacao {
    
    public static void main(String args []){
        
        Prorrogacao objeto = new Prorrogacao ();
        Dao dao = new Dao();
        
        objeto.setDescricaoPlanoAcao("REVISAO DE ACESSO");
        objeto.setNomeAuditor("RAFAEL SOUZA SILVA");
        objeto.setStatusRevisao("APROVADO");
        objeto.setDescricaoRevisao("REVISADO COM SUCESSO!!!");
        dao.revisaoProrrogacao(objeto);
    }
    
}
