/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.models;

/**
 *
 * @author rafaelsilva
 */

public class Auditoria {
    
    private String nomeAuditoria;
    private String dataInicio;
    private String dataFim;
    private String ano;
    private String nomeResponsavel;
    private String auditoria;
    private String inicio;
    private String previsao;
    private String responsavel;
    
    public void setAuditoria(String auditoria){
        this.auditoria=auditoria;
    }
    
    public String getAuditoria(){
        return this.auditoria;
    }
    
    public void setInicio(String inicio){
        this.inicio=inicio;
    }
    
    public String getInicio(){
        return this.inicio;
    }
    
    public void setPrevisao(String previsao){
        this.previsao=previsao;
    }
    
    public String getPrevisao(){
        return this.previsao;
    }
    
    public void setResponsavel(String responsavel){
        this.responsavel=responsavel;
    }
    
    public String getResponsavel(){
        return this.responsavel;
    }
    
    public void setNomeAuditoria(String nomeAuditoria){
        this.nomeAuditoria=nomeAuditoria;
    }
    
    public String getNomeAuditoria(){
        return this.nomeAuditoria;
    }
    
    public void setDataInicio(String dataInicio){
        this.dataInicio=dataInicio;
    }
    
    public String getDataInicio(){
        return this.dataInicio;
    }
    
    public void setDataFim(String dataFim){
        this.dataFim=dataFim;
    }
    
    public String getDataFim(){
        return this.dataFim;
    }
    
    public void setNomeResponsavel(String nomeResponsavel){
        this.nomeResponsavel=nomeResponsavel;
    }
    
    public String getNomeResponsavel(){
        return this.nomeResponsavel;
    }
    
    public void setAno(String ano){
        this.ano=ano;
    }
    
    public String getAno(){
        return this.ano;
    }

}
