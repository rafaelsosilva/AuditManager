/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.models;

/**
 *
 * @author rafaelsilva
 */
public class Teste {
    
    private String descricaoTeste;
    private String nomeAuditor;
    private String nomeAuditoria;
    private String statusRevisao;
    private String descricaoRevisao;
    
    public void setDescricaoTeste(String descricaoTeste){
        this.descricaoTeste=descricaoTeste;
    }
    
    public String getDescricaoTeste(){
        return this.descricaoTeste;
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
    
    public void setStatusRevisao(String statusRevisao){
        this.statusRevisao=statusRevisao;
    }
    
    public String getStatusRevisao(){
        return this.statusRevisao;
    }
    
    public void setDescricaoRevisao(String descricaoRevisao){
        this.descricaoRevisao=descricaoRevisao;
    }
    
    public String getDescricaoRevisao(){
        return this.descricaoRevisao;
    }
    
}
