/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.models;

/**
 *
 * @author rafaelsilva
 */
public class Relatorio {
    
    private String nomeRelatorio;
    private String risco;
    private String nomeAuditoria;
    private String nomeAuditor;
    
    public void setNomeRelatorio(String nomeRelatorio){
        this.nomeRelatorio=nomeRelatorio;
    }
    
    public String getNomeRelatorio(){
        return this.nomeRelatorio;
    }
    
    public void setRisco(String risco){
        this.risco=risco;
    }
    
    public String  getRisco(){
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
