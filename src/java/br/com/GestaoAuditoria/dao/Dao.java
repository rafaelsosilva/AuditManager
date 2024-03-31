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
import br.com.GestaoAuditoria.models.Colaborador;
import br.com.GestaoAuditoria.models.Area;

import br.com.GestaoAuditoria.models.Auditoria;
import br.com.GestaoAuditoria.models.Apontamento;
import br.com.GestaoAuditoria.models.CheckPoint;
import br.com.GestaoAuditoria.models.MatrizRisco;
import br.com.GestaoAuditoria.models.PlanoAcao;
import br.com.GestaoAuditoria.models.Prorrogacao;
import br.com.GestaoAuditoria.models.Relatorio;
import br.com.GestaoAuditoria.models.Teste;
import br.com.GestaoAuditoria.models.Walkthrough;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;

public class Dao {

    Connection connection;

    public Dao() {

        this.connection = ConnectionFactory.getAwsMySQLConnection();
    }
    
    public void addWalkthrough(Walkthrough objeto){
        
        try{
            
            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_WALKTHROUGH(?,?,?)");
            ps.setString(1, objeto.getDescricaoWalkthrough());
            ps.setString(2, objeto.getNomeAuditoria());
            ps.setString(3, objeto.getNomeAuditor());
            
            ps.execute();
            ps.close();
            
        }catch(SQLException e){
            e.printStackTrace();
        }
        
    }

    public void addTeste(Teste objeto) {

        try {

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_TESTE(?,?,?)");
            ps.setString(1, objeto.getDescricaoTeste());
            ps.setString(2, objeto.getNomeAuditor());
            ps.setString(3, objeto.getNomeAuditoria());
            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void addRelatorio(Relatorio objeto) {

        try {

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_RELATORIO(?,?,?,?)");
            ps.setString(1, objeto.getDataEmissao());
            ps.setString(2, objeto.getRisco());
            ps.setString(3, objeto.getNomeAuditoria());
            ps.setString(4, objeto.getNomeAuditor());
            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void addProrrogacao(Prorrogacao objeto) {

        try {

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_PRORROGACAO(?,?,?,?,?)");
            ps.setString(1, objeto.getDescricaoPlanoAcao());
            ps.setString(2, objeto.getPeriodoPlanoAcao());
            ps.setString(3, objeto.getNomeAuditor());
            ps.setString(4, objeto.getNomeAprovador());
            ps.setString(5, objeto.getDataAprovacao());
            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addPlanoAcao(PlanoAcao objeto) {

        try {

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_PLANO_ACAO(?,?,?,?,?)");
            ps.setString(1, objeto.getDescricaoApontamento());
            ps.setString(2, objeto.getDescricaoPlanoAcao());
            ps.setString(3, objeto.getDataInicio());
            ps.setString(4, objeto.getDataVenvimento());
            ps.setString(5, objeto.getNomeAuditor());
            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addMatrizRisco(MatrizRisco objeto) {

        try {

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_MATRIZ_RISCO(?,?,?)");
            ps.setString(1, objeto.getNomeMatrizRisco());
            ps.setString(2, objeto.getNomeAuditor());
            ps.setString(3, objeto.getNomeAuditoria());
            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addCheckPoint(CheckPoint objeto) {

        try {

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_CHECKPOINT(?,?,?)");
            ps.setString(1, objeto.getDescricaoCheckPoint());
            ps.setString(2, objeto.getNomeAuditor());
            ps.setString(3, objeto.getNomeAuditoria());
            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void addApontamento(Apontamento objeto) {

        try {

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_APONTAMENTO(?,?,?,?)");
            ps.setString(1, objeto.getDescricaoApontamento());
            ps.setString(2, objeto.getRisco());
            ps.setString(3, objeto.getNomeAuditor());
            ps.setString(4, objeto.getNomeAuditoria());
            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();

        }

    }

    public void addAuditoria(Auditoria objeto) {

        try {

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_AUDITORIA(?,?,?,?,?)");
            ps.setString(1, objeto.getNomeAuditoria());
            ps.setString(2, objeto.getDataInicio());
            ps.setString(3, objeto.getDataFim());
            ps.setString(4, objeto.getAno());
            ps.setString(5, objeto.getNomeResponsavel());
            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void addCargo(Cargo cargo) {

        try {

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_CARGO(?)");
            ps.setString(1, cargo.getDescricaoCargo());
            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void addArea(Area objeto) {

        try {

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_AREA(?)");
            ps.setString(1, objeto.getDescricaoArea());
            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addColaborador(Colaborador objeto) {

        try {

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_COLABORADOR(?,?,?,?)");
            ps.setString(1, objeto.getNomeColaborador());
            ps.setString(2, objeto.getStatus());
            ps.setString(3, objeto.getDescricaoCargo());
            ps.setString(4, objeto.getDescricaoArea());
            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
