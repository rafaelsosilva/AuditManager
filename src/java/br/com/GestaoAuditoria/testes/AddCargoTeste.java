/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.testes;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.Cargo;
import br.com.GestaoAuditoria.dao.Dao;

public class AddCargoTeste {
    
    public static void main (String args []){
        
        Cargo cargo = new Cargo();
        Dao dao = new Dao();
        
        cargo.setDescricaoCargo("COORDENADOR");
        dao.addCargo(cargo);
                
    }
    
}
