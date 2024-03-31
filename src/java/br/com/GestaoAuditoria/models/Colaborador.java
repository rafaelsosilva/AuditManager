/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.models;

/**
 *
 * @author rafaelsilva
 */
public class Colaborador {
    
    private String nomeColaborador;
    private String status;
    private String descricaoCargo;
    private String descricaoArea;
    
    public void setNomeColaborador(String nomeColaborador){
        this.nomeColaborador=nomeColaborador;
    }
    
    public String getNomeColaborador(){
        return this.nomeColaborador;
    }
    
    public void setStatus(String status){
        this.status=status;
    }
    
    public String getStatus(){
        return this.status;
    }
    
    public void setDescricaoCargo(String descricaoCargo){
        this.descricaoCargo=descricaoCargo;
    }
    
    public String getDescricaoCargo(){
        return this.descricaoCargo;
    }
    
    public void setDescricaoArea(String descricaoArea){
        this.descricaoArea=descricaoArea;
    }
    
    public String getDescricaoArea(){
        return this.descricaoArea;
    }
    
}
