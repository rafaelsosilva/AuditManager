/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.testes;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.Area;
import br.com.GestaoAuditoria.dao.Dao;

public class AddArea {
    
    public static void main(String args[]){
        
        Area objeto = new Area();
        Dao dao = new Dao();
        
        objeto.setDescricaoArea("FINANCEIRA");
        dao.addArea(objeto);
        
    }
    
}
