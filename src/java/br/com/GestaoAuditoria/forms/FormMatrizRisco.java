/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.forms;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.MatrizRisco;
import br.com.GestaoAuditoria.dao.Dao;

public class FormMatrizRisco {
    
    private String nomeMatrizRisco;
    private String nomeAuditor;
    private String nomeAuditoria;
    private MatrizRisco objeto;
    private Dao dao;
    
    public FormMatrizRisco(){
        
        this.nomeMatrizRisco="";
        this.nomeAuditor="";
        this.nomeAuditoria="";
        
        this.objeto = new MatrizRisco();
        this.dao = new Dao();
    }
    
    public void setNomeMatrizRisco(String nomeMatrizRisco){
        this.nomeMatrizRisco=nomeMatrizRisco;
        this.objeto.setNomeMatrizRisco(nomeMatrizRisco);
    }
    
    public String getNomeMatrizRisco(){
        return this.nomeMatrizRisco;
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
        this.dao.addMatrizRisco(objeto);
    }
    
    public String getNomeAuditoria(){
        return this.nomeAuditoria;
    }
    
}
