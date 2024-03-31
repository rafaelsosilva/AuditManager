/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.testes;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.MatrizRisco;
import br.com.GestaoAuditoria.dao.Dao;

public class AddMatrizRisco {
    
    public static void main(String args []){
        
        MatrizRisco objeto = new MatrizRisco();
        Dao dao = new Dao();
        
        objeto.setNomeMatrizRisco("MATRIZ DE RISCOS DEVSECOPS V2");
        objeto.setNomeAuditor("RENATA SOUZA SILVA");
        objeto.setNomeAuditoria("DEVSECOPS");
        dao.addMatrizRisco(objeto);
        
    }
    
}
