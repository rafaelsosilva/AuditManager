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
    private String periodoPlanoAcao;
    private String nomeAuditor;
    private String nomeAprovador;
    private String dataAprovacao;
    
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
}
