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

public class AddPlanoAcao {
    
    public static void main(String args []){
        
        PlanoAcao objeto = new PlanoAcao();
        Dao dao = new Dao();
        
        objeto.setDescricaoApontamento("CERTIFICADO DIGITAL VENCIDO");
        objeto.setDataInicio("01/04/2024");
        objeto.setDataVencimento("01/10/2024");
        objeto.setDescricaoPlanoAcao("ATUALIZAR CERTIFICADO DIGITAL");
        objeto.setNomeAuditor("RAFAEL SOUZA SILVA");
        dao.addPlanoAcao(objeto);
    }
    
}
