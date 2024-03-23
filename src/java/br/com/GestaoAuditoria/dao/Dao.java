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

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;

public class Dao {
    
    Connection connection;
    
    public Dao(){
        
        this.connection = ConnectionFactory.getAwsMySQLConnection();
    }
    
}
