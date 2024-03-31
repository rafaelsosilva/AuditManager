/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.testes;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.CheckPoint;
import br.com.GestaoAuditoria.dao.Dao;

public class AddCheckPoint {
    
    public static void main(String args []){
        
        CheckPoint objeto = new CheckPoint();
        Dao dao = new Dao();
        
        objeto.setDescricaoCheckPoint("CKP2 - FECHAMENTO DE TRABALHO");
        objeto.setNomeAuditor("RAFAEL SOUZA SILVA");
        objeto.setNomeAuditoria("DEVSECOPS");
        dao.addCheckPoint(objeto);
    }
    
}
