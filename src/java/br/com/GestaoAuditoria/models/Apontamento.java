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
    private String statusRevisao;
    private String descricaoRevisao;
    private String tituloApontamento;
    private String causa;
    private String consequencia;
    private String recomendacao;
    
    public void setRecomendacao(String recomendacao){
        this.recomendacao=recomendacao;
    }
    
    public String getRecomendacao(){
        return this.recomendacao;
    }
    
    public void setTituloApontamento(String tituloApontamento){
        this.tituloApontamento=tituloApontamento;
    }
    
    public String getTituloApontamento(){
        return this.tituloApontamento;
    }
    
    public void setCausa(String causa){
        this.causa=causa;
    }
    
    public String getCausa(){
        return this.causa;
    }
    
    public void setConsequencia(String consequencia){
        this.consequencia=consequencia;
    }
    
    public String getConsequencia(){
        return this.consequencia;
    }
    
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
