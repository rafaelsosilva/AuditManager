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
    private String nomeResponsavel;
    private String nomeArea;
    private String dataInicio;
    private String dataFim;
    
    public void setNomeAuditoria(String nomeAuditoria){
        this.nomeAuditoria=nomeAuditoria;
    }
    
    public String getNomeAuditoria(){
        return this.nomeAuditoria;
    }
    
    
    public void nomeResponsavel(String nomeResponsavel){
        this.nomeResponsavel=nomeResponsavel;
    }
    
    public String getNomeResponsavel(){
        return this.nomeResponsavel;
    }
    
    public void setNomeArea(String nomeArea){
        this.nomeArea=nomeArea;
    }
    
    public String getNomeArea(){
        return this.nomeArea;
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

}
