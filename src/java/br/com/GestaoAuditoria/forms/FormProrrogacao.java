/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.forms;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.Prorrogacao;
import br.com.GestaoAuditoria.dao.Dao;

public class FormProrrogacao {
    
    private String tituloPlanoAcao;
    private String periodoProrrogacao;
    private String nomeAuditor;
    
    private Prorrogacao objeto;
    private Dao dao;
    
    public FormProrrogacao(){
        this.tituloPlanoAcao="";
        this.periodoProrrogacao="";
        this.nomeAuditor="";
        
        this.objeto = new Prorrogacao();
        this.dao = new Dao();
    }
    
    public void setTituloPlanoAcao(String tituloPlanoAcao){
        this.tituloPlanoAcao=tituloPlanoAcao;
        this.objeto.setTituloPlanoAcao(tituloPlanoAcao);
    }
    
    public String getTituloPlanoAcao(){
        return this.tituloPlanoAcao;
    }
    
    public void setPeriodoProrrogacao(String periodoProrrogacao){
        this.periodoProrrogacao=periodoProrrogacao;
        this.objeto.setPeriodoProrrogacao(periodoProrrogacao);
    }
    
    public String getPeriodoProrrogacao(){
        return this.periodoProrrogacao;
    }
    
    public void setNomeAuditor(String nomeAuditor){
        this.nomeAuditor=nomeAuditor;
        this.objeto.setNomeAuditor(nomeAuditor);
        this.dao.addProrrogacao(objeto);
    }
    
    public String getNomeAuditor(){
        return this.nomeAuditor;
    }
}
