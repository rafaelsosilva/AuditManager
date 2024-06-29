/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.forms;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.Auditoria;
import br.com.GestaoAuditoria.dao.Dao;

public class FormAuditoria {
    
    private String nomeAuditoria;
    private String dataInicio;
    private String dataFim;
    private String ano;
    private String nomeResponsavel;
    private Auditoria auditoria;
    private Dao dao;
    
    public FormAuditoria(){
        
        this.nomeAuditoria="";
        this.dataInicio="";
        this.dataFim="";
        this.nomeResponsavel="";
        
        this.auditoria = new Auditoria();
        this.dao = new Dao();
        
    }
    
    public void setNomeAuditoria(String nomeAuditoria){
        this.nomeAuditoria=nomeAuditoria;
        this.auditoria.setNomeAuditoria(nomeAuditoria);
    }
    
    public String getNomeAuditoria(){
        return this.nomeAuditoria;
    }
    
    public void setDataInicio(String dataInicio){
        this.dataInicio=dataInicio;
        this.auditoria.setDataInicio(dataInicio);
    }
    
    public String getDataInicio(){
        return this.dataInicio;
    }
    
    public void setDataFim(String dataFim){
        this.dataFim=dataFim;
        this.auditoria.setDataFim(dataFim);
    }
    
    public String getDataFim(){
        return this.dataFim;
    }
    
    public void setNomeResponsavel(String nomeResponsavel){
        this.nomeResponsavel=nomeResponsavel;
        this.auditoria.setNomeResponsavel(nomeResponsavel);
        this.dao.addAuditoria(auditoria);
    }
    
    public String getNomeResponsavel(){
        return this.nomeResponsavel;
    }
    
}
