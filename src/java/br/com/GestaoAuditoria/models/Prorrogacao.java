/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.models;

/**
 *
 * @author rafaelsilva
 */
public class Prorrogacao {
    
    private String descricaoPlanoAcao;
    private String tituloPlanoAcao;
    private String periodoPlanoAcao;
    private String periodoProrrogacao;
    private String nomeAuditor;
    private String nomeAprovador;
    private String dataAprovacao;
    private String statusRevisao;
    private String descricaoRevisao;
    
    public void setTituloPlanoAcao(String tituloPlanoAcao){
        this.tituloPlanoAcao=tituloPlanoAcao;
    }
    
    public String getTituloPlanoAcao(){
        return this.tituloPlanoAcao;
    }
    
    public void setPeriodoProrrogacao(String periodoProrrogacao){
        this.periodoPlanoAcao=periodoProrrogacao;
    }
    
    public String getPeriodoProrrogacao(){
        return this.periodoProrrogacao;
    }
    
    public void setDescricaoPlanoAcao(String descricaoPlanoAcao){
        this.descricaoPlanoAcao=descricaoPlanoAcao;
    }
    
    public String getDescricaoPlanoAcao(){
        return this.descricaoPlanoAcao;
    }
    
    public void setPeriodoPlanoAcao(String periodoPlanoAcao){
        this.periodoPlanoAcao=periodoPlanoAcao;
    }
    
    public String getPeriodoPlanoAcao(){
        return this.periodoPlanoAcao;
    }
    
    public void setNomeAuditor(String nomeAuditor){
        this.nomeAuditor=nomeAuditor;
    }
    
    public String getNomeAuditor(){
        return this.nomeAuditor;
    }
    
    public void setNomeAprovador(String nomeAprovador){
        this.nomeAprovador=nomeAprovador;
    }
    
    public String getNomeAprovador(){
        return this.nomeAprovador;
    }
    
    public void setDataAprovacao(String dataAprovacao){
        this.dataAprovacao=dataAprovacao;
    }
    
    public String getDataAprovacao(){
        return this.dataAprovacao;
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
