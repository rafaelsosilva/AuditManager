/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.forms;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.Apontamento;
import br.com.GestaoAuditoria.dao.Dao;

public class FormApontamento {
    
    private String descricaoApontamento;
    private String risco;
    private String nomeAuditor;
    private String nomeAuditoria;
    private String causa;
    private String consequencia;
    private String recomendacao;
    private Apontamento objeto;
    private Dao dao;
    
    public FormApontamento(){     
        
        this.descricaoApontamento="";
        this.risco="";
        this.nomeAuditor="";
        this.nomeAuditoria="";
        this.causa="";
        this.consequencia="";
        this.recomendacao="";
        
        this.objeto = new Apontamento();
        this.dao = new Dao();
        
    }
    
    public void setDescricaoApontamento(String descricaoApontamento){        
        this.descricaoApontamento=descricaoApontamento;
        this.objeto.setDescricaoApontamento(descricaoApontamento);
    }
    
    public String getDescricaoApontamento(){
        return this.descricaoApontamento;
    }
    
    public void setRisco(String risco){
        this.risco=risco;
        this.objeto.setRisco(risco);
    }
    
    public String getRisco(){
        return this.risco;
    }
    
    public void setCausa(String causa){
        this.causa=causa;
        this.objeto.setCausa(causa);
    }
    
    public String getCausa(){
        return this.causa;
    }
    
    public void setConsequencia(String consequencia){
        this.consequencia=consequencia;
        this.objeto.setConsequencia(consequencia);
    }
    
    public String getConsequencia(){
        return this.consequencia;
    }
    
    public void setRecomendacao(String recomendacao){
        this.recomendacao=recomendacao;
        this.objeto.setRecomendacao(recomendacao);
    }
    
    public String getRecomendacao(){
        return this.recomendacao;
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
        this.dao.addApontamento(objeto);
   
    }
    
    public String getNomeAuditoria(){
        return this.nomeAuditoria;
    }
    
    
    
  
}
