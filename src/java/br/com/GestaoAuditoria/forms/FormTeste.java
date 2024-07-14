/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.forms;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.Teste;
import br.com.GestaoAuditoria.dao.Dao;

public class FormTeste {
    
    private String descricaoTeste;
    private String nomeAuditor;
    private String nomeAuditoria;
    private Teste objeto;
    private Dao dao;
            
    
    public FormTeste(){
        
        this.descricaoTeste="";
        this.nomeAuditor="";
        this.nomeAuditoria="";
        this.objeto = new Teste();
        this.dao = new Dao();
        
    }
    
    public void setDescricaoTeste(String descricaoTeste){
        this.descricaoTeste=descricaoTeste;
        this.objeto.setDescricaoTeste(descricaoTeste);
    }
    
    public String getDescricaoTeste(){
        return this.descricaoTeste;
    }
    
    public void setNomeAuditor(String nomeAuditor){
        this.nomeAuditor=nomeAuditor;
        this.objeto.setNomeAuditor(nomeAuditor);
    }
    
    public String getNomeAuditor(){
        return this.nomeAuditor;
    }
    
    public void setNomeAuditoria(String nomeAuditoria){
        this.nomeAuditoria=nomeAuditoria;
        this.objeto.setNomeAuditoria(nomeAuditoria);
        this.dao.addTeste(objeto);
    }
    
    public String getNomeAuditoria(){
        return this.nomeAuditoria;
    }
    
}
