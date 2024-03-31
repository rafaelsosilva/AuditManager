/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.models;

/**
 *
 * @author rafaelsilva
 */
public class PlanoAcao {
    
    private String descricaoApontamento;
    private String descricaoPlanoAcao;
    private String dataInicio;
    private String dataVencimento;
    private String nomeAuditor;
    
    public void setDescricaoApontamento(String descricaoApontamento){
        this.descricaoApontamento=descricaoApontamento;
    }
    
    public String getDescricaoApontamento(){
        return this.descricaoApontamento;
    }
    
    public void setDescricaoPlanoAcao(String descricaoPlanoAcao){
        this.descricaoPlanoAcao=descricaoPlanoAcao;
    }
    
    public String getDescricaoPlanoAcao(){
        return this.descricaoPlanoAcao;
    }
    
    public void setDataInicio(String dataInicio){
        this.dataInicio=dataInicio;
    }
    
    public String getDataInicio(){
        return this.dataInicio;
    }
    
    public void setDataVencimento(String dataVencimento){
        this.dataVencimento=dataVencimento;
    }
    
    public String getDataVenvimento(){
        return this.dataVencimento;
    }
    
    public void setNomeAuditor(String nomeAuditor){
        this.nomeAuditor=nomeAuditor;
    }
    
    public String getNomeAuditor(){
        return this.nomeAuditor;
    }
}
