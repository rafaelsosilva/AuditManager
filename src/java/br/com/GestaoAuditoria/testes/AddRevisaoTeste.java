/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.testes;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.Teste;
import br.com.GestaoAuditoria.dao.Dao;

public class AddRevisaoTeste {
    
    public static void main(String args []){
        
        Teste objeto = new Teste();
        Dao dao = new Dao();
        
        objeto.setDescricaoTeste("REVISAO DE ACESSO");
        objeto.setNomeAuditor("RAFAEL SOUZA SILVA");
        objeto.setStatusRevisao("APROVADO");
        objeto.setDescricaoRevisao("REVISADO COM SUCESSO!!!");
        dao.revisaoTeste(objeto);
        
    }
    
}
