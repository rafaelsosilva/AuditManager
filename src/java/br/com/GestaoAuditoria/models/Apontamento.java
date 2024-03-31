/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.models;

/**
 *
 * @author rafaelsilva
 */
public class Apontamento {
    
    private String descricaoApontamento;
    private String risco;
    private String nomeAuditor;
    private String nomeAuditoria;
    
    public void setDescricaoApontamento(String descricaoApontamento){
        this.descricaoApontamento=descricaoApontamento;
    }
    
    public String getDescricaoApontamento(){
        return this.descricaoApontamento;
    }
    
    public void setRisco(String risco){
        this.risco=risco;
    }
    
    public String getRisco(){
        return this.risco;
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
