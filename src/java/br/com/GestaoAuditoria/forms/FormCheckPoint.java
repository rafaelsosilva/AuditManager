/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.forms;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.CheckPoint;
import br.com.GestaoAuditoria.dao.Dao;

public class FormCheckPoint {
    
    private String descricaoTipoCheckPoint;
    private String nomeAuditor;
    private String nomeAuditoria;
    private CheckPoint objeto;
    private Dao dao;
    
    public FormCheckPoint(){
        
        this.descricaoTipoCheckPoint="";
        this.nomeAuditor="";
        this.nomeAuditoria="";
        this.objeto = new CheckPoint();
        this.dao = new Dao();
        
    }
    
    public void setDescricaoTipoCheckPoint(String descricaoTipoCheckPoint){
        this.descricaoTipoCheckPoint=descricaoTipoCheckPoint;
        this.objeto.setDescricaoTipoCheckPoint(descricaoTipoCheckPoint);
    }
    
    public String getDescricaoTipoCheckPoint(){
        return this.descricaoTipoCheckPoint;
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
        this.dao.addCheckPoint(objeto);
    }
    
    public String getNomeAuditoria(){
        return this.nomeAuditoria;
    }
    
}
