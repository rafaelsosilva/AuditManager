/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.GestaoAuditoria.testes;

/**
 *
 * @author rafaelsilva
 */

import br.com.GestaoAuditoria.connections.ConnectionFactory;

public class ConnectionFactoryTeste {
    
    public static void main (String args []){
        
        ConnectionFactory.getAwsMySQLConnection();
        
    }
    
}
