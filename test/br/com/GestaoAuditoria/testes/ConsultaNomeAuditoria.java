/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.testes;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.Auditoria;
import br.com.GestaoAuditoria.dao.Dao;

public class ConsultaNomeAuditoria {
    
    public static void main (String args []){
        
        Auditoria objeto = new Auditoria();
        objeto.setNomeAuditoria("nomeAuditoria");
        Dao dao = new Dao();
        
        System.out.print("NOME: "+dao.getNomeAuditoria());
        
    }
    
}
