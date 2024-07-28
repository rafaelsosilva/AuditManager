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
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Dao {

    Connection connection;

    public Dao() {

        this.connection = ConnectionFactory.getAwsMySQLConnection();
    }
    
    public void revisaoTeste(Teste objeto){
        
        try{
            
            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_REVISAO_TESTE(?,?,?,?)");
            
            ps.setString(1, objeto.getDescricaoTeste());
            ps.setString(2, objeto.getNomeAuditor());
            ps.setString(3, objeto.getStatusRevisao());
            ps.setString(4, objeto.getDescricaoRevisao());
            
            ps.execute();
            ps.close();
            
        }catch(SQLException e){
            e.printStackTrace();
        }
        
    }
    
    public void revisaoProrrogacao(Prorrogacao objeto){
        
        try{
            
            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_REVISAO_PRORROGACAO(?,?,?,?)");
            
            ps.setString(1, objeto.getDescricaoPlanoAcao());
            ps.setString(2, objeto.getNomeAuditor());
            ps.setString(3, objeto.getStatusRevisao());
            ps.setString(4, objeto.getDescricaoRevisao());
            
            ps.execute();
            ps.close();
            
        }catch(SQLException e){
            e.printStackTrace();
        }
        
    }
    
    public void revisaoPlanoAcao(PlanoAcao objeto){
        
        try{
            
            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_REVISAO_PLANO_ACAO(?,?,?,?)");
            
            ps.setString(1, objeto.getDescricaoPlanoAcao());
            ps.setString(2, objeto.getNomeAuditor());
            ps.setString(3, objeto.getStatusRevisao());
            ps.setString(4, objeto.getDescricaoRevisor());
            
            ps.execute();
            ps.close();
            
        
        }catch(SQLException e){
            e.printStackTrace();
        }
        
    }
    
    public void revisaoApontamento(Apontamento objeto){
        
        try{
            
            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_REVISAO_APONTAMENTO(?,?,?,?)");
            
            ps.setString(1, objeto.getDescricaoApontamento());
            ps.setString(2, objeto.getStatusRevisao());
            ps.setString(3, objeto.getDescricaoRevisao());
            ps.setString(4, objeto.getNomeAuditor());
            ps.execute();
            ps.close();
        
        }catch(SQLException e){
            
            e.printStackTrace();
        }
        
    }
    
    public void addWalkthrough(Walkthrough objeto){
        
        try{
            
            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_WALKTHROUGH_00_03(?,?,?,?,?)");
            
            ps.setString(1, objeto.getObjetivo());
            ps.setString(2, objeto.getParticipantes());
            ps.setString(3, objeto.getDescricaoWalkthrough());
            ps.setString(4, objeto.getNomeAuditoria());
            ps.setString(5, objeto.getNomeAuditor());
            
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
            ps.setString(1, objeto.getNomeRelatorio());
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

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_PRORROGACAO_00_03(?,?,?)");
            ps.setString(1, objeto.getTituloPlanoAcao());
            ps.setString(2, objeto.getPeriodoProrrogacao());
            ps.setString(3, objeto.getNomeAuditor());
            
            ps.execute();
            ps.close();
            
            System.out.println("Prorrogacao cadastrada com sucesso!!!");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addPlanoAcao(PlanoAcao objeto) {

        try {

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_PLANO_ACAO_04(?,?,?,?,?,?)");
            
            ps.setString(1, objeto.getTituloPlanoAcao());
            ps.setString(2, objeto.getTituloApontamento());
            ps.setString(3, objeto.getDescricaoPlanoAcao());
            ps.setString(4, objeto.getDataInicio());
            ps.setString(5, objeto.getDataVenvimento());
            ps.setString(6, objeto.getNomeAuditor());
            
            ps.execute();
            ps.close();
            
            System.out.println("Plano de acao cadastrado com sucesso!!!");

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

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_APONTAMENTO_00_02(?,?,?,?,?,?,?,?)");
            
            ps.setString(1, objeto.getTituloApontamento());
            ps.setString(2, objeto.getDescricaoApontamento());   
            ps.setString(3, objeto.getRisco());
            ps.setString(4, objeto.getNomeAuditor());
            ps.setString(5, objeto.getNomeAuditoria());
            ps.setString(6, objeto.getCausa());
            ps.setString(7, objeto.getConsequencia());
            ps.setString(8, objeto.getRecomendacao());
            
            System.out.println("Apontamento cadastrado com sucesso!!!!");
            
            ps.execute();
            ps.close();

        } catch (SQLException e) {
            e.printStackTrace();

        }

    }
    
    public void addAuditoria(Auditoria objeto) {

        try {

            PreparedStatement ps = this.connection.prepareCall("CALL GADEV.SP_ADD_AUDITORIA(?,?,?,?)");
            ps.setString(1, objeto.getNomeAuditoria());
            ps.setString(2, objeto.getDataInicio());
            ps.setString(3, objeto.getDataFim());
            ps.setString(4, objeto.getNomeResponsavel());
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
    
    public List<Auditoria> getNomeAuditoria(){
        List<Auditoria> lista = new ArrayList();
        String sql = "SELECT NOME_AUDITORIA AS nomeAuditoria FROM TBL_AUDITORIA";
        
        try{
            
            PreparedStatement ps = this.connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Auditoria objeto = new Auditoria();
                objeto.setNomeAuditoria(rs.getString("nomeAuditoria"));
                lista.add(objeto);
            }
            
            ps.close();
            rs.close();
            return lista;
        
        }catch(SQLException e){
            throw new RuntimeException(e);
        }
    }
    
    public List<Colaborador> getNomeAuditor(){
        List<Colaborador> lista = new ArrayList();
        String sql = "SELECT NOME_COLABORADOR AS nomeAuditor FROM TBL_COLABORADOR";
        
        try{
            
            PreparedStatement ps = this.connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Colaborador objeto = new Colaborador();
                objeto.setNomeAuditor(rs.getString("nomeAuditor"));
                lista.add(objeto);
            }
            
            ps.close();
            rs.close();
            return lista;
        
        }catch(SQLException e){
            throw new RuntimeException(e);
        }
    }
    
    public List<Apontamento> getApontamento(){
        List<Apontamento> lista = new ArrayList();
        String sql = "SELECT TITULO_APONTAMENTO AS tituloApontamento FROM TBL_APONTAMENTO";
        
        try{
            
            PreparedStatement ps = this.connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Apontamento objeto = new Apontamento();
                objeto.setTituloApontamento(rs.getString("tituloApontamento"));
                lista.add(objeto);
            }
            
            ps.close();
            rs.close();
            return lista;
        
        }catch(SQLException e){
            throw new RuntimeException(e);
        }
    }
    
    public List<CheckPoint> getTipoCheckPoint(){
        List<CheckPoint> lista = new ArrayList();
        String sql = "SELECT DESCRICAO_TIPO_CHECKPOINT AS descricaoTipoCheckPoint FROM TBL_TIPO_CHECKPOINT";
        
        try{
            
            PreparedStatement ps = this.connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                CheckPoint objeto = new CheckPoint();
                objeto.setDescricaoTipoCheckPoint(rs.getString("descricaoTipoCheckPoint"));
                lista.add(objeto);
            }
            
            ps.close();
            rs.close();
            return lista;
        
        }catch(SQLException e){
            throw new RuntimeException(e);
        }
    }
    
    public List<PlanoAcao> getTituloPlanoAcao(){
        List<PlanoAcao> lista = new ArrayList();
        String sql = "SELECT TITULO_PLANO_ACAO AS tituloPlanoAcao FROM TBL_PLANO_ACAO";
        
        try{
            
            PreparedStatement ps = this.connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                PlanoAcao objeto = new PlanoAcao();
                objeto.setTituloPlanoAcao(rs.getString("tituloPlanoAcao"));
                lista.add(objeto);
            }
            
            ps.close();
            rs.close();
            return lista;
        
        }catch(SQLException e){
            throw new RuntimeException(e);
        }
    }
    
}
