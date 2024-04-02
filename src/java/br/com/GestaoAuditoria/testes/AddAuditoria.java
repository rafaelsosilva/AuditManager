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

public class AddAuditoria {
    
    public static void main (String args []){
        
        Auditoria objeto = new Auditoria();
        Dao dao = new Dao();
        
        objeto.setNomeAuditoria("ICAAP");
        objeto.setDataInicio("01/01/2024");
        objeto.setDataFim("01/05/2024");
        objeto.setAno("2024");
        objeto.setNomeResponsavel("RAFAEL SOUZA SILVA");
        dao.addAuditoria(objeto);
        
    }
    
}
