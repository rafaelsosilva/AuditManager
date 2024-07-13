/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.testes;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.Colaborador;
import br.com.GestaoAuditoria.dao.Dao;
       
public class AddColaborador {
    
    public static void main(String args []){
        
        Colaborador objeto = new Colaborador();
        Dao dao = new Dao();
        
        objeto.setNomeColaborador("RENATA SOUZA SILVA");
        objeto.setStatus("ATIVO");
        objeto.setDescricaoCargo("AUDITOR PLENO");
        objeto.setDescricaoArea("AUDITORIA");
        dao.addColaborador(objeto);
        
    }
    
}
