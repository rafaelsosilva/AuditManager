/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.testes;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.Walkthrough;
import br.com.GestaoAuditoria.dao.Dao;

public class AddWalkthrough {
    
    public static void main (String args []){
        
        Walkthrough objeto = new Walkthrough();
        Dao dao = new Dao();
        
        objeto.setDescricaoWalkthrough("LEVANTAMENTO DE INFORMACOES - 01");
        objeto.setNomeAuditor("RAFAEL SOUZA SILVA");
        objeto.setNomeAuditoria("2024 - LUXEMBURGO");
        objeto.setObjetivo("OPA OPAO PAA");
        objeto.setParticipantes("PARARARARA");
        dao.addWalkthrough(objeto);
    }
    
}
