/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.models;

/**
 *
 * @author rafaelsilva
 */
public class Walkthrough {
    
    private String descricaoWalkthrough;
    private String nomeAuditor;
    private String nomeAuditoria;
    private String participantes;
    private String objetivo;
    
    public void setObjetivo(String objetivo){
        this.objetivo=objetivo;  
    }
    
    public String getObjetivo(){
        return this.objetivo;
    }
    
    public void setParticipantes(String participantes){
        this.participantes=participantes;  
    }
    
    public String getParticipantes(){
        return this.participantes;
    }
    
    public void setDescricaoWalkthrough(String descricaoWalkthrough){
        this.descricaoWalkthrough=descricaoWalkthrough;  
    }
    
    public String getDescricaoWalkthrough(){
        return this.descricaoWalkthrough;
    }
    
    public void setNomeAuditor(String nomeAuditor){
        this.nomeAuditor=nomeAuditor;
    }
    
    public String getNomeAuditor(){
        return this.nomeAuditor;
    }
    
    public void setNomeAuditoria(String nomeAuditoria){
        this.nomeAuditoria=nomeAuditoria;
    }
    
    public String getNomeAuditoria(){
        return this.nomeAuditoria;
    }
    
}
