/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.forms;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.dao.Dao;
import br.com.GestaoAuditoria.models.Walkthrough;

public class FormWalkthrough {
    
    private String objetivo;
    private String participantes;
    private String descricaoWalkthrough;
    private String nomeAuditoria;
    private String nomeAuditor;
    private Walkthrough objeto;
    private Dao dao;
    
    public FormWalkthrough(){
        
        this.objetivo="";
        this.participantes="";
        this.descricaoWalkthrough="";
        this.nomeAuditoria="";
        this.nomeAuditor="";
        
        this.objeto = new Walkthrough();
        this.dao = new Dao();
    }
    
    public void setObjetivo(String objetivo){
        this.objetivo=objetivo;
        this.objeto.setObjetivo(objetivo);
    }
    
    public String getObjetivo(){
        return this.objetivo;
    }
    
    public void setParticipantes(String participantes){
        this.participantes=participantes;  
        this.objeto.setParticipantes(participantes);
    }
    
    public String getParticipantes(){
        return this.participantes;
    }
    
    public void setDescricaoWalkthrough(String descricaoWalkthrough){
        this.descricaoWalkthrough=descricaoWalkthrough;  
        this.objeto.setDescricaoWalkthrough(descricaoWalkthrough);
    }
    
    public String getDescricaoWalkthrough(){
        return this.descricaoWalkthrough;
    }
    
    public void setNomeAuditoria(String nomeAuditoria){
        this.nomeAuditoria=nomeAuditoria;
        this.objeto.setNomeAuditoria(nomeAuditoria);
    }
    
    public String getNomeAuditoria(){
        return this.nomeAuditoria;
    }
    
    public void setNomeAuditor(String nomeAuditor){
        this.nomeAuditor=nomeAuditor;
        this.objeto.setNomeAuditor(nomeAuditor);
        this.dao.addWalkthrough(objeto);
    }
    
    public String getNomeAuditor(){
        return this.nomeAuditor;
    }
    
    
    
}
