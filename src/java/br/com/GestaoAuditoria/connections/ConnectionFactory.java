/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.connections;

/**
 *
 * @author rafaelsilva
 */

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectionFactory {
    
    public static Connection getAwsMySQLConnection(){
        
        String serverName;
        String database;
        String url;
        String username;
        String password;
        
        try{
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            serverName = "15.229.117.46";
            database = "GADEV";
            url = "jdbc:mysql://" + serverName + "/" + database;
            username = "root";
            password = "Oracle123";
            
            Connection connection = DriverManager.getConnection(url,username,password);
            
            System.out.println("Conectado ao MySQL com sucesso!!!");
            
            return connection;
            
        }catch(SQLException e){
            
            e.printStackTrace();
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
