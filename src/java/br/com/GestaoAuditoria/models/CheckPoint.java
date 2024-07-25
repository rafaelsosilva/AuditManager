/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.models;

/**
 *
 * @author rafaelsilva
 */
public class CheckPoint {
    
    private String descricaoCheckPoint;
    private String descricaoTipoCheckPoint;
    private String nomeAuditor;
    private String nomeAuditoria;
    
    public void setDescricaoCheckPoint(String descricaoCheckPoint){
        this.descricaoCheckPoint=descricaoCheckPoint;
    }
    
    public String getDescricaoCheckPoint(){
        return this.descricaoCheckPoint;
    }
    
    public void setDescricaoTipoCheckPoint(String descricaoTipoCheckPoint){
        this.descricaoTipoCheckPoint=descricaoTipoCheckPoint;
    }
    
    public String getDescricaoTipoCheckPoint(){
        return this.descricaoTipoCheckPoint;
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
