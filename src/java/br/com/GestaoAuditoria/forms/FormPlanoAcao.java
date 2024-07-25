/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.forms;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.models.PlanoAcao;
import br.com.GestaoAuditoria.dao.Dao;

public class FormPlanoAcao {
    
    private String tituloPlanoAcao;
    private String tituloApontamento;
    private String descricaoPlanoAcao;
    private String dataInicio;
    private String dataVencimento;
    private String nomeAuditor;
    
    private PlanoAcao objeto;
    private Dao dao;
    
    public FormPlanoAcao(){
        
        this.tituloPlanoAcao="";
        this.tituloApontamento="";
        this.descricaoPlanoAcao="";
        this.dataInicio="";
        this.dataVencimento="";
        this.nomeAuditor="";
        
        this.objeto = new PlanoAcao();
        this.dao = new Dao();
        
    }
    
    public void setTituloPlanoAcao(String tituloPlanoAcao){
        this.tituloPlanoAcao=tituloPlanoAcao;
        this.objeto.setTituloPlanoAcao(tituloPlanoAcao);
    }
    
    public String getTituloPlanoAcao(){
        return this.tituloPlanoAcao;
    }
    
    public void setTituloApontamento(String tituloApontamento){
        this.tituloApontamento=tituloApontamento;
        this.objeto.setTituloApontamento(tituloApontamento);
    }
    
    public String getTituloApontamento(){
        return this.tituloApontamento;
    }
    
    public void setDescricaoPlanoAcao(String descricaoPlanoAcao){
        this.descricaoPlanoAcao=descricaoPlanoAcao;
        this.objeto.setDescricaoPlanoAcao(descricaoPlanoAcao);
    }
    
    public String getDescricaoPlanoAcao(){
        return this.descricaoPlanoAcao;
    }
    
    public void setDataInicio(String dataInicio){
        this.dataInicio=dataInicio;
        this.objeto.setDataInicio(dataInicio);
    }
    
    public String getDataInicio(){
        return this.dataInicio;
    }
    
    public void setDataVencimento(String dataVencimento){
        this.dataVencimento=dataVencimento;
        this.objeto.setDataVencimento(dataVencimento);
    }
    
    public String getDataVencimento(){
        return this.dataVencimento;
    }
    
    public void setNomeAuditor(String nomeAuditor){
        this.nomeAuditor=nomeAuditor;
        this.objeto.setNomeAuditor(nomeAuditor);
        this.dao.addPlanoAcao(objeto);
    }
    
    public String getNomeAuditor(){
        return this.nomeAuditor;
    }
    
}
