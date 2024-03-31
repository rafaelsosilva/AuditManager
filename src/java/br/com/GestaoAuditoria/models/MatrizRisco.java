/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.models;

/**
 *
 * @author rafaelsilva
 */
public class MatrizRisco {
    
    private String nomeMatrizRisco;
    private String nomeAuditor;
    private String nomeAuditoria;
    
    public void setNomeMatrizRisco(String nomeMatrizRisco){
        this.nomeMatrizRisco=nomeMatrizRisco;
    }
    
    public String getNomeMatrizRisco(){
        return this.nomeMatrizRisco;
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
