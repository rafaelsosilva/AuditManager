/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.testes;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.Relatorio;
import br.com.GestaoAuditoria.dao.Dao;

public class AddRelatorio {
    
    public static void main (String args []){
        
        Relatorio objeto = new Relatorio();
        Dao dao = new Dao();
        
        objeto.setNomeRelatorio("OPA OPA OPA");
        objeto.setRisco("ALTO");
        objeto.setNomeAuditor("RAFAEL SOUZA SILVA");
        objeto.setNomeAuditoria("2024 - LUXEMBURGO");
        dao.addRelatorio(objeto);
        
    }
    
}
