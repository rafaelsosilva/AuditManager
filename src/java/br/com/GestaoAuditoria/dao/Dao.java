/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.dao;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.connections.ConnectionFactory;
import br.com.GestaoAuditoria.models.Cargo;
import br.com.GestaoAuditoria.models.Auditoria;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;

public class Dao {
    
    Connection connection;
    
    public Dao(){
        
        this.connection = ConnectionFactory.getAwsMySQLConnection();
    }
    
    public void addAuditoria(Auditoria objeto){
     
        try{
            
            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_AUDITORIA(?,?,?,?,?)");
            ps.setString(1, objeto.getNomeAuditoria());
            ps.setString(2, objeto.getDataInicio());
            ps.setString(3, objeto.getDataFim());
            ps.setString(4, objeto.getAno());
            ps.setString(5, objeto.getNomeResponsavel());
            ps.execute();
            ps.close();
            
        }catch(SQLException e){
            e.printStackTrace();
        }
        
    }
    
    
    public void addCargo(Cargo cargo){
        
        try{
            
            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_CARGO(?)");
            ps.setString(1, cargo.getDescricaoCargo());
            ps.execute();
            ps.close();
        
        }catch(SQLException e){
            e.printStackTrace();
        }
        
    }
    
}
