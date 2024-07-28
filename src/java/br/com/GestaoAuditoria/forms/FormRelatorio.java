/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.forms;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.Relatorio;
import br.com.GestaoAuditoria.dao.Dao;

public class FormRelatorio {
    
    private String nomeRelatorio;
    private String risco;
    private String nomeAuditoria;
    private String nomeAuditor;
    
    private Relatorio objeto;
    private Dao dao;
    
    public FormRelatorio(){
        
        this.nomeRelatorio="";
        this.risco="";
        this.nomeAuditor="";
        this.nomeAuditoria="";
        
        this.objeto = new Relatorio();
        this.dao = new Dao();
    }
    
    public void setNomeRelatorio(String nomeRelatorio){
        this.nomeRelatorio=nomeRelatorio;
        this.objeto.setNomeRelatorio(nomeRelatorio);
    }
    
    public String getNomeRelatorio(){
        return this.nomeRelatorio;
    }
    
    public void setRisco(String risco){
        this.risco=risco;
        this.objeto.setRisco(risco);
    }
    
    public String  getRisco(){
        return this.risco;
    }
    
    public void setNomeAuditor(String nomeAuditor){
        this.nomeAuditor=nomeAuditor;
        this.objeto.setNomeAuditor(nomeAuditor);
    }
    
    public String getNomeAuditor(){
        return this.nomeAuditor;
    }
    
    public void setNomeAuditoria(String nomeAuditoria){
        this.nomeAuditoria=nomeAuditoria;
        this.objeto.setNomeAuditoria(nomeAuditoria);
        this.dao.addRelatorio(objeto);
    }
    
    
    public String getNomeAuditoria(){
        return this.nomeAuditoria;
    }
    
}
